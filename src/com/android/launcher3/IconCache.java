// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.util.Log;
import java.util.Collections;
import com.android.launcher3.model.PackageItemInfo;
import android.content.pm.ActivityInfo;
import android.text.TextUtils;
import android.content.pm.LauncherActivityInfo;
import java.util.Set;
import java.util.List;
import java.util.Iterator;
import java.util.HashSet;
import android.graphics.BitmapFactory;
import android.database.Cursor;
import com.android.launcher3.util.Provider;
import android.content.res.Resources$NotFoundException;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.content.pm.ApplicationInfo;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.graphics.LauncherIcons;
import android.content.pm.PackageManager$NameNotFoundException;
import android.os.Process;
import com.android.launcher3.util.Preconditions;
import android.os.UserHandle;
import android.graphics.Rect;
import android.graphics.Bitmap;
import android.content.pm.PackageInfo;
import android.content.ComponentName;
import android.content.ContentValues;
import android.graphics.Bitmap$Config;
import com.android.launcher3.util.Themes;
import android.os.Handler;
import com.android.launcher3.compat.UserManagerCompat;
import android.content.pm.PackageManager;
import android.graphics.Paint;
import android.graphics.BitmapFactory$Options;
import android.graphics.Canvas;
import com.android.launcher3.compat.LauncherAppsCompat;
import android.content.Context;
import java.util.HashMap;

public class IconCache
{
    static final Object ICON_UPDATE_TOKEN;
    private final int mActivityBgColor;
    private final HashMap mCache;
    private final Context mContext;
    private final HashMap mDefaultIcons;
    final IconCache$IconDB mIconDb;
    private final int mIconDpi;
    private IconProvider mIconProvider;
    private final LauncherAppsCompat mLauncherApps;
    private Canvas mLowResCanvas;
    private final BitmapFactory$Options mLowResOptions;
    private Paint mLowResPaint;
    final MainThreadExecutor mMainThreadExecutor;
    private final int mPackageBgColor;
    private final PackageManager mPackageManager;
    final UserManagerCompat mUserManager;
    final Handler mWorkerHandler;
    
    static {
        ICON_UPDATE_TOKEN = new Object();
    }
    
    public IconCache(final Context mContext, final InvariantDeviceProfile invariantDeviceProfile) {
        this.mDefaultIcons = new HashMap();
        this.mMainThreadExecutor = new MainThreadExecutor();
        this.mCache = new HashMap(50);
        this.mContext = mContext;
        this.mPackageManager = mContext.getPackageManager();
        this.mUserManager = UserManagerCompat.getInstance(this.mContext);
        this.mLauncherApps = LauncherAppsCompat.getInstance(this.mContext);
        this.mIconDpi = invariantDeviceProfile.fillResIconDpi;
        this.mIconDb = new IconCache$IconDB(mContext, invariantDeviceProfile.iconBitmapSize);
        this.mLowResCanvas = new Canvas();
        this.mLowResPaint = new Paint(3);
        this.mIconProvider = (IconProvider)Utilities.getOverrideObject(IconProvider.class, mContext, 2131492888);
        this.mWorkerHandler = new Handler(LauncherModel.getWorkerLooper());
        this.mActivityBgColor = Themes.getColorPrimary(mContext, 2131886081);
        this.mPackageBgColor = Themes.getColorPrimary(mContext, 2131886082);
        this.mLowResOptions = new BitmapFactory$Options();
        this.mLowResOptions.inPreferredConfig = Bitmap$Config.RGB_565;
    }
    
    private void addIconToDB(final ContentValues contentValues, final ComponentName componentName, final PackageInfo packageInfo, final long n) {
        contentValues.put("componentName", componentName.flattenToString());
        contentValues.put("profileId", n);
        contentValues.put("lastUpdated", packageInfo.lastUpdateTime);
        contentValues.put("version", packageInfo.versionCode);
        this.mIconDb.insertOrReplace(contentValues);
    }
    
    private void applyCacheEntry(final IconCache$CacheEntry iconCache$CacheEntry, final ItemInfoWithIcon itemInfoWithIcon) {
        itemInfoWithIcon.title = Utilities.trim(iconCache$CacheEntry.title);
        itemInfoWithIcon.contentDescription = iconCache$CacheEntry.contentDescription;
        Bitmap iconBitmap;
        if (iconCache$CacheEntry.icon == null) {
            iconBitmap = this.getDefaultIcon(itemInfoWithIcon.user);
        }
        else {
            iconBitmap = iconCache$CacheEntry.icon;
        }
        itemInfoWithIcon.iconBitmap = iconBitmap;
        itemInfoWithIcon.usingLowResIcon = iconCache$CacheEntry.isLowResIcon;
    }
    
    private Bitmap generateLowResIcon(final Bitmap bitmap, final int n) {
        if (n == 0) {
            return Bitmap.createScaledBitmap(bitmap, bitmap.getWidth() / 5, bitmap.getHeight() / 5, true);
        }
        final Bitmap bitmap2 = Bitmap.createBitmap(bitmap.getWidth() / 5, bitmap.getHeight() / 5, Bitmap$Config.RGB_565);
        synchronized (this) {
            this.mLowResCanvas.setBitmap(bitmap2);
            this.mLowResCanvas.drawColor(n);
            this.mLowResCanvas.drawBitmap(bitmap, new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), new Rect(0, 0, bitmap2.getWidth(), bitmap2.getHeight()), this.mLowResPaint);
            this.mLowResCanvas.setBitmap((Bitmap)null);
            return bitmap2;
        }
    }
    
    private IconCache$CacheEntry getEntryForPackageLocked(final String s, final UserHandle userHandle, final boolean isLowResIcon) {
        Preconditions.assertWorkerThread();
        final ComponentKey packageKey = getPackageKey(s, userHandle);
        IconCache$CacheEntry iconCache$CacheEntry = this.mCache.get(packageKey);
        if (iconCache$CacheEntry != null && (!iconCache$CacheEntry.isLowResIcon || !(isLowResIcon ^ true))) {
            return iconCache$CacheEntry;
        }
        final IconCache$CacheEntry iconCache$CacheEntry2 = new IconCache$CacheEntry();
        final boolean b = true;
        while (true) {
            Label_0386: {
                if (this.getEntryFromDB(packageKey, iconCache$CacheEntry2, isLowResIcon)) {
                    break Label_0386;
                }
            Label_0308_Outer:
                while (true) {
                    while (true) {
                        Bitmap badgedIconBitmap = null;
                        Label_0393: {
                            PackageInfo packageInfo = null;
                            ContentValues contentValues = null;
                            ComponentName componentName = null;
                            try {
                                Label_0184: {
                                    if (!Process.myUserHandle().equals((Object)userHandle)) {
                                        break Label_0184;
                                    }
                                    int n = 0;
                                    while (true) {
                                        packageInfo = this.mPackageManager.getPackageInfo(s, n);
                                        try {
                                            final ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                                            if (applicationInfo == null) {
                                                throw new PackageManager$NameNotFoundException("ApplicationInfo is null");
                                            }
                                            final Drawable loadIcon = applicationInfo.loadIcon(this.mPackageManager);
                                            try {
                                                final Context mContext = this.mContext;
                                                try {
                                                    badgedIconBitmap = LauncherIcons.createBadgedIconBitmap(loadIcon, userHandle, mContext, applicationInfo.targetSdkVersion);
                                                    try {
                                                        final Bitmap generateLowResIcon = this.generateLowResIcon(badgedIconBitmap, this.mPackageBgColor);
                                                        try {
                                                            iconCache$CacheEntry2.title = applicationInfo.loadLabel(this.mPackageManager);
                                                            final UserManagerCompat mUserManager = this.mUserManager;
                                                            try {
                                                                iconCache$CacheEntry2.contentDescription = mUserManager.getBadgedLabelForUser(iconCache$CacheEntry2.title, userHandle);
                                                                if (!isLowResIcon) {
                                                                    break Label_0393;
                                                                }
                                                                final Bitmap icon = generateLowResIcon;
                                                                iconCache$CacheEntry2.icon = icon;
                                                                final IconCache$CacheEntry iconCache$CacheEntry3 = iconCache$CacheEntry2;
                                                                try {
                                                                    iconCache$CacheEntry3.isLowResIcon = isLowResIcon;
                                                                    final CharSequence title = iconCache$CacheEntry2.title;
                                                                    try {
                                                                        contentValues = this.newContentValues(badgedIconBitmap, generateLowResIcon, title.toString(), s);
                                                                        try {
                                                                            componentName = packageKey.componentName;
                                                                        }
                                                                        catch (PackageManager$NameNotFoundException ex) {}
                                                                    }
                                                                    catch (PackageManager$NameNotFoundException ex2) {}
                                                                }
                                                                catch (PackageManager$NameNotFoundException ex3) {}
                                                            }
                                                            catch (PackageManager$NameNotFoundException ex4) {}
                                                        }
                                                        catch (PackageManager$NameNotFoundException ex5) {}
                                                    }
                                                    catch (PackageManager$NameNotFoundException ex6) {}
                                                }
                                                catch (PackageManager$NameNotFoundException ex7) {}
                                            }
                                            catch (PackageManager$NameNotFoundException ex8) {}
                                            // iftrue(Label_0400:, !b2)
                                            Block_10: {
                                                break Block_10;
                                                n = 8192;
                                                continue Label_0308_Outer;
                                            }
                                            this.mCache.put(packageKey, iconCache$CacheEntry2);
                                            iconCache$CacheEntry = iconCache$CacheEntry2;
                                        }
                                        catch (PackageManager$NameNotFoundException ex9) {}
                                    }
                                }
                            }
                            catch (PackageManager$NameNotFoundException ex10) {}
                            this.addIconToDB(contentValues, componentName, packageInfo, this.mUserManager.getSerialNumberForUser(userHandle));
                            break;
                        }
                        final Bitmap icon = badgedIconBitmap;
                        continue;
                    }
                    Label_0400: {
                        iconCache$CacheEntry = iconCache$CacheEntry2;
                    }
                    return iconCache$CacheEntry;
                }
            }
            final boolean b2 = b;
            continue;
        }
    }
    
    private boolean getEntryFromDB(final ComponentKey p0, final IconCache$CacheEntry p1, final boolean p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_1       
        //     1: istore          4
        //     3: aconst_null    
        //     4: astore          5
        //     6: aload_0        
        //     7: getfield        com/android/launcher3/IconCache.mIconDb:Lcom/android/launcher3/IconCache$IconDB;
        //    10: astore          6
        //    12: iconst_2       
        //    13: istore          7
        //    15: iload           7
        //    17: anewarray       Ljava/lang/String;
        //    20: astore          8
        //    22: iload_3        
        //    23: ifeq            268
        //    26: ldc_w           "icon_low_res"
        //    29: astore          9
        //    31: iconst_0       
        //    32: istore          10
        //    34: aconst_null    
        //    35: astore          11
        //    37: aload           8
        //    39: iconst_0       
        //    40: aload           9
        //    42: aastore        
        //    43: ldc_w           "label"
        //    46: astore          9
        //    48: iconst_1       
        //    49: istore          10
        //    51: aload           8
        //    53: iload           10
        //    55: aload           9
        //    57: aastore        
        //    58: ldc_w           "componentName = ? AND profileId = ?"
        //    61: astore          9
        //    63: iconst_2       
        //    64: istore          10
        //    66: iload           10
        //    68: anewarray       Ljava/lang/String;
        //    71: astore          11
        //    73: aload_1        
        //    74: getfield        com/android/launcher3/util/ComponentKey.componentName:Landroid/content/ComponentName;
        //    77: astore          12
        //    79: aload           12
        //    81: invokevirtual   android/content/ComponentName.flattenToString:()Ljava/lang/String;
        //    84: astore          12
        //    86: iconst_0       
        //    87: istore          13
        //    89: aconst_null    
        //    90: astore          14
        //    92: aload           11
        //    94: iconst_0       
        //    95: aload           12
        //    97: aastore        
        //    98: aload_0        
        //    99: getfield        com/android/launcher3/IconCache.mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;
        //   102: astore          12
        //   104: aload_1        
        //   105: getfield        com/android/launcher3/util/ComponentKey.user:Landroid/os/UserHandle;
        //   108: astore          14
        //   110: aload           12
        //   112: aload           14
        //   114: invokevirtual   com/android/launcher3/compat/UserManagerCompat.getSerialNumberForUser:(Landroid/os/UserHandle;)J
        //   117: lstore          15
        //   119: lload           15
        //   121: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //   124: astore          12
        //   126: iconst_1       
        //   127: istore          13
        //   129: aload           11
        //   131: iload           13
        //   133: aload           12
        //   135: aastore        
        //   136: aload           6
        //   138: aload           8
        //   140: aload           9
        //   142: aload           11
        //   144: invokevirtual   com/android/launcher3/IconCache$IconDB.query:([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //   147: astore          6
        //   149: aload           6
        //   151: invokeinterface android/database/Cursor.moveToNext:()Z
        //   156: istore          7
        //   158: iload           7
        //   160: ifeq            354
        //   163: iload_3        
        //   164: ifeq            173
        //   167: aload_0        
        //   168: getfield        com/android/launcher3/IconCache.mLowResOptions:Landroid/graphics/BitmapFactory$Options;
        //   171: astore          5
        //   173: iconst_0       
        //   174: istore          7
        //   176: aconst_null    
        //   177: astore          9
        //   179: aload           6
        //   181: iconst_0       
        //   182: aload           5
        //   184: invokestatic    com/android/launcher3/IconCache.loadIconNoResize:(Landroid/database/Cursor;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
        //   187: astore          9
        //   189: aload_2        
        //   190: aload           9
        //   192: putfield        com/android/launcher3/IconCache$CacheEntry.icon:Landroid/graphics/Bitmap;
        //   195: aload_2        
        //   196: iload_3        
        //   197: putfield        com/android/launcher3/IconCache$CacheEntry.isLowResIcon:Z
        //   200: iconst_1       
        //   201: istore          7
        //   203: aload           6
        //   205: iload           7
        //   207: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   212: astore          9
        //   214: aload_2        
        //   215: aload           9
        //   217: putfield        com/android/launcher3/IconCache$CacheEntry.title:Ljava/lang/CharSequence;
        //   220: aload_2        
        //   221: getfield        com/android/launcher3/IconCache$CacheEntry.title:Ljava/lang/CharSequence;
        //   224: astore          9
        //   226: aload           9
        //   228: ifnonnull       276
        //   231: ldc_w           ""
        //   234: astore          9
        //   236: aload_2        
        //   237: aload           9
        //   239: putfield        com/android/launcher3/IconCache$CacheEntry.title:Ljava/lang/CharSequence;
        //   242: ldc_w           ""
        //   245: astore          9
        //   247: aload_2        
        //   248: aload           9
        //   250: putfield        com/android/launcher3/IconCache$CacheEntry.contentDescription:Ljava/lang/CharSequence;
        //   253: aload           6
        //   255: ifnull          265
        //   258: aload           6
        //   260: invokeinterface android/database/Cursor.close:()V
        //   265: iload           4
        //   267: ireturn        
        //   268: ldc_w           "icon"
        //   271: astore          9
        //   273: goto            31
        //   276: aload_0        
        //   277: getfield        com/android/launcher3/IconCache.mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;
        //   280: astore          9
        //   282: aload_2        
        //   283: getfield        com/android/launcher3/IconCache$CacheEntry.title:Ljava/lang/CharSequence;
        //   286: astore          5
        //   288: aload_1        
        //   289: getfield        com/android/launcher3/util/ComponentKey.user:Landroid/os/UserHandle;
        //   292: astore          8
        //   294: aload           9
        //   296: aload           5
        //   298: aload           8
        //   300: invokevirtual   com/android/launcher3/compat/UserManagerCompat.getBadgedLabelForUser:(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
        //   303: astore          9
        //   305: aload_2        
        //   306: aload           9
        //   308: putfield        com/android/launcher3/IconCache$CacheEntry.contentDescription:Ljava/lang/CharSequence;
        //   311: goto            253
        //   314: astore          9
        //   316: aload           6
        //   318: astore          5
        //   320: ldc_w           "Launcher.IconCache"
        //   323: astore          6
        //   325: ldc_w           "Error reading icon cache"
        //   328: astore          8
        //   330: aload           6
        //   332: aload           8
        //   334: aload           9
        //   336: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   339: pop            
        //   340: aload           5
        //   342: ifnull          352
        //   345: aload           5
        //   347: invokeinterface android/database/Cursor.close:()V
        //   352: iconst_0       
        //   353: ireturn        
        //   354: aload           6
        //   356: ifnull          352
        //   359: aload           6
        //   361: invokeinterface android/database/Cursor.close:()V
        //   366: goto            352
        //   369: astore          9
        //   371: aload           5
        //   373: ifnull          383
        //   376: aload           5
        //   378: invokeinterface android/database/Cursor.close:()V
        //   383: aload           9
        //   385: athrow         
        //   386: astore          9
        //   388: aload           6
        //   390: astore          5
        //   392: goto            371
        //   395: astore          9
        //   397: goto            320
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  6      10     395    400    Landroid/database/sqlite/SQLiteException;
        //  6      10     369    371    Any
        //  15     20     395    400    Landroid/database/sqlite/SQLiteException;
        //  15     20     369    371    Any
        //  40     43     395    400    Landroid/database/sqlite/SQLiteException;
        //  40     43     369    371    Any
        //  55     58     395    400    Landroid/database/sqlite/SQLiteException;
        //  55     58     369    371    Any
        //  66     71     395    400    Landroid/database/sqlite/SQLiteException;
        //  66     71     369    371    Any
        //  73     77     395    400    Landroid/database/sqlite/SQLiteException;
        //  73     77     369    371    Any
        //  79     84     395    400    Landroid/database/sqlite/SQLiteException;
        //  79     84     369    371    Any
        //  95     98     395    400    Landroid/database/sqlite/SQLiteException;
        //  95     98     369    371    Any
        //  98     102    395    400    Landroid/database/sqlite/SQLiteException;
        //  98     102    369    371    Any
        //  104    108    395    400    Landroid/database/sqlite/SQLiteException;
        //  104    108    369    371    Any
        //  112    117    395    400    Landroid/database/sqlite/SQLiteException;
        //  112    117    369    371    Any
        //  119    124    395    400    Landroid/database/sqlite/SQLiteException;
        //  119    124    369    371    Any
        //  133    136    395    400    Landroid/database/sqlite/SQLiteException;
        //  133    136    369    371    Any
        //  142    147    395    400    Landroid/database/sqlite/SQLiteException;
        //  142    147    369    371    Any
        //  149    156    314    320    Landroid/database/sqlite/SQLiteException;
        //  149    156    386    395    Any
        //  167    171    314    320    Landroid/database/sqlite/SQLiteException;
        //  167    171    386    395    Any
        //  182    187    314    320    Landroid/database/sqlite/SQLiteException;
        //  182    187    386    395    Any
        //  190    195    314    320    Landroid/database/sqlite/SQLiteException;
        //  190    195    386    395    Any
        //  196    200    314    320    Landroid/database/sqlite/SQLiteException;
        //  196    200    386    395    Any
        //  205    212    314    320    Landroid/database/sqlite/SQLiteException;
        //  205    212    386    395    Any
        //  215    220    314    320    Landroid/database/sqlite/SQLiteException;
        //  215    220    386    395    Any
        //  220    224    314    320    Landroid/database/sqlite/SQLiteException;
        //  220    224    386    395    Any
        //  237    242    314    320    Landroid/database/sqlite/SQLiteException;
        //  237    242    386    395    Any
        //  248    253    314    320    Landroid/database/sqlite/SQLiteException;
        //  248    253    386    395    Any
        //  276    280    314    320    Landroid/database/sqlite/SQLiteException;
        //  276    280    386    395    Any
        //  282    286    314    320    Landroid/database/sqlite/SQLiteException;
        //  282    286    386    395    Any
        //  288    292    314    320    Landroid/database/sqlite/SQLiteException;
        //  288    292    386    395    Any
        //  298    303    314    320    Landroid/database/sqlite/SQLiteException;
        //  298    303    386    395    Any
        //  306    311    314    320    Landroid/database/sqlite/SQLiteException;
        //  306    311    386    395    Any
        //  334    340    369    371    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0173:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:317)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:238)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:123)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    private Drawable getFullResDefaultActivityIcon() {
        return this.getFullResIcon(Resources.getSystem(), 17629184);
    }
    
    private Drawable getFullResIcon(final Resources resources, final int n) {
        Drawable drawable = null;
        while (true) {
            try {
                drawable = resources.getDrawableForDensity(n, this.mIconDpi);
                if (drawable == null) {
                    drawable = this.getFullResDefaultActivityIcon();
                }
                return drawable;
            }
            catch (Resources$NotFoundException ex) {
                continue;
            }
            break;
        }
    }
    
    private static ComponentKey getPackageKey(final String s, final UserHandle userHandle) {
        return new ComponentKey(new ComponentName(s, s + "."), userHandle);
    }
    
    private void getTitleAndIcon(final ItemInfoWithIcon itemInfoWithIcon, final Provider provider, final boolean b, final boolean b2) {
        synchronized (this) {
            this.applyCacheEntry(this.cacheLocked(itemInfoWithIcon.getTargetComponent(), provider, itemInfoWithIcon.user, b, b2), itemInfoWithIcon);
        }
    }
    
    private static Bitmap loadIconNoResize(final Cursor cursor, final int n, final BitmapFactory$Options bitmapFactory$Options) {
        final byte[] blob = cursor.getBlob(n);
        try {
            return BitmapFactory.decodeByteArray(blob, 0, blob.length, bitmapFactory$Options);
        }
        catch (Exception ex) {
            return null;
        }
    }
    
    private ContentValues newContentValues(final Bitmap bitmap, final Bitmap bitmap2, final String s, final String s2) {
        final ContentValues contentValues = new ContentValues();
        contentValues.put("icon", Utilities.flattenBitmap(bitmap));
        contentValues.put("icon_low_res", Utilities.flattenBitmap(bitmap2));
        contentValues.put("label", s);
        contentValues.put("system_state", this.mIconProvider.getIconSystemState(s2));
        return contentValues;
    }
    
    private void removeFromMemCacheLocked(final String s, final UserHandle userHandle) {
        final HashSet<ComponentKey> set = new HashSet<ComponentKey>();
        for (final ComponentKey componentKey : this.mCache.keySet()) {
            if (componentKey.componentName.getPackageName().equals(s) && componentKey.user.equals((Object)userHandle)) {
                set.add(componentKey);
            }
        }
        final Iterator<Object> iterator2 = set.iterator();
        while (iterator2.hasNext()) {
            this.mCache.remove(iterator2.next());
        }
    }
    
    private void updateDBIcons(final UserHandle p0, final List p1, final Set p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: astore          4
        //     3: aload_0        
        //     4: getfield        com/android/launcher3/IconCache.mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;
        //     7: astore          5
        //     9: aload_1        
        //    10: astore          4
        //    12: aload           5
        //    14: aload_1        
        //    15: invokevirtual   com/android/launcher3/compat/UserManagerCompat.getSerialNumberForUser:(Landroid/os/UserHandle;)J
        //    18: lstore          6
        //    20: aload_0        
        //    21: astore          4
        //    23: aload_0        
        //    24: getfield        com/android/launcher3/IconCache.mContext:Landroid/content/Context;
        //    27: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
        //    30: astore          5
        //    32: new             Ljava/util/HashMap;
        //    35: astore          8
        //    37: aload           8
        //    39: invokespecial   java/util/HashMap.<init>:()V
        //    42: sipush          8192
        //    45: istore          9
        //    47: aload           5
        //    49: iload           9
        //    51: invokevirtual   android/content/pm/PackageManager.getInstalledPackages:(I)Ljava/util/List;
        //    54: astore          5
        //    56: aload           5
        //    58: invokeinterface java/lang/Iterable.iterator:()Ljava/util/Iterator;
        //    63: astore          10
        //    65: aload           10
        //    67: invokeinterface java/util/Iterator.hasNext:()Z
        //    72: istore          11
        //    74: iload           11
        //    76: ifeq            111
        //    79: aload           10
        //    81: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //    86: checkcast       Landroid/content/pm/PackageInfo;
        //    89: astore          5
        //    91: aload           5
        //    93: getfield        android/content/pm/PackageInfo.packageName:Ljava/lang/String;
        //    96: astore          12
        //    98: aload           8
        //   100: aload           12
        //   102: aload           5
        //   104: invokevirtual   java/util/HashMap.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   107: pop            
        //   108: goto            65
        //   111: new             Ljava/util/HashMap;
        //   114: astore          13
        //   116: aload           13
        //   118: invokespecial   java/util/HashMap.<init>:()V
        //   121: aload_2        
        //   122: invokeinterface java/lang/Iterable.iterator:()Ljava/util/Iterator;
        //   127: astore          10
        //   129: aload           10
        //   131: invokeinterface java/util/Iterator.hasNext:()Z
        //   136: istore          11
        //   138: iload           11
        //   140: ifeq            175
        //   143: aload           10
        //   145: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   150: checkcast       Landroid/content/pm/LauncherActivityInfo;
        //   153: astore          5
        //   155: aload           5
        //   157: invokevirtual   android/content/pm/LauncherActivityInfo.getComponentName:()Landroid/content/ComponentName;
        //   160: astore          12
        //   162: aload           13
        //   164: aload           12
        //   166: aload           5
        //   168: invokevirtual   java/util/HashMap.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   171: pop            
        //   172: goto            129
        //   175: new             Ljava/util/HashSet;
        //   178: astore          14
        //   180: aload           14
        //   182: invokespecial   java/util/HashSet.<init>:()V
        //   185: new             Ljava/util/Stack;
        //   188: astore          15
        //   190: aload           15
        //   192: invokespecial   java/util/Stack.<init>:()V
        //   195: iconst_0       
        //   196: istore          9
        //   198: aconst_null    
        //   199: astore          10
        //   201: aload_0        
        //   202: astore          4
        //   204: aload_0        
        //   205: getfield        com/android/launcher3/IconCache.mIconDb:Lcom/android/launcher3/IconCache$IconDB;
        //   208: astore          5
        //   210: iconst_5       
        //   211: istore          16
        //   213: iload           16
        //   215: anewarray       Ljava/lang/String;
        //   218: astore          12
        //   220: ldc_w           "rowid"
        //   223: astore          17
        //   225: iconst_0       
        //   226: istore          18
        //   228: aconst_null    
        //   229: astore          19
        //   231: aload           12
        //   233: iconst_0       
        //   234: aload           17
        //   236: aastore        
        //   237: ldc             "componentName"
        //   239: astore          17
        //   241: iconst_1       
        //   242: istore          18
        //   244: aload           12
        //   246: iload           18
        //   248: aload           17
        //   250: aastore        
        //   251: ldc             "lastUpdated"
        //   253: astore          17
        //   255: iconst_2       
        //   256: istore          18
        //   258: aload           12
        //   260: iload           18
        //   262: aload           17
        //   264: aastore        
        //   265: ldc             "version"
        //   267: astore          17
        //   269: iconst_3       
        //   270: istore          18
        //   272: aload           12
        //   274: iload           18
        //   276: aload           17
        //   278: aastore        
        //   279: ldc_w           "system_state"
        //   282: astore          17
        //   284: iconst_4       
        //   285: istore          18
        //   287: aload           12
        //   289: iload           18
        //   291: aload           17
        //   293: aastore        
        //   294: ldc_w           "profileId = ? "
        //   297: astore          17
        //   299: iconst_1       
        //   300: istore          18
        //   302: iload           18
        //   304: anewarray       Ljava/lang/String;
        //   307: astore          19
        //   309: lload           6
        //   311: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //   314: astore          20
        //   316: iconst_0       
        //   317: istore          21
        //   319: aload           19
        //   321: iconst_0       
        //   322: aload           20
        //   324: aastore        
        //   325: aload           5
        //   327: aload           12
        //   329: aload           17
        //   331: aload           19
        //   333: invokevirtual   com/android/launcher3/IconCache$IconDB.query:([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //   336: astore          12
        //   338: ldc             "componentName"
        //   340: astore          5
        //   342: aload           12
        //   344: aload           5
        //   346: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   351: istore          22
        //   353: ldc             "lastUpdated"
        //   355: astore          5
        //   357: aload           12
        //   359: aload           5
        //   361: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   366: istore          18
        //   368: ldc             "version"
        //   370: astore          5
        //   372: aload           12
        //   374: aload           5
        //   376: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   381: istore          23
        //   383: ldc_w           "rowid"
        //   386: astore          5
        //   388: aload           12
        //   390: aload           5
        //   392: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   397: istore          21
        //   399: ldc_w           "system_state"
        //   402: astore          5
        //   404: aload           12
        //   406: aload           5
        //   408: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   413: istore          24
        //   415: aload           12
        //   417: invokeinterface android/database/Cursor.moveToNext:()Z
        //   422: istore          11
        //   424: iload           11
        //   426: ifeq            933
        //   429: aload           12
        //   431: iload           22
        //   433: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   438: astore          5
        //   440: aload           5
        //   442: invokestatic    android/content/ComponentName.unflattenFromString:(Ljava/lang/String;)Landroid/content/ComponentName;
        //   445: astore          25
        //   447: aload           25
        //   449: invokevirtual   android/content/ComponentName.getPackageName:()Ljava/lang/String;
        //   452: astore          5
        //   454: aload           8
        //   456: aload           5
        //   458: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   461: astore          5
        //   463: aload           5
        //   465: checkcast       Landroid/content/pm/PackageInfo;
        //   468: astore          5
        //   470: aload           5
        //   472: ifnonnull       701
        //   475: aload           25
        //   477: invokevirtual   android/content/ComponentName.getPackageName:()Ljava/lang/String;
        //   480: astore          5
        //   482: aload_3        
        //   483: astore          4
        //   485: aload_3        
        //   486: aload           5
        //   488: invokeinterface java/util/Set.contains:(Ljava/lang/Object;)Z
        //   493: istore          11
        //   495: iload           11
        //   497: ifne            415
        //   500: aload_0        
        //   501: astore          4
        //   503: aload_0        
        //   504: aload           25
        //   506: aload_1        
        //   507: invokevirtual   com/android/launcher3/IconCache.remove:(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
        //   510: aload           12
        //   512: iload           21
        //   514: invokeinterface android/database/Cursor.getInt:(I)I
        //   519: istore          11
        //   521: iload           11
        //   523: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   526: astore          5
        //   528: aload           14
        //   530: aload           5
        //   532: invokevirtual   java/util/HashSet.add:(Ljava/lang/Object;)Z
        //   535: pop            
        //   536: goto            415
        //   539: astore          5
        //   541: aload           12
        //   543: astore          10
        //   545: ldc_w           "Launcher.IconCache"
        //   548: astore          12
        //   550: ldc_w           "Error reading icon cache"
        //   553: astore          17
        //   555: aload           12
        //   557: aload           17
        //   559: aload           5
        //   561: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   564: pop            
        //   565: aload           10
        //   567: ifnull          577
        //   570: aload           10
        //   572: invokeinterface android/database/Cursor.close:()V
        //   577: aload           14
        //   579: invokevirtual   java/util/HashSet.isEmpty:()Z
        //   582: istore          11
        //   584: iload           11
        //   586: ifne            622
        //   589: aload_0        
        //   590: astore          4
        //   592: aload_0        
        //   593: getfield        com/android/launcher3/IconCache.mIconDb:Lcom/android/launcher3/IconCache$IconDB;
        //   596: astore          5
        //   598: ldc_w           "rowid"
        //   601: aload           14
        //   603: invokestatic    com/android/launcher3/Utilities.createDbSelectionQuery:(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
        //   606: astore          10
        //   608: iconst_0       
        //   609: istore          16
        //   611: aconst_null    
        //   612: astore          12
        //   614: aload           5
        //   616: aload           10
        //   618: aconst_null    
        //   619: invokevirtual   com/android/launcher3/IconCache$IconDB.delete:(Ljava/lang/String;[Ljava/lang/String;)V
        //   622: aload           13
        //   624: invokevirtual   java/util/HashMap.isEmpty:()Z
        //   627: istore          11
        //   629: iload           11
        //   631: ifeq            648
        //   634: aload           15
        //   636: invokevirtual   java/util/Stack.isEmpty:()Z
        //   639: iconst_1       
        //   640: ixor           
        //   641: istore          11
        //   643: iload           11
        //   645: ifeq            700
        //   648: new             Ljava/util/Stack;
        //   651: astore          12
        //   653: aload           12
        //   655: invokespecial   java/util/Stack.<init>:()V
        //   658: aload           13
        //   660: invokevirtual   java/util/HashMap.values:()Ljava/util/Collection;
        //   663: astore          5
        //   665: aload           12
        //   667: aload           5
        //   669: invokevirtual   java/util/Stack.addAll:(Ljava/util/Collection;)Z
        //   672: pop            
        //   673: new             Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;
        //   676: astore          5
        //   678: aload_0        
        //   679: astore          10
        //   681: aload           5
        //   683: aload_0        
        //   684: lload           6
        //   686: aload           8
        //   688: aload           12
        //   690: aload           15
        //   692: invokespecial   com/android/launcher3/IconCache$SerializedIconUpdateTask.<init>:(Lcom/android/launcher3/IconCache;JLjava/util/HashMap;Ljava/util/Stack;Ljava/util/Stack;)V
        //   695: aload           5
        //   697: invokevirtual   com/android/launcher3/IconCache$SerializedIconUpdateTask.scheduleNext:()V
        //   700: return         
        //   701: aload           5
        //   703: getfield        android/content/pm/PackageInfo.applicationInfo:Landroid/content/pm/ApplicationInfo;
        //   706: astore          10
        //   708: aload           10
        //   710: getfield        android/content/pm/ApplicationInfo.flags:I
        //   713: istore          9
        //   715: ldc_w           16777216
        //   718: istore          26
        //   720: iload           9
        //   722: iload           26
        //   724: iand           
        //   725: istore          9
        //   727: iload           9
        //   729: ifne            415
        //   732: aload           12
        //   734: iload           18
        //   736: invokeinterface android/database/Cursor.getLong:(I)J
        //   741: lstore          27
        //   743: aload           12
        //   745: iload           23
        //   747: invokeinterface android/database/Cursor.getInt:(I)I
        //   752: istore          26
        //   754: aload           25
        //   756: astore          4
        //   758: aload           13
        //   760: aload           25
        //   762: invokevirtual   java/util/HashMap.remove:(Ljava/lang/Object;)Ljava/lang/Object;
        //   765: astore          10
        //   767: aload           10
        //   769: checkcast       Landroid/content/pm/LauncherActivityInfo;
        //   772: astore          10
        //   774: aload           5
        //   776: getfield        android/content/pm/PackageInfo.versionCode:I
        //   779: istore          29
        //   781: iload           26
        //   783: iload           29
        //   785: if_icmpne       861
        //   788: aload           5
        //   790: getfield        android/content/pm/PackageInfo.lastUpdateTime:J
        //   793: lstore          30
        //   795: lload           27
        //   797: lload           30
        //   799: lcmp           
        //   800: istore          26
        //   802: iload           26
        //   804: ifne            861
        //   807: aload           12
        //   809: iload           24
        //   811: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   816: astore          32
        //   818: aload_0        
        //   819: astore          4
        //   821: aload_0        
        //   822: getfield        com/android/launcher3/IconCache.mIconProvider:Lcom/android/launcher3/IconProvider;
        //   825: astore          4
        //   827: aload           5
        //   829: getfield        android/content/pm/PackageInfo.packageName:Ljava/lang/String;
        //   832: astore          5
        //   834: aload           4
        //   836: aload           5
        //   838: invokevirtual   com/android/launcher3/IconProvider.getIconSystemState:(Ljava/lang/String;)Ljava/lang/String;
        //   841: astore          5
        //   843: aload           32
        //   845: astore          4
        //   847: aload           32
        //   849: aload           5
        //   851: invokestatic    android/text/TextUtils.equals:(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
        //   854: istore          11
        //   856: iload           11
        //   858: ifne            415
        //   861: aload           10
        //   863: ifnonnull       922
        //   866: aload_0        
        //   867: astore          4
        //   869: aload_0        
        //   870: aload           25
        //   872: aload_1        
        //   873: invokevirtual   com/android/launcher3/IconCache.remove:(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
        //   876: aload           12
        //   878: iload           21
        //   880: invokeinterface android/database/Cursor.getInt:(I)I
        //   885: istore          11
        //   887: iload           11
        //   889: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   892: astore          5
        //   894: aload           14
        //   896: aload           5
        //   898: invokevirtual   java/util/HashSet.add:(Ljava/lang/Object;)Z
        //   901: pop            
        //   902: goto            415
        //   905: astore          5
        //   907: aload           12
        //   909: ifnull          919
        //   912: aload           12
        //   914: invokeinterface android/database/Cursor.close:()V
        //   919: aload           5
        //   921: athrow         
        //   922: aload           15
        //   924: aload           10
        //   926: invokevirtual   java/util/Stack.add:(Ljava/lang/Object;)Z
        //   929: pop            
        //   930: goto            415
        //   933: aload           12
        //   935: ifnull          577
        //   938: aload           12
        //   940: invokeinterface android/database/Cursor.close:()V
        //   945: goto            577
        //   948: astore          5
        //   950: iconst_0       
        //   951: istore          16
        //   953: aconst_null    
        //   954: astore          12
        //   956: goto            907
        //   959: astore          5
        //   961: aload           10
        //   963: astore          12
        //   965: goto            907
        //   968: astore          5
        //   970: goto            545
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  204    208    968    973    Landroid/database/sqlite/SQLiteException;
        //  204    208    948    959    Any
        //  213    218    968    973    Landroid/database/sqlite/SQLiteException;
        //  213    218    948    959    Any
        //  234    237    968    973    Landroid/database/sqlite/SQLiteException;
        //  234    237    948    959    Any
        //  248    251    968    973    Landroid/database/sqlite/SQLiteException;
        //  248    251    948    959    Any
        //  262    265    968    973    Landroid/database/sqlite/SQLiteException;
        //  262    265    948    959    Any
        //  276    279    968    973    Landroid/database/sqlite/SQLiteException;
        //  276    279    948    959    Any
        //  291    294    968    973    Landroid/database/sqlite/SQLiteException;
        //  291    294    948    959    Any
        //  302    307    968    973    Landroid/database/sqlite/SQLiteException;
        //  302    307    948    959    Any
        //  309    314    968    973    Landroid/database/sqlite/SQLiteException;
        //  309    314    948    959    Any
        //  322    325    968    973    Landroid/database/sqlite/SQLiteException;
        //  322    325    948    959    Any
        //  331    336    968    973    Landroid/database/sqlite/SQLiteException;
        //  331    336    948    959    Any
        //  344    351    539    545    Landroid/database/sqlite/SQLiteException;
        //  344    351    905    907    Any
        //  359    366    539    545    Landroid/database/sqlite/SQLiteException;
        //  359    366    905    907    Any
        //  374    381    539    545    Landroid/database/sqlite/SQLiteException;
        //  374    381    905    907    Any
        //  390    397    539    545    Landroid/database/sqlite/SQLiteException;
        //  390    397    905    907    Any
        //  406    413    539    545    Landroid/database/sqlite/SQLiteException;
        //  406    413    905    907    Any
        //  415    422    539    545    Landroid/database/sqlite/SQLiteException;
        //  415    422    905    907    Any
        //  431    438    539    545    Landroid/database/sqlite/SQLiteException;
        //  431    438    905    907    Any
        //  440    445    539    545    Landroid/database/sqlite/SQLiteException;
        //  440    445    905    907    Any
        //  447    452    539    545    Landroid/database/sqlite/SQLiteException;
        //  447    452    905    907    Any
        //  456    461    539    545    Landroid/database/sqlite/SQLiteException;
        //  456    461    905    907    Any
        //  463    468    539    545    Landroid/database/sqlite/SQLiteException;
        //  463    468    905    907    Any
        //  475    480    539    545    Landroid/database/sqlite/SQLiteException;
        //  475    480    905    907    Any
        //  486    493    539    545    Landroid/database/sqlite/SQLiteException;
        //  486    493    905    907    Any
        //  506    510    539    545    Landroid/database/sqlite/SQLiteException;
        //  506    510    905    907    Any
        //  512    519    539    545    Landroid/database/sqlite/SQLiteException;
        //  512    519    905    907    Any
        //  521    526    539    545    Landroid/database/sqlite/SQLiteException;
        //  521    526    905    907    Any
        //  530    536    539    545    Landroid/database/sqlite/SQLiteException;
        //  530    536    905    907    Any
        //  559    565    959    968    Any
        //  701    706    539    545    Landroid/database/sqlite/SQLiteException;
        //  701    706    905    907    Any
        //  708    713    539    545    Landroid/database/sqlite/SQLiteException;
        //  708    713    905    907    Any
        //  734    741    539    545    Landroid/database/sqlite/SQLiteException;
        //  734    741    905    907    Any
        //  745    752    539    545    Landroid/database/sqlite/SQLiteException;
        //  745    752    905    907    Any
        //  760    765    539    545    Landroid/database/sqlite/SQLiteException;
        //  760    765    905    907    Any
        //  767    772    539    545    Landroid/database/sqlite/SQLiteException;
        //  767    772    905    907    Any
        //  774    779    539    545    Landroid/database/sqlite/SQLiteException;
        //  774    779    905    907    Any
        //  788    793    539    545    Landroid/database/sqlite/SQLiteException;
        //  788    793    905    907    Any
        //  809    816    539    545    Landroid/database/sqlite/SQLiteException;
        //  809    816    905    907    Any
        //  821    825    539    545    Landroid/database/sqlite/SQLiteException;
        //  821    825    905    907    Any
        //  827    832    539    545    Landroid/database/sqlite/SQLiteException;
        //  827    832    905    907    Any
        //  836    841    539    545    Landroid/database/sqlite/SQLiteException;
        //  836    841    905    907    Any
        //  849    854    539    545    Landroid/database/sqlite/SQLiteException;
        //  849    854    905    907    Any
        //  872    876    539    545    Landroid/database/sqlite/SQLiteException;
        //  872    876    905    907    Any
        //  878    885    539    545    Landroid/database/sqlite/SQLiteException;
        //  878    885    905    907    Any
        //  887    892    539    545    Landroid/database/sqlite/SQLiteException;
        //  887    892    905    907    Any
        //  896    902    539    545    Landroid/database/sqlite/SQLiteException;
        //  896    902    905    907    Any
        //  924    930    539    545    Landroid/database/sqlite/SQLiteException;
        //  924    930    905    907    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0577:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:317)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:238)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:123)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    void addIconToDBAndMemCache(final LauncherActivityInfo launcherActivityInfo, final PackageInfo packageInfo, final long n, final boolean b) {
        while (true) {
            while (true) {
                synchronized (this) {
                    Object o = new ComponentKey(launcherActivityInfo.getComponentName(), launcherActivityInfo.getUser());
                    if (!b) {
                        IconCache$CacheEntry iconCache$CacheEntry = this.mCache.get(o);
                        if (iconCache$CacheEntry == null || iconCache$CacheEntry.isLowResIcon || iconCache$CacheEntry.icon == null) {
                            iconCache$CacheEntry = null;
                        }
                        if (iconCache$CacheEntry == null) {
                            iconCache$CacheEntry = new IconCache$CacheEntry();
                            iconCache$CacheEntry.icon = LauncherIcons.createBadgedIconBitmap(this.getFullResIcon(launcherActivityInfo), launcherActivityInfo.getUser(), this.mContext, launcherActivityInfo.getApplicationInfo().targetSdkVersion);
                        }
                        iconCache$CacheEntry.title = launcherActivityInfo.getLabel();
                        iconCache$CacheEntry.contentDescription = this.mUserManager.getBadgedLabelForUser(iconCache$CacheEntry.title, launcherActivityInfo.getUser());
                        this.mCache.put(o, iconCache$CacheEntry);
                        final Bitmap generateLowResIcon = this.generateLowResIcon(iconCache$CacheEntry.icon, this.mActivityBgColor);
                        o = iconCache$CacheEntry.icon;
                        final ContentValues contentValues = this.newContentValues((Bitmap)o, generateLowResIcon, iconCache$CacheEntry.title.toString(), launcherActivityInfo.getApplicationInfo().packageName);
                        o = launcherActivityInfo.getComponentName();
                        this.addIconToDB(contentValues, (ComponentName)o, packageInfo, n);
                        return;
                    }
                }
                IconCache$CacheEntry iconCache$CacheEntry = null;
                continue;
            }
        }
    }
    
    protected IconCache$CacheEntry cacheLocked(final ComponentName componentName, final Provider provider, final UserHandle userHandle, final boolean b, final boolean b2) {
        final boolean b3 = true;
        Preconditions.assertWorkerThread();
        final ComponentKey componentKey = new ComponentKey(componentName, userHandle);
        IconCache$CacheEntry iconCache$CacheEntry = this.mCache.get(componentKey);
        if (iconCache$CacheEntry == null || (iconCache$CacheEntry.isLowResIcon && (b2 ^ true))) {
            final IconCache$CacheEntry iconCache$CacheEntry2 = new IconCache$CacheEntry();
            this.mCache.put(componentKey, iconCache$CacheEntry2);
            boolean b4;
            LauncherActivityInfo launcherActivityInfo;
            if (this.getEntryFromDB(componentKey, iconCache$CacheEntry2, b2)) {
                b4 = false;
                launcherActivityInfo = null;
            }
            else {
                final LauncherActivityInfo launcherActivityInfo2 = (LauncherActivityInfo)provider.get();
                if (launcherActivityInfo2 != null) {
                    iconCache$CacheEntry2.icon = LauncherIcons.createBadgedIconBitmap(this.getFullResIcon(launcherActivityInfo2), launcherActivityInfo2.getUser(), this.mContext, ((LauncherActivityInfo)provider.get()).getApplicationInfo().targetSdkVersion);
                    launcherActivityInfo = launcherActivityInfo2;
                    b4 = b3;
                }
                else {
                    if (b) {
                        final IconCache$CacheEntry entryForPackageLocked = this.getEntryForPackageLocked(componentName.getPackageName(), userHandle, false);
                        if (entryForPackageLocked != null) {
                            iconCache$CacheEntry2.icon = entryForPackageLocked.icon;
                            iconCache$CacheEntry2.title = entryForPackageLocked.title;
                            iconCache$CacheEntry2.contentDescription = entryForPackageLocked.contentDescription;
                        }
                    }
                    if (iconCache$CacheEntry2.icon == null) {
                        iconCache$CacheEntry2.icon = this.getDefaultIcon(userHandle);
                        launcherActivityInfo = launcherActivityInfo2;
                        b4 = b3;
                    }
                    else {
                        launcherActivityInfo = launcherActivityInfo2;
                        b4 = b3;
                    }
                }
            }
            if (TextUtils.isEmpty(iconCache$CacheEntry2.title)) {
                if (launcherActivityInfo == null && (b4 ^ true)) {
                    launcherActivityInfo = (LauncherActivityInfo)provider.get();
                }
                if (launcherActivityInfo != null) {
                    iconCache$CacheEntry2.title = launcherActivityInfo.getLabel();
                    iconCache$CacheEntry2.contentDescription = this.mUserManager.getBadgedLabelForUser(iconCache$CacheEntry2.title, userHandle);
                    iconCache$CacheEntry = iconCache$CacheEntry2;
                    return iconCache$CacheEntry;
                }
            }
            iconCache$CacheEntry = iconCache$CacheEntry2;
        }
        return iconCache$CacheEntry;
    }
    
    public void cachePackageInstallInfo(final String s, final UserHandle userHandle, final Bitmap bitmap, final CharSequence title) {
        synchronized (this) {
            this.removeFromMemCacheLocked(s, userHandle);
            final ComponentKey packageKey = getPackageKey(s, userHandle);
            IconCache$CacheEntry iconCache$CacheEntry = this.mCache.get(packageKey);
            if (iconCache$CacheEntry == null) {
                iconCache$CacheEntry = new IconCache$CacheEntry();
                this.mCache.put(packageKey, iconCache$CacheEntry);
            }
            if (!TextUtils.isEmpty(title)) {
                iconCache$CacheEntry.title = title;
            }
            if (bitmap != null) {
                iconCache$CacheEntry.icon = LauncherIcons.createIconBitmap(bitmap, this.mContext);
            }
        }
    }
    
    public void clear() {
        synchronized (this) {
            Preconditions.assertWorkerThread();
            this.mIconDb.clear();
        }
    }
    
    public Bitmap getDefaultIcon(final UserHandle userHandle) {
        synchronized (this) {
            if (!this.mDefaultIcons.containsKey(userHandle)) {
                this.mDefaultIcons.put(userHandle, this.makeDefaultIcon(userHandle));
            }
            return this.mDefaultIcons.get(userHandle);
        }
    }
    
    public Drawable getFullResIcon(final ActivityInfo activityInfo) {
        Resources resourcesForApplication = null;
        try {
            final PackageManager mPackageManager = this.mPackageManager;
            try {
                resourcesForApplication = mPackageManager.getResourcesForApplication(activityInfo.applicationInfo);
                if (resourcesForApplication != null) {
                    final int iconResource = activityInfo.getIconResource();
                    if (iconResource != 0) {
                        return this.getFullResIcon(resourcesForApplication, iconResource);
                    }
                }
                return this.getFullResDefaultActivityIcon();
            }
            catch (PackageManager$NameNotFoundException ex) {}
        }
        catch (PackageManager$NameNotFoundException ex2) {}
    }
    
    public Drawable getFullResIcon(final LauncherActivityInfo launcherActivityInfo) {
        return this.mIconProvider.getIcon(launcherActivityInfo, this.mIconDpi);
    }
    
    public Drawable getFullResIcon(final String s, final int n) {
        Resources resourcesForApplication = null;
        while (true) {
            try {
                resourcesForApplication = this.mPackageManager.getResourcesForApplication(s);
                if (resourcesForApplication != null && n != 0) {
                    return this.getFullResIcon(resourcesForApplication, n);
                }
                return this.getFullResDefaultActivityIcon();
            }
            catch (PackageManager$NameNotFoundException ex) {
                continue;
            }
            break;
        }
    }
    
    public void getTitleAndIcon(final ItemInfoWithIcon itemInfoWithIcon, final LauncherActivityInfo launcherActivityInfo, final boolean b) {
        synchronized (this) {
            this.getTitleAndIcon(itemInfoWithIcon, Provider.of(launcherActivityInfo), false, b);
        }
    }
    
    public void getTitleAndIcon(final ItemInfoWithIcon itemInfoWithIcon, final boolean b) {
        synchronized (this) {
            if (itemInfoWithIcon.getTargetComponent() == null) {
                itemInfoWithIcon.iconBitmap = this.getDefaultIcon(itemInfoWithIcon.user);
                itemInfoWithIcon.title = "";
                itemInfoWithIcon.contentDescription = "";
                itemInfoWithIcon.usingLowResIcon = false;
            }
            else {
                this.getTitleAndIcon(itemInfoWithIcon, new IconCache$ActivityInfoProvider(this, itemInfoWithIcon.getIntent(), itemInfoWithIcon.user), true, b);
            }
        }
    }
    
    public void getTitleAndIconForApp(final PackageItemInfo packageItemInfo, final boolean b) {
        synchronized (this) {
            this.applyCacheEntry(this.getEntryForPackageLocked(packageItemInfo.packageName, packageItemInfo.user, b), packageItemInfo);
        }
    }
    
    public boolean isDefaultIcon(final Bitmap bitmap, final UserHandle userHandle) {
        return this.mDefaultIcons.get(userHandle) == bitmap;
    }
    
    protected Bitmap makeDefaultIcon(final UserHandle userHandle) {
        return LauncherIcons.createBadgedIconBitmap(this.getFullResDefaultActivityIcon(), userHandle, this.mContext, 26);
    }
    
    public void remove(final ComponentName componentName, final UserHandle userHandle) {
        synchronized (this) {
            this.mCache.remove(new ComponentKey(componentName, userHandle));
        }
    }
    
    public void removeIconsForPkg(final String s, final UserHandle userHandle) {
        synchronized (this) {
            this.removeFromMemCacheLocked(s, userHandle);
            this.mIconDb.delete("componentName LIKE ? AND profileId = ?", new String[] { s + "/%", Long.toString(this.mUserManager.getSerialNumberForUser(userHandle)) });
        }
    }
    
    public void updateDbIcons(final Set set) {
        this.mWorkerHandler.removeCallbacksAndMessages(IconCache.ICON_UPDATE_TOKEN);
        this.mIconProvider.updateSystemStateString();
        for (final UserHandle userHandle : this.mUserManager.getUserProfiles()) {
            final List activityList = this.mLauncherApps.getActivityList(null, userHandle);
            if (activityList == null || activityList.isEmpty()) {
                return;
            }
            Set<Object> emptySet;
            if (Process.myUserHandle().equals((Object)userHandle)) {
                emptySet = (Set<Object>)set;
            }
            else {
                emptySet = Collections.emptySet();
            }
            this.updateDBIcons(userHandle, activityList, emptySet);
        }
    }
    
    public IconCache$IconLoadRequest updateIconInBackground(final IconCache$ItemInfoUpdateReceiver iconCache$ItemInfoUpdateReceiver, final ItemInfoWithIcon itemInfoWithIcon) {
        final IconCache$1 iconCache$1 = new IconCache$1(this, itemInfoWithIcon, iconCache$ItemInfoUpdateReceiver);
        this.mWorkerHandler.post((Runnable)iconCache$1);
        return new IconCache$IconLoadRequest(iconCache$1, this.mWorkerHandler);
    }
    
    public void updateIconsForPkg(final String s, final UserHandle userHandle) {
        // monitorenter(this)
        try {
            this.removeIconsForPkg(s, userHandle);
            try {
                final PackageInfo packageInfo = this.mPackageManager.getPackageInfo(s, 8192);
                try {
                    final long serialNumberForUser = this.mUserManager.getSerialNumberForUser(userHandle);
                    try {
                        final List activityList = this.mLauncherApps.getActivityList(s, userHandle);
                        try {
                            final Iterator<LauncherActivityInfo> iterator = (Iterator<LauncherActivityInfo>)activityList.iterator();
                            try {
                                while (iterator.hasNext()) {
                                    final LauncherActivityInfo next = iterator.next();
                                    try {
                                        this.addIconToDBAndMemCache(next, packageInfo, serialNumberForUser, false);
                                    }
                                    catch (PackageManager$NameNotFoundException ex) {
                                        Log.d("Launcher.IconCache", "Package not found", (Throwable)ex);
                                    }
                                }
                            }
                            catch (PackageManager$NameNotFoundException ex2) {}
                        }
                        catch (PackageManager$NameNotFoundException ex3) {}
                    }
                    catch (PackageManager$NameNotFoundException ex4) {}
                }
                catch (PackageManager$NameNotFoundException ex5) {}
                finally {
                }
                // monitorexit(this)
            }
            catch (PackageManager$NameNotFoundException ex6) {}
        }
        finally {}
    }
    
    public void updateTitleAndIcon(final AppInfo appInfo) {
        synchronized (this) {
            final IconCache$CacheEntry cacheLocked = this.cacheLocked(appInfo.componentName, Provider.of(null), appInfo.user, false, appInfo.usingLowResIcon);
            if (cacheLocked.icon != null && (this.isDefaultIcon(cacheLocked.icon, appInfo.user) ^ true)) {
                this.applyCacheEntry(cacheLocked, appInfo);
            }
        }
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.database.Cursor;
import android.content.ContentValues;
import java.util.Iterator;
import android.database.SQLException;
import java.util.HashSet;
import com.android.launcher3.util.ComponentKey;
import android.util.LongSparseArray;
import com.android.launcher3.util.Preconditions;
import com.android.launcher3.util.PackageUserKey;
import java.util.ArrayList;
import android.os.CancellationSignal$OnCancelListener;
import android.os.CancellationSignal;
import com.android.launcher3.widget.WidgetCell;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.res.Resources$NotFoundException;
import android.graphics.Xfermode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Paint$Style;
import android.util.Log;
import android.os.UserHandle;
import java.util.concurrent.Future;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Callable;
import android.graphics.drawable.Drawable;
import android.graphics.Paint;
import android.graphics.Rect;
import com.android.launcher3.graphics.LauncherIcons;
import android.graphics.Bitmap$Config;
import android.graphics.PorterDuff$Mode;
import com.android.launcher3.compat.ShortcutConfigActivityInfo;
import android.content.res.Resources;
import com.android.launcher3.graphics.ShadowGenerator$Builder;
import android.graphics.RectF;
import android.graphics.Canvas;
import java.util.Map;
import java.util.Collections;
import java.util.WeakHashMap;
import android.graphics.Bitmap;
import com.android.launcher3.model.WidgetItem;
import android.os.Handler;
import com.android.launcher3.compat.AppWidgetManagerCompat;
import com.android.launcher3.compat.UserManagerCompat;
import java.util.Set;
import java.util.HashMap;
import android.content.Context;

public class WidgetPreviewLoader
{
    private final Context mContext;
    private final WidgetPreviewLoader$CacheDb mDb;
    private final IconCache mIconCache;
    private final MainThreadExecutor mMainThreadExecutor;
    private final HashMap mPackageVersions;
    final Set mUnusedBitmaps;
    private final UserManagerCompat mUserManager;
    private final AppWidgetManagerCompat mWidgetManager;
    final Handler mWorkerHandler;
    
    public WidgetPreviewLoader(final Context mContext, final IconCache mIconCache) {
        this.mPackageVersions = new HashMap();
        this.mUnusedBitmaps = Collections.newSetFromMap(new WeakHashMap<Object, Boolean>());
        this.mMainThreadExecutor = new MainThreadExecutor();
        this.mContext = mContext;
        this.mIconCache = mIconCache;
        this.mWidgetManager = AppWidgetManagerCompat.getInstance(mContext);
        this.mUserManager = UserManagerCompat.getInstance(mContext);
        this.mDb = new WidgetPreviewLoader$CacheDb(mContext);
        this.mWorkerHandler = new Handler(LauncherModel.getWorkerLooper());
    }
    
    private RectF drawBoxWithShadow(final Canvas canvas, final int n, final int n2) {
        final Resources resources = this.mContext.getResources();
        final ShadowGenerator$Builder shadowGenerator$Builder = new ShadowGenerator$Builder(-1);
        shadowGenerator$Builder.shadowBlur = resources.getDimension(2131427404);
        shadowGenerator$Builder.radius = resources.getDimension(2131427406);
        shadowGenerator$Builder.keyShadowDistance = resources.getDimension(2131427405);
        shadowGenerator$Builder.bounds.set(shadowGenerator$Builder.shadowBlur, shadowGenerator$Builder.shadowBlur, n - shadowGenerator$Builder.shadowBlur, n2 - shadowGenerator$Builder.shadowBlur - shadowGenerator$Builder.keyShadowDistance);
        shadowGenerator$Builder.drawShadow(canvas);
        return shadowGenerator$Builder.bounds;
    }
    
    private Bitmap generatePreview(final BaseActivity baseActivity, final WidgetItem widgetItem, final Bitmap bitmap, final int n, final int n2) {
        if (widgetItem.widgetInfo != null) {
            return this.generateWidgetPreview(baseActivity, widgetItem.widgetInfo, n, bitmap, null);
        }
        return this.generateShortcutPreview(baseActivity, widgetItem.activityInfo, n, n2, bitmap);
    }
    
    private Bitmap generateShortcutPreview(final BaseActivity baseActivity, final ShortcutConfigActivityInfo shortcutConfigActivityInfo, final int n, final int n2, Bitmap bitmap) {
        final int iconSizePx = baseActivity.getDeviceProfile().iconSizePx;
        final int dimensionPixelSize = baseActivity.getResources().getDimensionPixelSize(2131427408);
        final int n3 = dimensionPixelSize * 2 + iconSizePx;
        if (n2 < n3 || n < n3) {
            throw new RuntimeException("Max size is too small for preview");
        }
        final Canvas canvas = new Canvas();
        if (bitmap != null && bitmap.getWidth() >= n3 && bitmap.getHeight() >= n3) {
            if (bitmap.getWidth() > n3 || bitmap.getHeight() > n3) {
                bitmap.reconfigure(n3, n3, bitmap.getConfig());
            }
            canvas.setBitmap(bitmap);
            canvas.drawColor(0, PorterDuff$Mode.CLEAR);
        }
        else {
            bitmap = Bitmap.createBitmap(n3, n3, Bitmap$Config.ARGB_8888);
            canvas.setBitmap(bitmap);
        }
        final RectF drawBoxWithShadow = this.drawBoxWithShadow(canvas, n3, n3);
        final Bitmap scaledBitmapWithoutShadow = LauncherIcons.createScaledBitmapWithoutShadow(this.mutateOnMainThread(shortcutConfigActivityInfo.getFullResIcon(this.mIconCache)), this.mContext, 0);
        final Rect rect = new Rect(0, 0, scaledBitmapWithoutShadow.getWidth(), scaledBitmapWithoutShadow.getHeight());
        drawBoxWithShadow.set(0.0f, 0.0f, (float)iconSizePx, (float)iconSizePx);
        drawBoxWithShadow.offset((float)dimensionPixelSize, (float)dimensionPixelSize);
        canvas.drawBitmap(scaledBitmapWithoutShadow, rect, drawBoxWithShadow, new Paint(3));
        canvas.setBitmap((Bitmap)null);
        return bitmap;
    }
    
    private Drawable mutateOnMainThread(final Drawable drawable) {
        try {
            final MainThreadExecutor mMainThreadExecutor = this.mMainThreadExecutor;
            try {
                final WidgetPreviewLoader$1 widgetPreviewLoader$1 = new WidgetPreviewLoader$1(this, drawable);
                final MainThreadExecutor mainThreadExecutor = mMainThreadExecutor;
                try {
                    final Future<Drawable> submit = mainThreadExecutor.submit((Callable<Drawable>)widgetPreviewLoader$1);
                    try {
                        final Drawable value = submit.get();
                        try {
                            return value;
                        }
                        catch (ExecutionException ex) {
                            throw new RuntimeException(ex);
                        }
                        catch (InterruptedException ex2) {
                            Thread.currentThread().interrupt();
                            throw new RuntimeException(ex2);
                        }
                    }
                    catch (ExecutionException ex3) {}
                    catch (InterruptedException ex4) {}
                }
                catch (ExecutionException ex5) {}
                catch (InterruptedException ex6) {}
            }
            catch (ExecutionException ex7) {}
            catch (InterruptedException ex8) {}
        }
        catch (ExecutionException ex9) {}
        catch (InterruptedException ex10) {}
    }
    
    private void removePackage(final String s, final UserHandle userHandle, final long n) {
        synchronized (this.mPackageVersions) {
            this.mPackageVersions.remove(s);
            // monitorexit(this.mPackageVersions)
            this.mDb.delete("packageName = ? AND profileId = ?", new String[] { s, Long.toString(n) });
        }
    }
    
    public Bitmap generateWidgetPreview(final BaseActivity baseActivity, final LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo, int n, Bitmap bitmap, final int[] array) {
        if (n < 0) {
            n = -1 >>> 1;
        }
    Label_0069:
        while (true) {
            if (launcherAppWidgetProviderInfo.previewImage == 0) {
                final Drawable mutateOnMainThread = null;
                break Label_0069;
            }
            Drawable mutateOnMainThread;
            Drawable loadPreviewImage;
            int n2;
            int spanX = 0;
            int spanY = 0;
            int intrinsicWidth = 0;
            int intrinsicHeight = 0;
            float n3 = 0.0f;
            float n4 = 0.0f;
            int n5;
            int n6 = 0;
            int n7 = 0;
            Canvas canvas = null;
            int n8;
            DeviceProfile deviceProfile;
            int min;
            RectF drawBoxWithShadow;
            Paint paint;
            float left;
            float n9;
            int i;
            float n10;
            float top;
            float n11;
            Drawable icon;
            DeviceProfile deviceProfile2;
            float n12;
            float width;
            int n13;
            Drawable mutateOnMainThread2;
            int n14;
            int n15;
            Drawable drawable;
            Label_0090_Outer:Label_0121_Outer:Label_0177_Outer:
            while (true) {
                while (true) {
                    Label_1069: {
                        while (true) {
                            Label_1058: {
                            Label_0612:
                                while (true) {
                                Label_0541:
                                    while (true) {
                                    Label_0495:
                                        while (true) {
                                            Label_0474: {
                                                while (true) {
                                                    try {
                                                        loadPreviewImage = launcherAppWidgetProviderInfo.loadPreviewImage(this.mContext, 0);
                                                        if (loadPreviewImage != null) {
                                                            mutateOnMainThread = this.mutateOnMainThread(loadPreviewImage);
                                                            if (mutateOnMainThread == null) {
                                                                break Label_0474;
                                                            }
                                                            n2 = 1;
                                                            spanX = launcherAppWidgetProviderInfo.spanX;
                                                            spanY = launcherAppWidgetProviderInfo.spanY;
                                                            if (n2 == 0) {
                                                                break Label_0495;
                                                            }
                                                            intrinsicWidth = mutateOnMainThread.getIntrinsicWidth();
                                                            intrinsicHeight = mutateOnMainThread.getIntrinsicHeight();
                                                            n3 = 1.0f;
                                                            if (array != null) {
                                                                array[0] = intrinsicWidth;
                                                            }
                                                            if (intrinsicWidth <= n) {
                                                                break Label_1069;
                                                            }
                                                            n4 = n / intrinsicWidth;
                                                            if (n4 == 1.0f) {
                                                                break Label_1058;
                                                            }
                                                            n5 = (int)(intrinsicWidth * n4);
                                                            n6 = (int)(intrinsicHeight * n4);
                                                            n7 = n5;
                                                            canvas = new Canvas();
                                                            if (bitmap != null) {
                                                                break Label_0541;
                                                            }
                                                            bitmap = Bitmap.createBitmap(n7, n6, Bitmap$Config.ARGB_8888);
                                                            canvas.setBitmap(bitmap);
                                                            n8 = (bitmap.getWidth() - n7) / 2;
                                                            if (n2 != 0) {
                                                                mutateOnMainThread.setBounds(n8, 0, n8 + n7, n6);
                                                                mutateOnMainThread.draw(canvas);
                                                                return bitmap;
                                                            }
                                                            break Label_0612;
                                                        }
                                                    }
                                                    catch (OutOfMemoryError outOfMemoryError) {
                                                        Log.w("WidgetPreviewLoader", "Error loading widget preview for: " + launcherAppWidgetProviderInfo.provider, (Throwable)outOfMemoryError);
                                                        loadPreviewImage = null;
                                                        continue Label_0090_Outer;
                                                    }
                                                    break;
                                                }
                                                Log.w("WidgetPreviewLoader", "Can't load widget preview drawable 0x" + Integer.toHexString(launcherAppWidgetProviderInfo.previewImage) + " for provider: " + launcherAppWidgetProviderInfo.provider);
                                                mutateOnMainThread = loadPreviewImage;
                                                continue Label_0069;
                                            }
                                            n2 = 0;
                                            continue Label_0121_Outer;
                                        }
                                        deviceProfile = baseActivity.getDeviceProfile();
                                        min = Math.min(deviceProfile.cellWidthPx, deviceProfile.cellHeightPx);
                                        intrinsicWidth = min * spanX;
                                        intrinsicHeight = min * spanY;
                                        continue Label_0177_Outer;
                                    }
                                    if (bitmap.getHeight() > n6) {
                                        bitmap.reconfigure(bitmap.getWidth(), n6, bitmap.getConfig());
                                    }
                                    canvas.setBitmap(bitmap);
                                    canvas.drawColor(0, PorterDuff$Mode.CLEAR);
                                    continue;
                                }
                                drawBoxWithShadow = this.drawBoxWithShadow(canvas, n7, n6);
                                paint = new Paint(1);
                                paint.setStyle(Paint$Style.STROKE);
                                paint.setStrokeWidth(this.mContext.getResources().getDimension(2131427407));
                                paint.setXfermode((Xfermode)new PorterDuffXfermode(PorterDuff$Mode.CLEAR));
                                left = drawBoxWithShadow.left;
                                n9 = drawBoxWithShadow.width() / spanX;
                                i = 1;
                                n10 = left;
                                while (i < spanX) {
                                    n10 += n9;
                                    canvas.drawLine(n10, 0.0f, n10, (float)n6, paint);
                                    ++i;
                                }
                                top = drawBoxWithShadow.top;
                                n11 = drawBoxWithShadow.height() / spanY;
                                for (int j = 1; j < spanY; ++j) {
                                    top += n11;
                                    canvas.drawLine(0.0f, top, (float)n7, top, paint);
                                }
                                try {
                                    icon = launcherAppWidgetProviderInfo.getIcon((Context)baseActivity, this.mIconCache);
                                    Label_1035: {
                                        if (icon == null) {
                                            break Label_1035;
                                        }
                                        deviceProfile2 = baseActivity.getDeviceProfile();
                                        try {
                                            n12 = deviceProfile2.iconSizePx * n4;
                                            width = drawBoxWithShadow.width();
                                            try {
                                                n13 = (int)Math.min(n12, Math.min(width, drawBoxWithShadow.height()));
                                                mutateOnMainThread2 = this.mutateOnMainThread(icon);
                                                n14 = (n7 - n13) / 2;
                                                n15 = (n6 - n13) / 2;
                                                mutateOnMainThread2.setBounds(n14, n15, n14 + n13, n13 + n15);
                                                drawable = mutateOnMainThread2;
                                                try {
                                                    drawable.draw(canvas);
                                                    canvas.setBitmap((Bitmap)null);
                                                }
                                                catch (Resources$NotFoundException ex) {}
                                            }
                                            catch (Resources$NotFoundException ex2) {}
                                        }
                                        catch (Resources$NotFoundException ex3) {}
                                    }
                                }
                                catch (Resources$NotFoundException ex4) {}
                            }
                            n6 = intrinsicHeight;
                            n7 = intrinsicWidth;
                            continue;
                        }
                    }
                    n4 = n3;
                    continue;
                }
            }
            break;
        }
    }
    
    long[] getPackageVersion(final String s) {
        final HashMap mPackageVersions = this.mPackageVersions;
        // monitorenter(mPackageVersions)
        try {
            long[] array = this.mPackageVersions.get(s);
            if (array != null) {
                return array;
            }
            final long[] array2 = new long[2];
            try {
                final Context mContext = this.mContext;
                try {
                    final PackageInfo packageInfo = mContext.getPackageManager().getPackageInfo(s, 8192);
                    try {
                        array2[0] = packageInfo.versionCode;
                        array2[1] = packageInfo.lastUpdateTime;
                        this.mPackageVersions.put(s, array2);
                        array = array2;
                        return array;
                    }
                    catch (PackageManager$NameNotFoundException ex) {
                        Log.e("WidgetPreviewLoader", "PackageInfo not found", (Throwable)ex);
                    }
                }
                catch (PackageManager$NameNotFoundException ex2) {}
            }
            catch (PackageManager$NameNotFoundException ex3) {}
            finally {
            }
            // monitorexit(mPackageVersions)
        }
        finally {}
    }
    
    public CancellationSignal getPreview(final WidgetItem widgetItem, final int n, final int n2, final WidgetCell widgetCell, final boolean b) {
        final WidgetPreviewLoader$PreviewLoadTask onCancelListener = new WidgetPreviewLoader$PreviewLoadTask(this, new WidgetPreviewLoader$WidgetCacheKey(widgetItem.componentName, widgetItem.user, n + "x" + n2), widgetItem, n, n2, widgetCell, b);
        onCancelListener.executeOnExecutor(Utilities.THREAD_POOL_EXECUTOR, (Object[])new Void[0]);
        final CancellationSignal cancellationSignal = new CancellationSignal();
        cancellationSignal.setOnCancelListener((CancellationSignal$OnCancelListener)onCancelListener);
        return cancellationSignal;
    }
    
    Bitmap readFromDb(final WidgetPreviewLoader$WidgetCacheKey p0, final Bitmap p1, final WidgetPreviewLoader$PreviewLoadTask p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     1: astore          4
        //     3: aload_0        
        //     4: getfield        com/android/launcher3/WidgetPreviewLoader.mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;
        //     7: astore          5
        //     9: iconst_1       
        //    10: istore          6
        //    12: iload           6
        //    14: anewarray       Ljava/lang/String;
        //    17: astore          7
        //    19: ldc_w           "preview_bitmap"
        //    22: astore          8
        //    24: iconst_0       
        //    25: istore          9
        //    27: aconst_null    
        //    28: astore          10
        //    30: aload           7
        //    32: iconst_0       
        //    33: aload           8
        //    35: aastore        
        //    36: ldc_w           "componentName = ? AND profileId = ? AND size = ?"
        //    39: astore          8
        //    41: iconst_3       
        //    42: istore          9
        //    44: iload           9
        //    46: anewarray       Ljava/lang/String;
        //    49: astore          10
        //    51: aload_1        
        //    52: getfield        com/android/launcher3/WidgetPreviewLoader$WidgetCacheKey.componentName:Landroid/content/ComponentName;
        //    55: astore          11
        //    57: aload           11
        //    59: invokevirtual   android/content/ComponentName.flattenToShortString:()Ljava/lang/String;
        //    62: astore          11
        //    64: iconst_0       
        //    65: istore          12
        //    67: aconst_null    
        //    68: astore          13
        //    70: aload           10
        //    72: iconst_0       
        //    73: aload           11
        //    75: aastore        
        //    76: aload_0        
        //    77: getfield        com/android/launcher3/WidgetPreviewLoader.mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;
        //    80: astore          11
        //    82: aload_1        
        //    83: getfield        com/android/launcher3/WidgetPreviewLoader$WidgetCacheKey.user:Landroid/os/UserHandle;
        //    86: astore          13
        //    88: aload           11
        //    90: aload           13
        //    92: invokevirtual   com/android/launcher3/compat/UserManagerCompat.getSerialNumberForUser:(Landroid/os/UserHandle;)J
        //    95: lstore          14
        //    97: lload           14
        //    99: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //   102: astore          11
        //   104: iconst_1       
        //   105: istore          12
        //   107: aload           10
        //   109: iload           12
        //   111: aload           11
        //   113: aastore        
        //   114: aload_1        
        //   115: getfield        com/android/launcher3/WidgetPreviewLoader$WidgetCacheKey.size:Ljava/lang/String;
        //   118: astore          11
        //   120: iconst_2       
        //   121: istore          12
        //   123: aload           10
        //   125: iload           12
        //   127: aload           11
        //   129: aastore        
        //   130: aload           5
        //   132: aload           7
        //   134: aload           8
        //   136: aload           10
        //   138: invokevirtual   com/android/launcher3/WidgetPreviewLoader$CacheDb.query:([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //   141: astore          7
        //   143: aload_3        
        //   144: invokevirtual   com/android/launcher3/WidgetPreviewLoader$PreviewLoadTask.isCancelled:()Z
        //   147: istore          16
        //   149: iload           16
        //   151: ifeq            168
        //   154: aload           7
        //   156: ifnull          166
        //   159: aload           7
        //   161: invokeinterface android/database/Cursor.close:()V
        //   166: aconst_null    
        //   167: areturn        
        //   168: aload           7
        //   170: invokeinterface android/database/Cursor.moveToNext:()Z
        //   175: istore          16
        //   177: iload           16
        //   179: ifeq            276
        //   182: iconst_0       
        //   183: istore          16
        //   185: aconst_null    
        //   186: astore          5
        //   188: aload           7
        //   190: iconst_0       
        //   191: invokeinterface android/database/Cursor.getBlob:(I)[B
        //   196: astore          5
        //   198: new             Landroid/graphics/BitmapFactory$Options;
        //   201: astore          8
        //   203: aload           8
        //   205: invokespecial   android/graphics/BitmapFactory$Options.<init>:()V
        //   208: aload           8
        //   210: aload_2        
        //   211: putfield        android/graphics/BitmapFactory$Options.inBitmap:Landroid/graphics/Bitmap;
        //   214: aload_3        
        //   215: invokevirtual   com/android/launcher3/WidgetPreviewLoader$PreviewLoadTask.isCancelled:()Z
        //   218: istore          9
        //   220: iload           9
        //   222: ifne            276
        //   225: aload           5
        //   227: arraylength    
        //   228: istore          9
        //   230: aconst_null    
        //   231: astore          11
        //   233: aload           5
        //   235: iconst_0       
        //   236: iload           9
        //   238: aload           8
        //   240: invokestatic    android/graphics/BitmapFactory.decodeByteArray:([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
        //   243: astore          5
        //   245: aload           7
        //   247: ifnull          257
        //   250: aload           7
        //   252: invokeinterface android/database/Cursor.close:()V
        //   257: aload           5
        //   259: areturn        
        //   260: astore          5
        //   262: aload           7
        //   264: ifnull          274
        //   267: aload           7
        //   269: invokeinterface android/database/Cursor.close:()V
        //   274: aconst_null    
        //   275: areturn        
        //   276: aload           7
        //   278: ifnull          288
        //   281: aload           7
        //   283: invokeinterface android/database/Cursor.close:()V
        //   288: aconst_null    
        //   289: areturn        
        //   290: astore          5
        //   292: iconst_0       
        //   293: istore          6
        //   295: aconst_null    
        //   296: astore          7
        //   298: ldc_w           "WidgetPreviewLoader"
        //   301: astore          8
        //   303: ldc_w           "Error loading preview from DB"
        //   306: astore          10
        //   308: aload           8
        //   310: aload           10
        //   312: aload           5
        //   314: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   317: pop            
        //   318: aload           7
        //   320: ifnull          288
        //   323: aload           7
        //   325: invokeinterface android/database/Cursor.close:()V
        //   330: goto            288
        //   333: astore          5
        //   335: aload           4
        //   337: ifnull          347
        //   340: aload           4
        //   342: invokeinterface android/database/Cursor.close:()V
        //   347: aload           5
        //   349: athrow         
        //   350: astore          5
        //   352: aload           7
        //   354: astore          4
        //   356: goto            335
        //   359: astore          5
        //   361: goto            298
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  3      7      290    298    Landroid/database/SQLException;
        //  3      7      333    335    Any
        //  12     17     290    298    Landroid/database/SQLException;
        //  12     17     333    335    Any
        //  33     36     290    298    Landroid/database/SQLException;
        //  33     36     333    335    Any
        //  44     49     290    298    Landroid/database/SQLException;
        //  44     49     333    335    Any
        //  51     55     290    298    Landroid/database/SQLException;
        //  51     55     333    335    Any
        //  57     62     290    298    Landroid/database/SQLException;
        //  57     62     333    335    Any
        //  73     76     290    298    Landroid/database/SQLException;
        //  73     76     333    335    Any
        //  76     80     290    298    Landroid/database/SQLException;
        //  76     80     333    335    Any
        //  82     86     290    298    Landroid/database/SQLException;
        //  82     86     333    335    Any
        //  90     95     290    298    Landroid/database/SQLException;
        //  90     95     333    335    Any
        //  97     102    290    298    Landroid/database/SQLException;
        //  97     102    333    335    Any
        //  111    114    290    298    Landroid/database/SQLException;
        //  111    114    333    335    Any
        //  114    118    290    298    Landroid/database/SQLException;
        //  114    118    333    335    Any
        //  127    130    290    298    Landroid/database/SQLException;
        //  127    130    333    335    Any
        //  136    141    290    298    Landroid/database/SQLException;
        //  136    141    333    335    Any
        //  143    147    359    364    Landroid/database/SQLException;
        //  143    147    350    359    Any
        //  168    175    359    364    Landroid/database/SQLException;
        //  168    175    350    359    Any
        //  190    196    359    364    Landroid/database/SQLException;
        //  190    196    350    359    Any
        //  198    201    359    364    Landroid/database/SQLException;
        //  198    201    350    359    Any
        //  203    208    359    364    Landroid/database/SQLException;
        //  203    208    350    359    Any
        //  210    214    359    364    Landroid/database/SQLException;
        //  210    214    350    359    Any
        //  214    218    260    276    Ljava/lang/Exception;
        //  214    218    359    364    Landroid/database/SQLException;
        //  214    218    350    359    Any
        //  225    228    260    276    Ljava/lang/Exception;
        //  225    228    359    364    Landroid/database/SQLException;
        //  225    228    350    359    Any
        //  238    243    260    276    Ljava/lang/Exception;
        //  238    243    359    364    Landroid/database/SQLException;
        //  238    243    350    359    Any
        //  312    318    350    359    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 173, Size: 173
        //     at java.util.ArrayList.rangeCheck(Unknown Source)
        //     at java.util.ArrayList.get(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3303)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:113)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
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
    
    public void removeObsoletePreviews(final ArrayList list, final PackageUserKey packageUserKey) {
        Preconditions.assertWorkerThread();
        Object iterator = new LongSparseArray();
        for (final ComponentKey componentKey : list) {
            final long serialNumberForUser = this.mUserManager.getSerialNumberForUser(componentKey.user);
            Object o = ((LongSparseArray)iterator).get(serialNumberForUser);
            if (o == null) {
                o = new HashSet<String>();
                ((LongSparseArray)iterator).put(serialNumberForUser, o);
            }
            ((HashSet<String>)o).add(componentKey.componentName.getPackageName());
        }
        final LongSparseArray longSparseArray = new LongSparseArray();
        Label_0523: {
            if (packageUserKey != null) {
                break Label_0523;
            }
            long serialNumberForUser2 = 0L;
        Label_0563_Outer:
            while (true) {
                Object o = null;
                while (true) {
                    int n = 0;
                    try {
                        o = this.mDb.query(new String[] { "profileId", "packageName", "lastUpdated", "version" }, null, null);
                        try {
                            while (true) {
                                Label_0551: {
                                    if (!((Cursor)o).moveToNext()) {
                                        break Label_0551;
                                    }
                                    final long long1 = ((Cursor)o).getLong(0);
                                    final String string = ((Cursor)o).getString(1);
                                    final long long2 = ((Cursor)o).getLong(2);
                                    final long long3 = ((Cursor)o).getLong(3);
                                    if (packageUserKey != null && (!string.equals(packageUserKey.mPackageName) || long1 != serialNumberForUser2)) {
                                        continue Label_0563_Outer;
                                    }
                                    final Object value = ((LongSparseArray)iterator).get(long1);
                                    try {
                                        final HashSet set = (HashSet)value;
                                        if (set != null && set.contains(string)) {
                                            final long[] packageVersion = this.getPackageVersion(string);
                                            if (packageVersion[0] == long3 && packageVersion[1] == long2) {
                                                continue Label_0563_Outer;
                                            }
                                        }
                                        final Object value2 = longSparseArray.get(long1);
                                        try {
                                            HashSet<?> set2 = (HashSet<?>)value2;
                                            Label_0477: {
                                                if (set2 != null) {
                                                    break Label_0477;
                                                }
                                                set2 = new(java.util.HashSet.class);
                                                try {
                                                    new HashSet();
                                                    longSparseArray.put(long1, (Object)set2);
                                                    final HashSet<String> set3 = (HashSet<String>)set2;
                                                    try {
                                                        set3.add(string);
                                                        continue Label_0563_Outer;
                                                        n = 0;
                                                        // iftrue(Label_0696:, n >= longSparseArray.size())
                                                        Block_24: {
                                                            break Block_24;
                                                            final UserManagerCompat mUserManager = this.mUserManager;
                                                            o = packageUserKey.mUser;
                                                            serialNumberForUser2 = mUserManager.getSerialNumberForUser((UserHandle)o);
                                                            continue Label_0563_Outer;
                                                        }
                                                        final long key = longSparseArray.keyAt(n);
                                                        try {
                                                            this.mUserManager.getUserForSerialNumber(key);
                                                            final Object value3 = longSparseArray.valueAt(n);
                                                            try {
                                                                final HashSet set4 = (HashSet)value3;
                                                                try {
                                                                    iterator = set4.iterator();
                                                                    try {
                                                                        while (((Iterator)iterator).hasNext()) {
                                                                            final String next = ((Iterator<String>)iterator).next();
                                                                        }
                                                                    }
                                                                    catch (SQLException ex) {}
                                                                }
                                                                catch (SQLException ex2) {}
                                                            }
                                                            catch (SQLException ex3) {}
                                                        }
                                                        catch (SQLException ex4) {}
                                                    }
                                                    catch (SQLException ex5) {}
                                                }
                                                catch (SQLException ex6) {}
                                            }
                                        }
                                        catch (SQLException ex7) {}
                                    }
                                    catch (SQLException ex8) {}
                                }
                            }
                        }
                        catch (SQLException ex9) {}
                    }
                    catch (SQLException ex10) {}
                    finally {
                        if (o != null) {
                            ((Cursor)o).close();
                        }
                    }
                    ++n;
                    continue;
                }
                Label_0696: {
                    if (o != null) {
                        ((Cursor)o).close();
                    }
                }
            }
        }
    }
    
    public void removePackage(final String s, final UserHandle userHandle) {
        this.removePackage(s, userHandle, this.mUserManager.getSerialNumberForUser(userHandle));
    }
    
    void writeToDb(final WidgetPreviewLoader$WidgetCacheKey widgetPreviewLoader$WidgetCacheKey, final long[] array, final Bitmap bitmap) {
        final ContentValues contentValues = new ContentValues();
        contentValues.put("componentName", widgetPreviewLoader$WidgetCacheKey.componentName.flattenToShortString());
        contentValues.put("profileId", this.mUserManager.getSerialNumberForUser(widgetPreviewLoader$WidgetCacheKey.user));
        contentValues.put("size", widgetPreviewLoader$WidgetCacheKey.size);
        contentValues.put("packageName", widgetPreviewLoader$WidgetCacheKey.componentName.getPackageName());
        contentValues.put("version", array[0]);
        contentValues.put("lastUpdated", array[1]);
        contentValues.put("preview_bitmap", Utilities.flattenBitmap(bitmap));
        this.mDb.insertOrReplace(contentValues);
    }
}

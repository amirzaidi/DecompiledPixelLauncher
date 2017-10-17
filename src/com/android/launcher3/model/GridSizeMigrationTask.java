// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import android.net.Uri;
import android.content.ContentProviderOperation;
import com.android.launcher3.LauncherSettings$WorkspaceScreens;
import com.android.launcher3.LauncherSettings$Settings;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.compat.AppWidgetManagerCompat;
import android.content.ComponentName;
import android.content.Intent;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.util.GridOccupancy;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.util.LongArrayMap;
import android.os.CancellationSignal;
import java.util.Collection;
import com.android.launcher3.compat.PackageInstallerCompat;
import android.content.pm.PackageInfo;
import java.util.Locale;
import android.database.Cursor;
import java.util.Iterator;
import com.android.launcher3.LauncherSettings$Favorites;
import android.util.Log;
import android.text.TextUtils;
import com.android.launcher3.LauncherProvider;
import android.graphics.Point;
import com.android.launcher3.Utilities;
import java.util.HashSet;
import android.content.ContentValues;
import com.android.launcher3.InvariantDeviceProfile;
import android.content.Context;
import java.util.ArrayList;

public class GridSizeMigrationTask
{
    public static boolean ENABLED;
    protected final ArrayList mCarryOver;
    private final Context mContext;
    private final int mDestHotseatSize;
    protected final ArrayList mEntryToRemove;
    private final InvariantDeviceProfile mIdp;
    private final boolean mShouldRemoveX;
    private final boolean mShouldRemoveY;
    private final int mSrcHotseatSize;
    private final int mSrcX;
    private final int mSrcY;
    private final ContentValues mTempValues;
    private final int mTrgX;
    private final int mTrgY;
    private final ArrayList mUpdateOperations;
    private final HashSet mValidPackages;
    
    static {
        GridSizeMigrationTask.ENABLED = Utilities.ATLEAST_NOUGAT;
    }
    
    protected GridSizeMigrationTask(final Context mContext, final InvariantDeviceProfile mIdp, final HashSet mValidPackages, final int mSrcHotseatSize, final int mDestHotseatSize) {
        final int n = -1;
        this.mTempValues = new ContentValues();
        this.mEntryToRemove = new ArrayList();
        this.mUpdateOperations = new ArrayList();
        this.mCarryOver = new ArrayList();
        this.mContext = mContext;
        this.mIdp = mIdp;
        this.mValidPackages = mValidPackages;
        this.mSrcHotseatSize = mSrcHotseatSize;
        this.mDestHotseatSize = mDestHotseatSize;
        this.mTrgY = n;
        this.mTrgX = n;
        this.mSrcY = n;
        this.mSrcX = n;
        this.mShouldRemoveY = false;
        this.mShouldRemoveX = false;
    }
    
    protected GridSizeMigrationTask(final Context mContext, final InvariantDeviceProfile mIdp, final HashSet mValidPackages, final Point point, final Point point2) {
        boolean mShouldRemoveY = true;
        final int n = -1;
        this.mTempValues = new ContentValues();
        this.mEntryToRemove = new ArrayList();
        this.mUpdateOperations = new ArrayList();
        this.mCarryOver = new ArrayList();
        this.mContext = mContext;
        this.mValidPackages = mValidPackages;
        this.mIdp = mIdp;
        this.mSrcX = point.x;
        this.mSrcY = point.y;
        this.mTrgX = point2.x;
        this.mTrgY = point2.y;
        this.mShouldRemoveX = (this.mTrgX < this.mSrcX && mShouldRemoveY);
        if (this.mTrgY >= this.mSrcY) {
            mShouldRemoveY = false;
        }
        this.mShouldRemoveY = mShouldRemoveY;
        this.mDestHotseatSize = n;
        this.mSrcHotseatSize = n;
    }
    
    private boolean applyOperations() {
        if (!this.mUpdateOperations.isEmpty()) {
            this.mContext.getContentResolver().applyBatch(LauncherProvider.AUTHORITY, this.mUpdateOperations);
        }
        if (!this.mEntryToRemove.isEmpty()) {
            Log.d("GridSizeMigrationTask", "Removing items: " + TextUtils.join((CharSequence)", ", (Iterable)this.mEntryToRemove));
            this.mContext.getContentResolver().delete(LauncherSettings$Favorites.CONTENT_URI, Utilities.createDbSelectionQuery("_id", this.mEntryToRemove), (String[])null);
        }
        return !this.mUpdateOperations.isEmpty() || (this.mEntryToRemove.isEmpty() ^ true);
    }
    
    private static ArrayList deepCopy(final ArrayList list) {
        final ArrayList list2 = new ArrayList<GridSizeMigrationTask$DbEntry>(list.size());
        final Iterator<GridSizeMigrationTask$DbEntry> iterator = list.iterator();
        while (iterator.hasNext()) {
            list2.add(iterator.next().copy());
        }
        return list2;
    }
    
    private int getFolderItemsCount(final long n) {
        final int n2 = 1;
        final String[] array = { "_id", null };
        array[n2] = "intent";
        final Cursor queryWorkspace = this.queryWorkspace(array, "container = " + n);
        int n3 = 0;
        while (queryWorkspace.moveToNext()) {
            final int n4 = 1;
            final Cursor cursor = queryWorkspace;
            try {
                this.verifyIntent(cursor.getString(n4));
                ++n3;
            }
            catch (Exception ex) {
                this.mEntryToRemove.add(queryWorkspace.getLong(0));
            }
        }
        queryWorkspace.close();
        return n3;
    }
    
    private static String getPointString(final int n, final int n2) {
        return String.format(Locale.ENGLISH, "%d,%d", n, n2);
    }
    
    protected static HashSet getValidPackages(final Context context) {
        final HashSet<Object> set = new HashSet<Object>();
        final Iterator iterator = context.getPackageManager().getInstalledPackages(8192).iterator();
        while (iterator.hasNext()) {
            set.add(iterator.next().packageName);
        }
        set.addAll(PackageInstallerCompat.getInstance(context).updateAndGetActiveSessionCache().keySet());
        return set;
    }
    
    private ArrayList loadHotseatEntries() {
        final Cursor query = this.mContext.getContentResolver().query(LauncherSettings$Favorites.CONTENT_URI, new String[] { "_id", "itemType", "intent", "screen" }, "container = -101", (String[])null, (String)null, (CancellationSignal)null);
        final int columnIndexOrThrow = query.getColumnIndexOrThrow("_id");
        final int columnIndexOrThrow2 = query.getColumnIndexOrThrow("itemType");
        final int columnIndexOrThrow3 = query.getColumnIndexOrThrow("intent");
        final int columnIndexOrThrow4 = query.getColumnIndexOrThrow("screen");
        final ArrayList<GridSizeMigrationTask$DbEntry> list = new ArrayList<GridSizeMigrationTask$DbEntry>();
    Label_0438_Outer:
        while (query.moveToNext()) {
            final GridSizeMigrationTask$DbEntry gridSizeMigrationTask$DbEntry = new GridSizeMigrationTask$DbEntry();
            gridSizeMigrationTask$DbEntry.id = query.getLong(columnIndexOrThrow);
            gridSizeMigrationTask$DbEntry.itemType = query.getInt(columnIndexOrThrow2);
            gridSizeMigrationTask$DbEntry.screenId = query.getLong(columnIndexOrThrow4);
            if (gridSizeMigrationTask$DbEntry.screenId >= this.mSrcHotseatSize) {
                this.mEntryToRemove.add(gridSizeMigrationTask$DbEntry.id);
            }
            else {
                while (true) {
                    Label_0462: {
                        try {
                            switch (gridSizeMigrationTask$DbEntry.itemType) {
                                default: {
                                    throw new Exception("Invalid item type");
                                }
                                case 0:
                                case 1:
                                case 6: {
                                    break;
                                }
                                case 2: {
                                    break Label_0462;
                                }
                            }
                        }
                        catch (Exception ex) {
                            Log.d("GridSizeMigrationTask", "Removing item " + gridSizeMigrationTask$DbEntry.id, (Throwable)ex);
                            this.mEntryToRemove.add(gridSizeMigrationTask$DbEntry.id);
                            continue Label_0438_Outer;
                        }
                        this.verifyIntent(query.getString(columnIndexOrThrow3));
                        float weight;
                        if (gridSizeMigrationTask$DbEntry.itemType == 0) {
                            weight = 0.8f;
                        }
                        else {
                            weight = 1.0f;
                        }
                        gridSizeMigrationTask$DbEntry.weight = weight;
                        list.add(gridSizeMigrationTask$DbEntry);
                        continue Label_0438_Outer;
                    }
                    final int folderItemsCount = this.getFolderItemsCount(gridSizeMigrationTask$DbEntry.id);
                    if (folderItemsCount == 0) {
                        throw new Exception("Folder is empty");
                    }
                    gridSizeMigrationTask$DbEntry.weight = folderItemsCount * 0.5f;
                    continue;
                }
            }
        }
        query.close();
        return list;
    }
    
    public static void markForMigration(final Context context, final int n, final int n2, final int n3) {
        Utilities.getPrefs(context).edit().putString("migration_src_workspace_size", getPointString(n, n2)).putInt("migration_src_hotseat_count", n3).apply();
    }
    
    public static boolean migrateGridIfNeeded(final Context p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_1       
        //     1: istore_1       
        //     2: aload_0        
        //     3: invokestatic    com/android/launcher3/Utilities.getPrefs:(Landroid/content/Context;)Landroid/content/SharedPreferences;
        //     6: astore_2       
        //     7: aload_0        
        //     8: invokestatic    com/android/launcher3/LauncherAppState.getIDP:(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;
        //    11: astore_3       
        //    12: aload_3        
        //    13: getfield        com/android/launcher3/InvariantDeviceProfile.numColumns:I
        //    16: istore          4
        //    18: aload_3        
        //    19: getfield        com/android/launcher3/InvariantDeviceProfile.numRows:I
        //    22: istore          5
        //    24: iload           4
        //    26: iload           5
        //    28: invokestatic    com/android/launcher3/model/GridSizeMigrationTask.getPointString:(II)Ljava/lang/String;
        //    31: astore          6
        //    33: ldc_w           ""
        //    36: astore          7
        //    38: aload_2        
        //    39: ldc_w           "migration_src_workspace_size"
        //    42: aload           7
        //    44: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //    49: astore          8
        //    51: aload           6
        //    53: aload           8
        //    55: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    58: istore          4
        //    60: iload           4
        //    62: ifeq            103
        //    65: aload_3        
        //    66: getfield        com/android/launcher3/InvariantDeviceProfile.numHotseatIcons:I
        //    69: istore          4
        //    71: ldc_w           "migration_src_hotseat_count"
        //    74: astore          7
        //    76: aload_3        
        //    77: getfield        com/android/launcher3/InvariantDeviceProfile.numHotseatIcons:I
        //    80: istore          9
        //    82: aload_2        
        //    83: aload           7
        //    85: iload           9
        //    87: invokeinterface android/content/SharedPreferences.getInt:(Ljava/lang/String;I)I
        //    92: istore          5
        //    94: iload           4
        //    96: iload           5
        //    98: if_icmpne       103
        //   101: iload_1        
        //   102: ireturn        
        //   103: invokestatic    java/lang/System.currentTimeMillis:()J
        //   106: lstore          10
        //   108: aload_0        
        //   109: invokestatic    com/android/launcher3/model/GridSizeMigrationTask.getValidPackages:(Landroid/content/Context;)Ljava/util/HashSet;
        //   112: astore          12
        //   114: ldc_w           "migration_src_hotseat_count"
        //   117: astore          8
        //   119: aload_3        
        //   120: getfield        com/android/launcher3/InvariantDeviceProfile.numHotseatIcons:I
        //   123: istore          5
        //   125: aload_2        
        //   126: aload           8
        //   128: iload           5
        //   130: invokeinterface android/content/SharedPreferences.getInt:(Ljava/lang/String;I)I
        //   135: istore          13
        //   137: aload_3        
        //   138: getfield        com/android/launcher3/InvariantDeviceProfile.numHotseatIcons:I
        //   141: istore          4
        //   143: iload           13
        //   145: iload           4
        //   147: if_icmpeq       661
        //   150: new             Lcom/android/launcher3/model/GridSizeMigrationTask;
        //   153: astore          8
        //   155: aload_0        
        //   156: invokestatic    com/android/launcher3/LauncherAppState.getIDP:(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;
        //   159: astore          14
        //   161: aload_3        
        //   162: getfield        com/android/launcher3/InvariantDeviceProfile.numHotseatIcons:I
        //   165: istore          15
        //   167: aload_0        
        //   168: astore          7
        //   170: aload           8
        //   172: aload_0        
        //   173: aload           14
        //   175: aload           12
        //   177: iload           13
        //   179: iload           15
        //   181: invokespecial   com/android/launcher3/model/GridSizeMigrationTask.<init>:(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/HashSet;II)V
        //   184: aload           8
        //   186: invokevirtual   com/android/launcher3/model/GridSizeMigrationTask.migrateHotseat:()Z
        //   189: istore          4
        //   191: new             Landroid/graphics/Point;
        //   194: astore          7
        //   196: aload_3        
        //   197: getfield        com/android/launcher3/InvariantDeviceProfile.numColumns:I
        //   200: istore          9
        //   202: aload_3        
        //   203: getfield        com/android/launcher3/InvariantDeviceProfile.numRows:I
        //   206: istore          13
        //   208: aload           7
        //   210: iload           9
        //   212: iload           13
        //   214: invokespecial   android/graphics/Point.<init>:(II)V
        //   217: ldc_w           "migration_src_workspace_size"
        //   220: astore          14
        //   222: aload_2        
        //   223: aload           14
        //   225: aload           6
        //   227: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   232: astore          14
        //   234: aload           14
        //   236: invokestatic    com/android/launcher3/model/GridSizeMigrationTask.parsePoint:(Ljava/lang/String;)Landroid/graphics/Point;
        //   239: astore          14
        //   241: new             Lcom/android/launcher3/model/GridSizeMigrationTask$MultiStepMigrationTask;
        //   244: astore          16
        //   246: aload           16
        //   248: aload           12
        //   250: aload_0        
        //   251: invokespecial   com/android/launcher3/model/GridSizeMigrationTask$MultiStepMigrationTask.<init>:(Ljava/util/HashSet;Landroid/content/Context;)V
        //   254: aload           16
        //   256: aload           14
        //   258: aload           7
        //   260: invokevirtual   com/android/launcher3/model/GridSizeMigrationTask$MultiStepMigrationTask.migrate:(Landroid/graphics/Point;Landroid/graphics/Point;)Z
        //   263: istore          5
        //   265: iload           5
        //   267: ifeq            273
        //   270: iload_1        
        //   271: istore          4
        //   273: iload           4
        //   275: ifeq            476
        //   278: aload_0        
        //   279: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   282: astore          8
        //   284: getstatic       com/android/launcher3/LauncherSettings$Favorites.CONTENT_URI:Landroid/net/Uri;
        //   287: astore          7
        //   289: iconst_0       
        //   290: istore          9
        //   292: aconst_null    
        //   293: astore          14
        //   295: iconst_0       
        //   296: istore          17
        //   298: aconst_null    
        //   299: astore          12
        //   301: iconst_0       
        //   302: istore          13
        //   304: aconst_null    
        //   305: astore          16
        //   307: iconst_0       
        //   308: istore          15
        //   310: aload           8
        //   312: aload           7
        //   314: aconst_null    
        //   315: aconst_null    
        //   316: aconst_null    
        //   317: aconst_null    
        //   318: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   321: astore          8
        //   323: aload           8
        //   325: invokeinterface android/database/Cursor.moveToNext:()Z
        //   330: istore          5
        //   332: aload           8
        //   334: invokeinterface android/database/Cursor.close:()V
        //   339: iload           5
        //   341: ifne            476
        //   344: new             Ljava/lang/Exception;
        //   347: astore          8
        //   349: ldc_w           "Removed every thing during grid resize"
        //   352: astore          7
        //   354: aload           8
        //   356: aload           7
        //   358: invokespecial   java/lang/Exception.<init>:(Ljava/lang/String;)V
        //   361: aload           8
        //   363: athrow         
        //   364: astore          8
        //   366: ldc             "GridSizeMigrationTask"
        //   368: astore          7
        //   370: ldc_w           "Error during grid migration"
        //   373: astore          14
        //   375: aload           7
        //   377: aload           14
        //   379: aload           8
        //   381: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   384: pop            
        //   385: new             Ljava/lang/StringBuilder;
        //   388: astore          7
        //   390: aload           7
        //   392: invokespecial   java/lang/StringBuilder.<init>:()V
        //   395: aload           7
        //   397: ldc_w           "Workspace migration completed in "
        //   400: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   403: astore          7
        //   405: invokestatic    java/lang/System.currentTimeMillis:()J
        //   408: lload           10
        //   410: lsub           
        //   411: lstore          18
        //   413: aload           7
        //   415: lload           18
        //   417: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //   420: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   423: astore          7
        //   425: ldc             "GridSizeMigrationTask"
        //   427: aload           7
        //   429: invokestatic    android/util/Log.v:(Ljava/lang/String;Ljava/lang/String;)I
        //   432: pop            
        //   433: aload_2        
        //   434: invokeinterface android/content/SharedPreferences.edit:()Landroid/content/SharedPreferences$Editor;
        //   439: ldc_w           "migration_src_workspace_size"
        //   442: aload           6
        //   444: invokeinterface android/content/SharedPreferences$Editor.putString:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
        //   449: astore          8
        //   451: aload_3        
        //   452: getfield        com/android/launcher3/InvariantDeviceProfile.numHotseatIcons:I
        //   455: istore          9
        //   457: aload           8
        //   459: ldc_w           "migration_src_hotseat_count"
        //   462: iload           9
        //   464: invokeinterface android/content/SharedPreferences$Editor.putInt:(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
        //   469: invokeinterface android/content/SharedPreferences$Editor.apply:()V
        //   474: iconst_0       
        //   475: ireturn        
        //   476: new             Ljava/lang/StringBuilder;
        //   479: astore          7
        //   481: aload           7
        //   483: invokespecial   java/lang/StringBuilder.<init>:()V
        //   486: aload           7
        //   488: ldc_w           "Workspace migration completed in "
        //   491: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   494: astore          7
        //   496: invokestatic    java/lang/System.currentTimeMillis:()J
        //   499: lload           10
        //   501: lsub           
        //   502: lstore          18
        //   504: aload           7
        //   506: lload           18
        //   508: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //   511: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   514: astore          7
        //   516: ldc             "GridSizeMigrationTask"
        //   518: aload           7
        //   520: invokestatic    android/util/Log.v:(Ljava/lang/String;Ljava/lang/String;)I
        //   523: pop            
        //   524: aload_2        
        //   525: invokeinterface android/content/SharedPreferences.edit:()Landroid/content/SharedPreferences$Editor;
        //   530: ldc_w           "migration_src_workspace_size"
        //   533: aload           6
        //   535: invokeinterface android/content/SharedPreferences$Editor.putString:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
        //   540: astore          8
        //   542: aload_3        
        //   543: getfield        com/android/launcher3/InvariantDeviceProfile.numHotseatIcons:I
        //   546: istore          9
        //   548: aload           8
        //   550: ldc_w           "migration_src_hotseat_count"
        //   553: iload           9
        //   555: invokeinterface android/content/SharedPreferences$Editor.putInt:(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
        //   560: invokeinterface android/content/SharedPreferences$Editor.apply:()V
        //   565: iload_1        
        //   566: ireturn        
        //   567: astore          8
        //   569: new             Ljava/lang/StringBuilder;
        //   572: astore          14
        //   574: aload           14
        //   576: invokespecial   java/lang/StringBuilder.<init>:()V
        //   579: aload           14
        //   581: ldc_w           "Workspace migration completed in "
        //   584: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   587: astore          14
        //   589: invokestatic    java/lang/System.currentTimeMillis:()J
        //   592: lload           10
        //   594: lsub           
        //   595: lstore          20
        //   597: aload           14
        //   599: lload           20
        //   601: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //   604: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   607: astore          14
        //   609: ldc             "GridSizeMigrationTask"
        //   611: aload           14
        //   613: invokestatic    android/util/Log.v:(Ljava/lang/String;Ljava/lang/String;)I
        //   616: pop            
        //   617: aload_2        
        //   618: invokeinterface android/content/SharedPreferences.edit:()Landroid/content/SharedPreferences$Editor;
        //   623: ldc_w           "migration_src_workspace_size"
        //   626: aload           6
        //   628: invokeinterface android/content/SharedPreferences$Editor.putString:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
        //   633: astore          7
        //   635: aload_3        
        //   636: getfield        com/android/launcher3/InvariantDeviceProfile.numHotseatIcons:I
        //   639: istore          17
        //   641: aload           7
        //   643: ldc_w           "migration_src_hotseat_count"
        //   646: iload           17
        //   648: invokeinterface android/content/SharedPreferences$Editor.putInt:(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
        //   653: invokeinterface android/content/SharedPreferences$Editor.apply:()V
        //   658: aload           8
        //   660: athrow         
        //   661: iconst_0       
        //   662: istore          4
        //   664: aconst_null    
        //   665: astore          8
        //   667: goto            191
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  108    112    364    476    Ljava/lang/Exception;
        //  108    112    567    661    Any
        //  119    123    364    476    Ljava/lang/Exception;
        //  119    123    567    661    Any
        //  128    135    364    476    Ljava/lang/Exception;
        //  128    135    567    661    Any
        //  137    141    364    476    Ljava/lang/Exception;
        //  137    141    567    661    Any
        //  150    153    364    476    Ljava/lang/Exception;
        //  150    153    567    661    Any
        //  155    159    364    476    Ljava/lang/Exception;
        //  155    159    567    661    Any
        //  161    165    364    476    Ljava/lang/Exception;
        //  161    165    567    661    Any
        //  179    184    364    476    Ljava/lang/Exception;
        //  179    184    567    661    Any
        //  184    189    364    476    Ljava/lang/Exception;
        //  184    189    567    661    Any
        //  191    194    364    476    Ljava/lang/Exception;
        //  191    194    567    661    Any
        //  196    200    364    476    Ljava/lang/Exception;
        //  196    200    567    661    Any
        //  202    206    364    476    Ljava/lang/Exception;
        //  202    206    567    661    Any
        //  212    217    364    476    Ljava/lang/Exception;
        //  212    217    567    661    Any
        //  225    232    364    476    Ljava/lang/Exception;
        //  225    232    567    661    Any
        //  234    239    364    476    Ljava/lang/Exception;
        //  234    239    567    661    Any
        //  241    244    364    476    Ljava/lang/Exception;
        //  241    244    567    661    Any
        //  250    254    364    476    Ljava/lang/Exception;
        //  250    254    567    661    Any
        //  258    263    364    476    Ljava/lang/Exception;
        //  258    263    567    661    Any
        //  278    282    364    476    Ljava/lang/Exception;
        //  278    282    567    661    Any
        //  284    287    364    476    Ljava/lang/Exception;
        //  284    287    567    661    Any
        //  317    321    364    476    Ljava/lang/Exception;
        //  317    321    567    661    Any
        //  323    330    364    476    Ljava/lang/Exception;
        //  323    330    567    661    Any
        //  332    339    364    476    Ljava/lang/Exception;
        //  332    339    567    661    Any
        //  344    347    364    476    Ljava/lang/Exception;
        //  344    347    567    661    Any
        //  356    361    364    476    Ljava/lang/Exception;
        //  356    361    567    661    Any
        //  361    364    364    476    Ljava/lang/Exception;
        //  361    364    567    661    Any
        //  379    385    567    661    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0476:
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
    
    private static Point parsePoint(final String s) {
        final String[] split = s.split(",");
        return new Point(Integer.parseInt(split[0]), Integer.parseInt(split[1]));
    }
    
    public static LongArrayMap removeBrokenHotseatItems(final Context context) {
        final int n = -1 >>> 1;
        final GridSizeMigrationTask gridSizeMigrationTask = new GridSizeMigrationTask(context, LauncherAppState.getIDP(context), getValidPackages(context), n, n);
        final ArrayList loadHotseatEntries = gridSizeMigrationTask.loadHotseatEntries();
        gridSizeMigrationTask.applyOperations();
        final LongArrayMap longArrayMap = new LongArrayMap();
        for (final GridSizeMigrationTask$DbEntry gridSizeMigrationTask$DbEntry : loadHotseatEntries) {
            longArrayMap.put(gridSizeMigrationTask$DbEntry.screenId, (Object)gridSizeMigrationTask$DbEntry);
        }
        return longArrayMap;
    }
    
    private ArrayList tryRemove(int n, int n2, final int n3, final ArrayList list, final float[] array) {
        final int n4 = -1 >>> 1;
        final int n5 = 1;
        final GridOccupancy gridOccupancy = new GridOccupancy(this.mTrgX, this.mTrgY);
        gridOccupancy.markCells(0, 0, this.mTrgX, n3, n5 != 0);
        if (!this.mShouldRemoveX) {
            n = n4;
        }
        if (!this.mShouldRemoveY) {
            n2 = n4;
        }
        final ArrayList<GridSizeMigrationTask$DbEntry> list2 = new ArrayList<GridSizeMigrationTask$DbEntry>();
        final ArrayList<GridSizeMigrationTask$DbEntry> list3 = new ArrayList<GridSizeMigrationTask$DbEntry>();
        for (final GridSizeMigrationTask$DbEntry gridSizeMigrationTask$DbEntry : list) {
            if ((gridSizeMigrationTask$DbEntry.cellX > n || gridSizeMigrationTask$DbEntry.spanX + gridSizeMigrationTask$DbEntry.cellX <= n) && (gridSizeMigrationTask$DbEntry.cellY > n2 || gridSizeMigrationTask$DbEntry.spanY + gridSizeMigrationTask$DbEntry.cellY <= n2)) {
                if (gridSizeMigrationTask$DbEntry.cellX > n) {
                    --gridSizeMigrationTask$DbEntry.cellX;
                }
                if (gridSizeMigrationTask$DbEntry.cellY > n2) {
                    --gridSizeMigrationTask$DbEntry.cellY;
                }
                list2.add(gridSizeMigrationTask$DbEntry);
                gridOccupancy.markCells(gridSizeMigrationTask$DbEntry, n5 != 0);
            }
            else {
                list3.add(gridSizeMigrationTask$DbEntry);
                if (gridSizeMigrationTask$DbEntry.cellX >= n) {
                    --gridSizeMigrationTask$DbEntry.cellX;
                }
                if (gridSizeMigrationTask$DbEntry.cellY < n2) {
                    continue;
                }
                --gridSizeMigrationTask$DbEntry.cellY;
            }
        }
        final GridSizeMigrationTask$OptimalPlacementSolution gridSizeMigrationTask$OptimalPlacementSolution = new GridSizeMigrationTask$OptimalPlacementSolution(this, gridOccupancy, list3, n3);
        gridSizeMigrationTask$OptimalPlacementSolution.find();
        list2.addAll(gridSizeMigrationTask$OptimalPlacementSolution.finalPlacedItems);
        array[0] = gridSizeMigrationTask$OptimalPlacementSolution.lowestWeightLoss;
        array[n5] = gridSizeMigrationTask$OptimalPlacementSolution.lowestMoveCost;
        return list2;
    }
    
    private void verifyIntent(final String s) {
        final Intent uri = Intent.parseUri(s, 0);
        if (uri.getComponent() != null) {
            this.verifyPackage(uri.getComponent().getPackageName());
        }
        else if (uri.getPackage() != null) {
            this.verifyPackage(uri.getPackage());
        }
    }
    
    private void verifyPackage(final String s) {
        if (!this.mValidPackages.contains(s)) {
            throw new Exception("Package not available");
        }
    }
    
    protected ArrayList loadWorkspaceEntries(final long screenId) {
        final Cursor queryWorkspace = this.queryWorkspace(new String[] { "_id", "itemType", "cellX", "cellY", "spanX", "spanY", "intent", "appWidgetProvider", "appWidgetId" }, "container = -100 AND screen = " + screenId);
        final int columnIndexOrThrow = queryWorkspace.getColumnIndexOrThrow("_id");
        final int columnIndexOrThrow2 = queryWorkspace.getColumnIndexOrThrow("itemType");
        final int columnIndexOrThrow3 = queryWorkspace.getColumnIndexOrThrow("cellX");
        final int columnIndexOrThrow4 = queryWorkspace.getColumnIndexOrThrow("cellY");
        final int columnIndexOrThrow5 = queryWorkspace.getColumnIndexOrThrow("spanX");
        final int columnIndexOrThrow6 = queryWorkspace.getColumnIndexOrThrow("spanY");
        final int columnIndexOrThrow7 = queryWorkspace.getColumnIndexOrThrow("intent");
        final int columnIndexOrThrow8 = queryWorkspace.getColumnIndexOrThrow("appWidgetProvider");
        final int columnIndexOrThrow9 = queryWorkspace.getColumnIndexOrThrow("appWidgetId");
        final ArrayList<GridSizeMigrationTask$DbEntry> list = new ArrayList<GridSizeMigrationTask$DbEntry>();
    Label_0249:
        while (queryWorkspace.moveToNext()) {
        Label_0818_Outer:
            while (true) {
                final GridSizeMigrationTask$DbEntry gridSizeMigrationTask$DbEntry = new GridSizeMigrationTask$DbEntry();
                gridSizeMigrationTask$DbEntry.id = queryWorkspace.getLong(columnIndexOrThrow);
                gridSizeMigrationTask$DbEntry.itemType = queryWorkspace.getInt(columnIndexOrThrow2);
                gridSizeMigrationTask$DbEntry.cellX = queryWorkspace.getInt(columnIndexOrThrow3);
                gridSizeMigrationTask$DbEntry.cellY = queryWorkspace.getInt(columnIndexOrThrow4);
                gridSizeMigrationTask$DbEntry.spanX = queryWorkspace.getInt(columnIndexOrThrow5);
                gridSizeMigrationTask$DbEntry.spanY = queryWorkspace.getInt(columnIndexOrThrow6);
                gridSizeMigrationTask$DbEntry.screenId = screenId;
                while (true) {
                Label_1084:
                    while (true) {
                        Label_0998: {
                            LauncherAppWidgetProviderInfo launcherAppWidgetInfo = null;
                            InvariantDeviceProfile mIdp = null;
                            try {
                                switch (gridSizeMigrationTask$DbEntry.itemType) {
                                    default: {
                                        throw new Exception("Invalid item type");
                                    }
                                    case 0:
                                    case 1:
                                    case 6: {
                                        this.verifyIntent(queryWorkspace.getString(columnIndexOrThrow7));
                                        float weight;
                                        if (gridSizeMigrationTask$DbEntry.itemType == 0) {
                                            weight = 0.8f;
                                        }
                                        else {
                                            weight = 1.0f;
                                        }
                                        gridSizeMigrationTask$DbEntry.weight = weight;
                                        list.add(gridSizeMigrationTask$DbEntry);
                                        continue Label_0249;
                                    }
                                    case 4: {
                                        final String string = queryWorkspace.getString(columnIndexOrThrow8);
                                        try {
                                            final ComponentName unflattenFromString = ComponentName.unflattenFromString(string);
                                            try {
                                                this.verifyPackage(unflattenFromString.getPackageName());
                                                gridSizeMigrationTask$DbEntry.weight = Math.max(2.0f, gridSizeMigrationTask$DbEntry.spanX * 0.6f * gridSizeMigrationTask$DbEntry.spanY);
                                                final Cursor cursor = queryWorkspace;
                                                try {
                                                    final int int1 = cursor.getInt(columnIndexOrThrow9);
                                                    final Context mContext = this.mContext;
                                                    try {
                                                        launcherAppWidgetInfo = AppWidgetManagerCompat.getInstance(mContext).getLauncherAppWidgetInfo(int1);
                                                        if (launcherAppWidgetInfo == null) {
                                                            break Label_1084;
                                                        }
                                                        mIdp = this.mIdp;
                                                    }
                                                    catch (Exception ex) {}
                                                }
                                                catch (Exception ex2) {}
                                            }
                                            catch (Exception ex3) {}
                                        }
                                        catch (Exception ex4) {}
                                        break;
                                    }
                                    case 2: {
                                        break Label_0998;
                                    }
                                }
                            }
                            catch (Exception ex5) {}
                            final Point minSpans = launcherAppWidgetInfo.getMinSpans(mIdp, this.mContext);
                            if (minSpans != null) {
                                int minSpanX;
                                if (minSpans.x > 0) {
                                    minSpanX = minSpans.x;
                                }
                                else {
                                    minSpanX = gridSizeMigrationTask$DbEntry.spanX;
                                }
                                gridSizeMigrationTask$DbEntry.minSpanX = minSpanX;
                                int minSpanY;
                                if (minSpans.y > 0) {
                                    minSpanY = minSpans.y;
                                }
                                else {
                                    minSpanY = gridSizeMigrationTask$DbEntry.spanY;
                                }
                                gridSizeMigrationTask$DbEntry.minSpanY = minSpanY;
                            }
                            else {
                                gridSizeMigrationTask$DbEntry.minSpanY = 2;
                                gridSizeMigrationTask$DbEntry.minSpanX = 2;
                            }
                            if (gridSizeMigrationTask$DbEntry.minSpanX > this.mTrgX || gridSizeMigrationTask$DbEntry.minSpanY > this.mTrgY) {
                                break;
                            }
                            continue Label_0818_Outer;
                        }
                        final int folderItemsCount = this.getFolderItemsCount(gridSizeMigrationTask$DbEntry.id);
                        if (folderItemsCount == 0) {
                            throw new Exception("Folder is empty");
                        }
                        gridSizeMigrationTask$DbEntry.weight = folderItemsCount * 0.5f;
                        continue Label_0818_Outer;
                    }
                    final Point minSpans = null;
                    continue;
                }
            }
            throw new Exception("Widget can't be resized down to fit the grid");
        }
        queryWorkspace.close();
        return list;
    }
    
    protected boolean migrateHotseat() {
        final ArrayList loadHotseatEntries = this.loadHotseatEntries();
        while (loadHotseatEntries.size() > this.mDestHotseatSize) {
            final GridSizeMigrationTask$DbEntry gridSizeMigrationTask$DbEntry = loadHotseatEntries.get(loadHotseatEntries.size() / 2);
            final Iterator<GridSizeMigrationTask$DbEntry> iterator = (Iterator<GridSizeMigrationTask$DbEntry>)loadHotseatEntries.iterator();
            GridSizeMigrationTask$DbEntry gridSizeMigrationTask$DbEntry2 = gridSizeMigrationTask$DbEntry;
            while (iterator.hasNext()) {
                GridSizeMigrationTask$DbEntry gridSizeMigrationTask$DbEntry3 = iterator.next();
                if (gridSizeMigrationTask$DbEntry3.weight >= gridSizeMigrationTask$DbEntry2.weight) {
                    gridSizeMigrationTask$DbEntry3 = gridSizeMigrationTask$DbEntry2;
                }
                gridSizeMigrationTask$DbEntry2 = gridSizeMigrationTask$DbEntry3;
            }
            this.mEntryToRemove.add(gridSizeMigrationTask$DbEntry2.id);
            loadHotseatEntries.remove(gridSizeMigrationTask$DbEntry2);
        }
        final Iterator<GridSizeMigrationTask$DbEntry> iterator2 = (Iterator<GridSizeMigrationTask$DbEntry>)loadHotseatEntries.iterator();
        int cellX = 0;
        while (iterator2.hasNext()) {
            final GridSizeMigrationTask$DbEntry gridSizeMigrationTask$DbEntry4 = iterator2.next();
            if (gridSizeMigrationTask$DbEntry4.screenId != cellX) {
                gridSizeMigrationTask$DbEntry4.screenId = cellX;
                gridSizeMigrationTask$DbEntry4.cellX = cellX;
                gridSizeMigrationTask$DbEntry4.cellY = 0;
                this.update(gridSizeMigrationTask$DbEntry4);
            }
            ++cellX;
        }
        return this.applyOperations();
    }
    
    protected void migrateScreen(final long screenId) {
        int n;
        if (screenId == 0L) {
            n = 1;
        }
        else {
            n = 0;
        }
        final ArrayList loadWorkspaceEntries = this.loadWorkspaceEntries(screenId);
        int n2 = -1 >>> 1;
        int n3 = -1 >>> 1;
        float n4 = Float.MAX_VALUE;
        float n5 = Float.MAX_VALUE;
        final float[] array = new float[2];
        Iterable<Object> iterable = null;
        int i = 0;
    Label_0334:
        while (true) {
            while (i < this.mSrcX) {
                final int n6 = this.mSrcY - 1;
                float n7 = n5;
                float n8 = n4;
                int j = n6;
                Object o = iterable;
                final int n9 = n3;
                int n10 = n2;
                int n11 = n9;
                Object o2;
                while (true) {
                    while (j >= n) {
                        final ArrayList tryRemove = this.tryRemove(i, j, n, deepCopy(loadWorkspaceEntries), array);
                        float n16;
                        float n17;
                        int n18;
                        if (array[0] < n8 || (array[0] == n8 && array[1] < n7)) {
                            final float n12 = array[0];
                            final float n13 = array[1];
                            int n14;
                            if (this.mShouldRemoveX) {
                                n14 = i;
                            }
                            else {
                                n14 = n10;
                            }
                            int n15;
                            if (this.mShouldRemoveY) {
                                n15 = j;
                            }
                            else {
                                n15 = n11;
                            }
                            n16 = n12;
                            n11 = n15;
                            n17 = n13;
                            n18 = n14;
                            iterable = (Iterable<Object>)tryRemove;
                        }
                        else {
                            iterable = (Iterable<Object>)o;
                            n17 = n7;
                            n18 = n10;
                            n16 = n8;
                        }
                        if (!this.mShouldRemoveY) {
                            n5 = n17;
                            n4 = n16;
                            n3 = n11;
                            n2 = n18;
                            if (!this.mShouldRemoveX) {
                                o2 = iterable;
                                break Label_0334;
                            }
                            ++i;
                            continue Label_0334;
                        }
                        else {
                            --j;
                            n7 = n17;
                            n8 = n16;
                            n10 = n18;
                            o = iterable;
                        }
                    }
                    iterable = (Iterable<Object>)o;
                    n5 = n7;
                    n4 = n8;
                    final int n19 = n11;
                    n2 = n10;
                    n3 = n19;
                    continue;
                }
                Log.d("GridSizeMigrationTask", String.format("Removing row %d, column %d on screen %d", n3, n2, screenId));
                final LongArrayMap longArrayMap = new LongArrayMap();
                for (final GridSizeMigrationTask$DbEntry gridSizeMigrationTask$DbEntry : deepCopy(loadWorkspaceEntries)) {
                    longArrayMap.put(gridSizeMigrationTask$DbEntry.id, (Object)gridSizeMigrationTask$DbEntry);
                }
                for (final GridSizeMigrationTask$DbEntry gridSizeMigrationTask$DbEntry2 : o2) {
                    final GridSizeMigrationTask$DbEntry gridSizeMigrationTask$DbEntry3 = (GridSizeMigrationTask$DbEntry)longArrayMap.get(gridSizeMigrationTask$DbEntry2.id);
                    longArrayMap.remove(gridSizeMigrationTask$DbEntry2.id);
                    if (!gridSizeMigrationTask$DbEntry2.columnsSame(gridSizeMigrationTask$DbEntry3)) {
                        this.update(gridSizeMigrationTask$DbEntry2);
                    }
                }
                final Iterator<GridSizeMigrationTask$DbEntry> iterator3 = longArrayMap.iterator();
                while (iterator3.hasNext()) {
                    this.mCarryOver.add(iterator3.next());
                }
                if (!this.mCarryOver.isEmpty() && n4 == 0.0f) {
                    final GridOccupancy gridOccupancy = new GridOccupancy(this.mTrgX, this.mTrgY);
                    gridOccupancy.markCells(0, 0, this.mTrgX, n, true);
                    final Iterator<GridSizeMigrationTask$DbEntry> iterator4 = ((Iterable<GridSizeMigrationTask$DbEntry>)o2).iterator();
                    while (iterator4.hasNext()) {
                        gridOccupancy.markCells(iterator4.next(), true);
                    }
                    final GridSizeMigrationTask$OptimalPlacementSolution gridSizeMigrationTask$OptimalPlacementSolution = new GridSizeMigrationTask$OptimalPlacementSolution(this, gridOccupancy, deepCopy(this.mCarryOver), n, true);
                    gridSizeMigrationTask$OptimalPlacementSolution.find();
                    if (gridSizeMigrationTask$OptimalPlacementSolution.lowestWeightLoss == 0.0f) {
                        for (final GridSizeMigrationTask$DbEntry gridSizeMigrationTask$DbEntry4 : gridSizeMigrationTask$OptimalPlacementSolution.finalPlacedItems) {
                            gridSizeMigrationTask$DbEntry4.screenId = screenId;
                            this.update(gridSizeMigrationTask$DbEntry4);
                        }
                        this.mCarryOver.clear();
                    }
                }
                return;
            }
            Object o2 = iterable;
            continue Label_0334;
        }
    }
    
    protected boolean migrateWorkspace() {
        int i = 0;
        final ArrayList loadWorkspaceScreensDb = LauncherModel.loadWorkspaceScreensDb(this.mContext);
        if (loadWorkspaceScreensDb.isEmpty()) {
            throw new Exception("Unable to get workspace screens");
        }
        for (final long longValue : loadWorkspaceScreensDb) {
            Log.d("GridSizeMigrationTask", "Migrating " + longValue);
            this.migrateScreen(longValue);
        }
        if (!this.mCarryOver.isEmpty()) {
            final LongArrayMap longArrayMap = new LongArrayMap();
            for (final GridSizeMigrationTask$DbEntry gridSizeMigrationTask$DbEntry : this.mCarryOver) {
                longArrayMap.put(gridSizeMigrationTask$DbEntry.id, (Object)gridSizeMigrationTask$DbEntry);
            }
            while (true) {
                final GridSizeMigrationTask$OptimalPlacementSolution gridSizeMigrationTask$OptimalPlacementSolution = new GridSizeMigrationTask$OptimalPlacementSolution(this, new GridOccupancy(this.mTrgX, this.mTrgY), deepCopy(this.mCarryOver), 0, true);
                gridSizeMigrationTask$OptimalPlacementSolution.find();
                if (gridSizeMigrationTask$OptimalPlacementSolution.finalPlacedItems.size() <= 0) {
                    throw new Exception("None of the items can be placed on an empty screen");
                }
                final long long1 = LauncherSettings$Settings.call(this.mContext.getContentResolver(), "generate_new_screen_id").getLong("value");
                loadWorkspaceScreensDb.add(long1);
                for (final GridSizeMigrationTask$DbEntry gridSizeMigrationTask$DbEntry2 : gridSizeMigrationTask$OptimalPlacementSolution.finalPlacedItems) {
                    if (!this.mCarryOver.remove(longArrayMap.get(gridSizeMigrationTask$DbEntry2.id))) {
                        throw new Exception("Unable to find matching items");
                    }
                    gridSizeMigrationTask$DbEntry2.screenId = long1;
                    this.update(gridSizeMigrationTask$DbEntry2);
                }
                if (!this.mCarryOver.isEmpty()) {
                    continue;
                }
                final Uri content_URI = LauncherSettings$WorkspaceScreens.CONTENT_URI;
                this.mUpdateOperations.add(ContentProviderOperation.newDelete(content_URI).build());
                while (i < loadWorkspaceScreensDb.size()) {
                    final ContentValues contentValues = new ContentValues();
                    contentValues.put("_id", (long)loadWorkspaceScreensDb.get(i));
                    contentValues.put("screenRank", i);
                    this.mUpdateOperations.add(ContentProviderOperation.newInsert(content_URI).withValues(contentValues).build());
                    ++i;
                }
                break;
            }
        }
        return this.applyOperations();
    }
    
    protected Cursor queryWorkspace(final String[] array, final String s) {
        return this.mContext.getContentResolver().query(LauncherSettings$Favorites.CONTENT_URI, array, s, (String[])null, (String)null, (CancellationSignal)null);
    }
    
    protected void update(final GridSizeMigrationTask$DbEntry gridSizeMigrationTask$DbEntry) {
        this.mTempValues.clear();
        gridSizeMigrationTask$DbEntry.addToContentValues(this.mTempValues);
        this.mUpdateOperations.add(ContentProviderOperation.newUpdate(LauncherSettings$Favorites.getContentUri(gridSizeMigrationTask$DbEntry.id)).withValues(this.mTempValues).build());
    }
}

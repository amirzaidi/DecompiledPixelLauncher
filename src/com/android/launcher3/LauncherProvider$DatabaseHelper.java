// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.database.SQLException;
import com.android.launcher3.provider.LauncherDbUtils$SQLiteTransaction;
import com.android.launcher3.util.ManagedProfileHeuristic;
import java.io.File;
import com.android.launcher3.model.DbDowngradeHelper;
import android.appwidget.AppWidgetHost;
import java.util.List;
import java.util.Collections;
import java.util.ArrayList;
import java.util.Iterator;
import android.os.UserHandle;
import android.os.Process;
import com.android.launcher3.compat.UserManagerCompat;
import android.content.ContentValues;
import android.database.Cursor;
import android.os.CancellationSignal;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase$CursorFactory;
import com.android.launcher3.util.NoLocaleSqliteContext;
import android.util.Log;
import android.os.Handler;
import android.content.Context;
import android.database.sqlite.SQLiteOpenHelper;

public class LauncherProvider$DatabaseHelper extends SQLiteOpenHelper implements AutoInstallsLayout$LayoutParserCallback
{
    private final Context mContext;
    private long mMaxItemId;
    private long mMaxScreenId;
    private final Handler mWidgetHostResetHandler;
    
    LauncherProvider$DatabaseHelper(final Context context, final Handler handler) {
        final boolean b = true;
        this(context, handler, "launcher.db");
        if (!this.tableExists("favorites") || (this.tableExists("workspaceScreens") ^ true)) {
            Log.e("LauncherProvider", "Tables are missing after onCreate has been called. Trying to recreate");
            this.addFavoritesTable(this.getWritableDatabase(), b);
            this.addWorkspacesTable(this.getWritableDatabase(), b);
        }
        this.initIds();
    }
    
    public LauncherProvider$DatabaseHelper(final Context mContext, final Handler mWidgetHostResetHandler, final String s) {
        final long n = -1;
        super((Context)new NoLocaleSqliteContext(mContext), s, (SQLiteDatabase$CursorFactory)null, 27);
        this.mMaxItemId = n;
        this.mMaxScreenId = n;
        this.mContext = mContext;
        this.mWidgetHostResetHandler = mWidgetHostResetHandler;
    }
    
    private void addFavoritesTable(final SQLiteDatabase sqLiteDatabase, final boolean b) {
        LauncherSettings$Favorites.addTableToDb(sqLiteDatabase, this.getDefaultUserSerial(), b);
    }
    
    private boolean addIntegerColumn(final SQLiteDatabase p0, final String p1, final long p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore          5
        //     3: new             Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
        //     6: astore          6
        //     8: aload           6
        //    10: aload_1        
        //    11: invokespecial   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.<init>:(Landroid/database/sqlite/SQLiteDatabase;)V
        //    14: new             Ljava/lang/StringBuilder;
        //    17: astore          7
        //    19: aload           7
        //    21: invokespecial   java/lang/StringBuilder.<init>:()V
        //    24: ldc             "ALTER TABLE favorites ADD COLUMN "
        //    26: astore          8
        //    28: aload           7
        //    30: aload           8
        //    32: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    35: astore          7
        //    37: aload           7
        //    39: aload_2        
        //    40: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    43: astore          7
        //    45: ldc             " INTEGER NOT NULL DEFAULT "
        //    47: astore          8
        //    49: aload           7
        //    51: aload           8
        //    53: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    56: astore          7
        //    58: aload           7
        //    60: lload_3        
        //    61: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //    64: astore          7
        //    66: ldc             ";"
        //    68: astore          8
        //    70: aload           7
        //    72: aload           8
        //    74: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    77: astore          7
        //    79: aload           7
        //    81: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    84: astore          7
        //    86: aload_1        
        //    87: aload           7
        //    89: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //    92: aload           6
        //    94: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.commit:()V
        //    97: aload           6
        //    99: ifnull          107
        //   102: aload           6
        //   104: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //   107: aload           5
        //   109: ifnull          211
        //   112: aload           5
        //   114: athrow         
        //   115: astore          7
        //   117: aload           7
        //   119: invokevirtual   android/database/SQLException.getMessage:()Ljava/lang/String;
        //   122: astore          5
        //   124: ldc             "LauncherProvider"
        //   126: aload           5
        //   128: aload           7
        //   130: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   133: pop            
        //   134: iconst_0       
        //   135: ireturn        
        //   136: astore          5
        //   138: goto            107
        //   141: astore          7
        //   143: aconst_null    
        //   144: astore          6
        //   146: aload           7
        //   148: athrow         
        //   149: astore          9
        //   151: aload           7
        //   153: astore          5
        //   155: aload           9
        //   157: astore          7
        //   159: aload           6
        //   161: ifnull          169
        //   164: aload           6
        //   166: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //   169: aload           5
        //   171: ifnull          208
        //   174: aload           5
        //   176: athrow         
        //   177: astore          6
        //   179: aload           5
        //   181: ifnonnull       191
        //   184: aload           6
        //   186: astore          5
        //   188: goto            169
        //   191: aload           5
        //   193: aload           6
        //   195: if_acmpeq       169
        //   198: aload           5
        //   200: aload           6
        //   202: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   205: goto            169
        //   208: aload           7
        //   210: athrow         
        //   211: iconst_1       
        //   212: ireturn        
        //   213: astore          7
        //   215: goto            146
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  3      6      141    146    Any
        //  10     14     141    146    Any
        //  14     17     213    218    Any
        //  19     24     213    218    Any
        //  30     35     213    218    Any
        //  39     43     213    218    Any
        //  51     56     213    218    Any
        //  60     64     213    218    Any
        //  72     77     213    218    Any
        //  79     84     213    218    Any
        //  87     92     213    218    Any
        //  92     97     213    218    Any
        //  102    107    136    141    Any
        //  112    115    115    136    Landroid/database/SQLException;
        //  146    149    149    211    Any
        //  164    169    177    208    Any
        //  174    177    115    136    Landroid/database/SQLException;
        //  200    205    115    136    Landroid/database/SQLException;
        //  208    211    115    136    Landroid/database/SQLException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0107:
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
    
    private boolean addProfileColumn(final SQLiteDatabase sqLiteDatabase) {
        return this.addIntegerColumn(sqLiteDatabase, "profileId", this.getDefaultUserSerial());
    }
    
    private void addWorkspacesTable(final SQLiteDatabase sqLiteDatabase, final boolean b) {
        String s;
        if (b) {
            s = " IF NOT EXISTS ";
        }
        else {
            s = "";
        }
        sqLiteDatabase.execSQL("CREATE TABLE " + s + "workspaceScreens" + " (" + "_id" + " INTEGER PRIMARY KEY," + "screenRank" + " INTEGER," + "modified" + " INTEGER NOT NULL DEFAULT 0" + ");");
    }
    
    private long initializeMaxItemId(final SQLiteDatabase sqLiteDatabase) {
        return LauncherProvider.getMaxId(sqLiteDatabase, "favorites");
    }
    
    private long initializeMaxScreenId(final SQLiteDatabase sqLiteDatabase) {
        return LauncherProvider.getMaxId(sqLiteDatabase, "workspaceScreens");
    }
    
    private void removeOrphanedItems(final SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("DELETE FROM favorites WHERE screen NOT IN (SELECT _id FROM workspaceScreens) AND container = -100");
        sqLiteDatabase.execSQL("DELETE FROM favorites WHERE container <> -100 AND container <> -101 AND container NOT IN (SELECT _id FROM favorites WHERE itemType = 2)");
    }
    
    private boolean tableExists(final String s) {
        int n = 1;
        final SQLiteDatabase readableDatabase = this.getReadableDatabase();
        final String s2 = "sqlite_master";
        final String[] array = new String[n];
        array[0] = "tbl_name";
        final String s3 = "tbl_name = ?";
        final String[] array2 = new String[n];
        array2[0] = s;
        final Cursor query = readableDatabase.query((boolean)(n != 0), s2, array, s3, array2, (String)null, (String)null, (String)null, (String)null, (CancellationSignal)null);
        try {
            if (query.getCount() <= 0) {
                n = 0;
            }
            return n != 0;
        }
        finally {
            query.close();
        }
    }
    
    public void checkId(final String s, final ContentValues contentValues) {
        final long longValue = contentValues.getAsLong("_id");
        if ("workspaceScreens".equals(s)) {
            this.mMaxScreenId = Math.max(longValue, this.mMaxScreenId);
        }
        else {
            this.mMaxItemId = Math.max(longValue, this.mMaxItemId);
        }
    }
    
    void convertShortcutsToLauncherActivities(final SQLiteDatabase p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     1: astore_2       
        //     2: new             Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
        //     5: astore_3       
        //     6: aload_3        
        //     7: aload_1        
        //     8: invokespecial   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.<init>:(Landroid/database/sqlite/SQLiteDatabase;)V
        //    11: ldc             "favorites"
        //    13: astore          4
        //    15: iconst_2       
        //    16: istore          5
        //    18: iload           5
        //    20: anewarray       Ljava/lang/String;
        //    23: astore          6
        //    25: ldc             "_id"
        //    27: astore          7
        //    29: iconst_0       
        //    30: istore          8
        //    32: aconst_null    
        //    33: astore          9
        //    35: aload           6
        //    37: iconst_0       
        //    38: aload           7
        //    40: aastore        
        //    41: ldc             "intent"
        //    43: astore          7
        //    45: iconst_1       
        //    46: istore          8
        //    48: aload           6
        //    50: iload           8
        //    52: aload           7
        //    54: aastore        
        //    55: new             Ljava/lang/StringBuilder;
        //    58: astore          7
        //    60: aload           7
        //    62: invokespecial   java/lang/StringBuilder.<init>:()V
        //    65: ldc             "itemType=1 AND profileId="
        //    67: astore          9
        //    69: aload           7
        //    71: aload           9
        //    73: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    76: astore          7
        //    78: aload_0        
        //    79: invokevirtual   com/android/launcher3/LauncherProvider$DatabaseHelper.getDefaultUserSerial:()J
        //    82: lstore          10
        //    84: aload           7
        //    86: lload           10
        //    88: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //    91: astore          7
        //    93: aload           7
        //    95: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    98: astore          9
        //   100: iconst_0       
        //   101: istore          12
        //   103: aconst_null    
        //   104: astore          13
        //   106: aconst_null    
        //   107: astore          14
        //   109: iconst_0       
        //   110: istore          15
        //   112: aconst_null    
        //   113: astore          16
        //   115: aload_1        
        //   116: astore          7
        //   118: aload_1        
        //   119: aload           4
        //   121: aload           6
        //   123: aload           9
        //   125: aconst_null    
        //   126: aconst_null    
        //   127: aconst_null    
        //   128: aconst_null    
        //   129: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   132: astore          6
        //   134: ldc             "UPDATE favorites SET itemType=0 WHERE _id=?"
        //   136: astore          7
        //   138: aload_1        
        //   139: aload           7
        //   141: invokevirtual   android/database/sqlite/SQLiteDatabase.compileStatement:(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
        //   144: astore          4
        //   146: ldc             "_id"
        //   148: astore          7
        //   150: aload           6
        //   152: aload           7
        //   154: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //   159: istore          5
        //   161: ldc             "intent"
        //   163: astore          9
        //   165: aload           6
        //   167: aload           9
        //   169: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //   174: istore          8
        //   176: aload           6
        //   178: invokeinterface android/database/Cursor.moveToNext:()Z
        //   183: istore          12
        //   185: iload           12
        //   187: ifeq            376
        //   190: aload           6
        //   192: iload           8
        //   194: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   199: astore          13
        //   201: aconst_null    
        //   202: astore          14
        //   204: aload           13
        //   206: iconst_0       
        //   207: invokestatic    android/content/Intent.parseUri:(Ljava/lang/String;I)Landroid/content/Intent;
        //   210: astore          13
        //   212: aload           13
        //   214: invokestatic    com/android/launcher3/Utilities.isLauncherAppTarget:(Landroid/content/Intent;)Z
        //   217: istore          12
        //   219: iload           12
        //   221: ifeq            176
        //   224: aload           6
        //   226: iload           5
        //   228: invokeinterface android/database/Cursor.getLong:(I)J
        //   233: lstore          10
        //   235: iconst_1       
        //   236: istore          15
        //   238: aload           4
        //   240: iload           15
        //   242: lload           10
        //   244: invokevirtual   android/database/sqlite/SQLiteStatement.bindLong:(IJ)V
        //   247: aload           4
        //   249: invokevirtual   android/database/sqlite/SQLiteStatement.executeUpdateDelete:()I
        //   252: pop            
        //   253: goto            176
        //   256: astore          7
        //   258: aload           6
        //   260: astore_2       
        //   261: aload_3        
        //   262: astore          6
        //   264: aload           7
        //   266: athrow         
        //   267: astore          9
        //   269: aload           6
        //   271: astore_3       
        //   272: aload_2        
        //   273: astore          6
        //   275: aload           4
        //   277: astore_2       
        //   278: aload           7
        //   280: astore          4
        //   282: aload           9
        //   284: astore          7
        //   286: aload_2        
        //   287: ifnull          294
        //   290: aload_2        
        //   291: invokevirtual   android/database/sqlite/SQLiteStatement.close:()V
        //   294: aload           6
        //   296: ifnull          306
        //   299: aload           6
        //   301: invokeinterface android/database/Cursor.close:()V
        //   306: aload           4
        //   308: astore          6
        //   310: aload_3        
        //   311: ifnull          318
        //   314: aload_3        
        //   315: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //   318: aload           6
        //   320: astore          4
        //   322: aload           4
        //   324: ifnull          580
        //   327: aload           4
        //   329: athrow         
        //   330: astore          7
        //   332: ldc             "LauncherProvider"
        //   334: astore          4
        //   336: ldc_w           "Error deduping shortcuts"
        //   339: astore          6
        //   341: aload           4
        //   343: aload           6
        //   345: aload           7
        //   347: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   350: pop            
        //   351: return         
        //   352: astore          13
        //   354: ldc             "LauncherProvider"
        //   356: astore          14
        //   358: ldc_w           "Unable to parse intent"
        //   361: astore          16
        //   363: aload           14
        //   365: aload           16
        //   367: aload           13
        //   369: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   372: pop            
        //   373: goto            176
        //   376: aload_3        
        //   377: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.commit:()V
        //   380: aload           4
        //   382: ifnull          390
        //   385: aload           4
        //   387: invokevirtual   android/database/sqlite/SQLiteStatement.close:()V
        //   390: iconst_0       
        //   391: istore          5
        //   393: aconst_null    
        //   394: astore          7
        //   396: aload           6
        //   398: ifnull          408
        //   401: aload           6
        //   403: invokeinterface android/database/Cursor.close:()V
        //   408: aload           7
        //   410: astore          4
        //   412: aload_3        
        //   413: ifnull          420
        //   416: aload_3        
        //   417: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //   420: aload           4
        //   422: astore          7
        //   424: aload           7
        //   426: ifnull          351
        //   429: aload           7
        //   431: athrow         
        //   432: astore          7
        //   434: goto            396
        //   437: astore          4
        //   439: aload           7
        //   441: ifnull          412
        //   444: aload           7
        //   446: aload           4
        //   448: if_acmpeq       408
        //   451: aload           7
        //   453: aload           4
        //   455: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   458: aload           7
        //   460: astore          4
        //   462: goto            412
        //   465: astore          7
        //   467: aload           4
        //   469: ifnull          424
        //   472: aload           4
        //   474: aload           7
        //   476: if_acmpeq       420
        //   479: aload           4
        //   481: aload           7
        //   483: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   486: aload           4
        //   488: astore          7
        //   490: goto            424
        //   493: astore          9
        //   495: aload           4
        //   497: ifnonnull       507
        //   500: aload           9
        //   502: astore          4
        //   504: goto            294
        //   507: aload           4
        //   509: aload           9
        //   511: if_acmpeq       294
        //   514: aload           4
        //   516: aload           9
        //   518: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   521: goto            294
        //   524: astore          6
        //   526: aload           4
        //   528: ifnull          310
        //   531: aload           4
        //   533: aload           6
        //   535: if_acmpeq       306
        //   538: aload           4
        //   540: aload           6
        //   542: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   545: aload           4
        //   547: astore          6
        //   549: goto            310
        //   552: astore          4
        //   554: aload           6
        //   556: ifnull          322
        //   559: aload           6
        //   561: aload           4
        //   563: if_acmpeq       318
        //   566: aload           6
        //   568: aload           4
        //   570: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   573: aload           6
        //   575: astore          4
        //   577: goto            322
        //   580: aload           7
        //   582: athrow         
        //   583: astore          7
        //   585: aconst_null    
        //   586: astore          4
        //   588: aconst_null    
        //   589: astore          6
        //   591: goto            264
        //   594: astore          7
        //   596: aconst_null    
        //   597: astore          4
        //   599: aload_3        
        //   600: astore          6
        //   602: goto            264
        //   605: astore          7
        //   607: aconst_null    
        //   608: astore          4
        //   610: aload           6
        //   612: astore_2       
        //   613: aload_3        
        //   614: astore          6
        //   616: goto            264
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  2      5      583    594    Any
        //  7      11     583    594    Any
        //  18     23     594    605    Any
        //  38     41     594    605    Any
        //  52     55     594    605    Any
        //  55     58     594    605    Any
        //  60     65     594    605    Any
        //  71     76     594    605    Any
        //  78     82     594    605    Any
        //  86     91     594    605    Any
        //  93     98     594    605    Any
        //  128    132    594    605    Any
        //  139    144    605    619    Any
        //  152    159    256    264    Any
        //  167    174    256    264    Any
        //  176    183    256    264    Any
        //  192    199    256    264    Any
        //  206    210    352    376    Ljava/net/URISyntaxException;
        //  206    210    256    264    Any
        //  212    217    256    264    Any
        //  226    233    256    264    Any
        //  242    247    256    264    Any
        //  247    253    256    264    Any
        //  264    267    267    583    Any
        //  290    294    493    524    Any
        //  299    306    524    552    Any
        //  314    318    552    580    Any
        //  327    330    330    351    Landroid/database/SQLException;
        //  367    373    256    264    Any
        //  376    380    256    264    Any
        //  385    390    432    437    Any
        //  401    408    437    465    Any
        //  416    420    465    493    Any
        //  429    432    330    351    Landroid/database/SQLException;
        //  453    458    330    351    Landroid/database/SQLException;
        //  481    486    330    351    Landroid/database/SQLException;
        //  516    521    330    351    Landroid/database/SQLException;
        //  540    545    330    351    Landroid/database/SQLException;
        //  568    573    330    351    Landroid/database/SQLException;
        //  580    583    330    351    Landroid/database/SQLException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 297, Size: 297
        //     at java.util.ArrayList.rangeCheck(Unknown Source)
        //     at java.util.ArrayList.get(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3303)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3417)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3417)
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
    
    public void createEmptyDB(final SQLiteDatabase p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_2       
        //     2: new             Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
        //     5: astore_3       
        //     6: aload_3        
        //     7: aload_1        
        //     8: invokespecial   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.<init>:(Landroid/database/sqlite/SQLiteDatabase;)V
        //    11: ldc_w           "DROP TABLE IF EXISTS favorites"
        //    14: astore          4
        //    16: aload_1        
        //    17: aload           4
        //    19: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //    22: ldc_w           "DROP TABLE IF EXISTS workspaceScreens"
        //    25: astore          4
        //    27: aload_1        
        //    28: aload           4
        //    30: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //    33: aload_0        
        //    34: aload_1        
        //    35: invokevirtual   com/android/launcher3/LauncherProvider$DatabaseHelper.onCreate:(Landroid/database/sqlite/SQLiteDatabase;)V
        //    38: aload_3        
        //    39: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.commit:()V
        //    42: aload_3        
        //    43: ifnull          50
        //    46: aload_3        
        //    47: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //    50: aload_2        
        //    51: ifnull          116
        //    54: aload_2        
        //    55: athrow         
        //    56: astore_2       
        //    57: goto            50
        //    60: astore          4
        //    62: aconst_null    
        //    63: astore_3       
        //    64: aload           4
        //    66: athrow         
        //    67: astore          5
        //    69: aload           4
        //    71: astore_2       
        //    72: aload           5
        //    74: astore          4
        //    76: aload_3        
        //    77: ifnull          84
        //    80: aload_3        
        //    81: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //    84: aload_2        
        //    85: ifnull          113
        //    88: aload_2        
        //    89: athrow         
        //    90: astore_3       
        //    91: aload_2        
        //    92: ifnonnull       100
        //    95: aload_3        
        //    96: astore_2       
        //    97: goto            84
        //   100: aload_2        
        //   101: aload_3        
        //   102: if_acmpeq       84
        //   105: aload_2        
        //   106: aload_3        
        //   107: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   110: goto            84
        //   113: aload           4
        //   115: athrow         
        //   116: return         
        //   117: astore          4
        //   119: goto            64
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  2      5      60     67     Any
        //  7      11     60     67     Any
        //  17     22     117    67     Any
        //  28     33     117    67     Any
        //  34     38     117    67     Any
        //  38     42     117    67     Any
        //  46     50     56     60     Any
        //  64     67     67     116    Any
        //  80     84     90     113    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.OutOfMemoryError: Java heap space
        //     at java.util.Arrays.copyOf(Unknown Source)
        //     at java.util.ArrayList.grow(Unknown Source)
        //     at java.util.ArrayList.ensureExplicitCapacity(Unknown Source)
        //     at java.util.ArrayList.ensureCapacityInternal(Unknown Source)
        //     at java.util.ArrayList.add(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder$FinallyInlining.collectNodes(AstBuilder.java:4624)
        //     at com.strobel.decompiler.ast.AstBuilder$FinallyInlining.processFinally(AstBuilder.java:4354)
        //     at com.strobel.decompiler.ast.AstBuilder$FinallyInlining.runCore(AstBuilder.java:4317)
        //     at com.strobel.decompiler.ast.AstBuilder$FinallyInlining.run(AstBuilder.java:4277)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:100)
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
    
    public long generateNewItemId() {
        if (this.mMaxItemId < 0L) {
            throw new RuntimeException("Error: max item id was not initialized");
        }
        return ++this.mMaxItemId;
    }
    
    public long generateNewScreenId() {
        if (this.mMaxScreenId < 0L) {
            throw new RuntimeException("Error: max screen id was not initialized");
        }
        return ++this.mMaxScreenId;
    }
    
    public long getDefaultUserSerial() {
        return UserManagerCompat.getInstance(this.mContext).getSerialNumberForUser(Process.myUserHandle());
    }
    
    protected void handleOneTimeDataUpgrade(final SQLiteDatabase sqLiteDatabase) {
        final UserManagerCompat instance = UserManagerCompat.getInstance(this.mContext);
        final Iterator iterator = instance.getUserProfiles().iterator();
        while (iterator.hasNext()) {
            sqLiteDatabase.execSQL("update favorites set intent = replace(intent, ';l.profile=" + instance.getSerialNumberForUser(iterator.next()) + ";', ';') where itemType = 0;");
        }
    }
    
    protected void initIds() {
        final long n = -1;
        if (this.mMaxItemId == n) {
            this.mMaxItemId = this.initializeMaxItemId(this.getWritableDatabase());
        }
        if (this.mMaxScreenId == n) {
            this.mMaxScreenId = this.initializeMaxScreenId(this.getWritableDatabase());
        }
    }
    
    public long insertAndCheck(final SQLiteDatabase sqLiteDatabase, final ContentValues contentValues) {
        return LauncherProvider.dbInsertAndCheck(this, sqLiteDatabase, "favorites", null, contentValues);
    }
    
    int loadFavorites(final SQLiteDatabase sqLiteDatabase, final AutoInstallsLayout autoInstallsLayout) {
        final ArrayList<Object> list = new ArrayList<Object>();
        final int loadLayout = autoInstallsLayout.loadLayout(sqLiteDatabase, list);
        Collections.sort((List<Comparable>)list);
        final ContentValues contentValues = new ContentValues();
        final Iterator<Long> iterator = list.iterator();
        int n = 0;
        while (iterator.hasNext()) {
            final Long n2 = iterator.next();
            contentValues.clear();
            contentValues.put("_id", n2);
            contentValues.put("screenRank", n);
            if (LauncherProvider.dbInsertAndCheck(this, sqLiteDatabase, "workspaceScreens", null, contentValues) < 0L) {
                throw new RuntimeException("Failed initialize screen tablefrom default layout");
            }
            ++n;
        }
        this.mMaxItemId = this.initializeMaxItemId(sqLiteDatabase);
        this.mMaxScreenId = this.initializeMaxScreenId(sqLiteDatabase);
        return loadLayout;
    }
    
    public AppWidgetHost newLauncherWidgetHost() {
        return new AppWidgetHost(this.mContext, 1024);
    }
    
    public void onCreate(final SQLiteDatabase sqLiteDatabase) {
        this.mMaxItemId = 1L;
        this.mMaxScreenId = 0L;
        this.addFavoritesTable(sqLiteDatabase, false);
        this.addWorkspacesTable(sqLiteDatabase, false);
        this.mMaxItemId = this.initializeMaxItemId(sqLiteDatabase);
        this.onEmptyDbCreated();
    }
    
    public void onDowngrade(final SQLiteDatabase sqLiteDatabase, final int n, final int n2) {
        try {
            final File fileStreamPath = this.mContext.getFileStreamPath("downgrade_schema.json");
            try {
                DbDowngradeHelper.parse(fileStreamPath).onDowngrade(sqLiteDatabase, n, n2);
            }
            catch (Exception ex) {
                Log.d("LauncherProvider", "Unable to downgrade from: " + n + " to " + n2 + ". Wiping databse.", (Throwable)ex);
                this.createEmptyDB(sqLiteDatabase);
            }
        }
        catch (Exception ex2) {}
    }
    
    protected void onEmptyDbCreated() {
        if (this.mWidgetHostResetHandler != null) {
            this.newLauncherWidgetHost().deleteHost();
            this.mWidgetHostResetHandler.sendEmptyMessage(3);
        }
        Utilities.getPrefs(this.mContext).edit().putBoolean("EMPTY_DATABASE_CREATED", true).commit();
        ManagedProfileHeuristic.processAllUsers(Collections.emptyList(), this.mContext);
    }
    
    public void onOpen(final SQLiteDatabase sqLiteDatabase) {
        super.onOpen(sqLiteDatabase);
        final File fileStreamPath = this.mContext.getFileStreamPath("downgrade_schema.json");
        if (!fileStreamPath.exists()) {
            this.handleOneTimeDataUpgrade(sqLiteDatabase);
        }
        DbDowngradeHelper.updateSchemaFile(fileStreamPath, 27, this.mContext, 2131296256);
    }
    
    public void onUpgrade(final SQLiteDatabase p0, final int p1, final int p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: lconst_0       
        //     1: lstore          4
        //     3: aconst_null    
        //     4: astore          6
        //     6: iload_2        
        //     7: tableswitch {
        //               24: 99
        //               25: 117
        //               26: 269
        //               27: 427
        //               28: 448
        //               29: 448
        //               30: 448
        //               31: 453
        //               32: 465
        //               33: 478
        //               34: 490
        //               35: 511
        //               36: 511
        //               37: 522
        //               38: 527
        //               39: 548
        //          default: 84
        //        }
        //    84: ldc             "LauncherProvider"
        //    86: ldc_w           "Destroying all old data."
        //    89: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //    92: pop            
        //    93: aload_0        
        //    94: aload_1        
        //    95: invokevirtual   com/android/launcher3/LauncherProvider$DatabaseHelper.createEmptyDB:(Landroid/database/sqlite/SQLiteDatabase;)V
        //    98: return         
        //    99: aload_0        
        //   100: lload           4
        //   102: putfield        com/android/launcher3/LauncherProvider$DatabaseHelper.mMaxScreenId:J
        //   105: iconst_0       
        //   106: istore          7
        //   108: aconst_null    
        //   109: astore          8
        //   111: aload_0        
        //   112: aload_1        
        //   113: iconst_0       
        //   114: invokespecial   com/android/launcher3/LauncherProvider$DatabaseHelper.addWorkspacesTable:(Landroid/database/sqlite/SQLiteDatabase;Z)V
        //   117: new             Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
        //   120: astore          9
        //   122: aload           9
        //   124: aload_1        
        //   125: invokespecial   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.<init>:(Landroid/database/sqlite/SQLiteDatabase;)V
        //   128: ldc_w           "ALTER TABLE favorites ADD COLUMN appWidgetProvider TEXT;"
        //   131: astore          8
        //   133: aload_1        
        //   134: aload           8
        //   136: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   139: aload           9
        //   141: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.commit:()V
        //   144: aload           9
        //   146: ifnull          154
        //   149: aload           9
        //   151: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //   154: iconst_0       
        //   155: istore          7
        //   157: aconst_null    
        //   158: astore          8
        //   160: aload           8
        //   162: ifnull          269
        //   165: aload           8
        //   167: athrow         
        //   168: astore          8
        //   170: ldc             "LauncherProvider"
        //   172: astore          9
        //   174: aload           8
        //   176: invokevirtual   android/database/SQLException.getMessage:()Ljava/lang/String;
        //   179: astore          6
        //   181: aload           9
        //   183: aload           6
        //   185: aload           8
        //   187: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   190: pop            
        //   191: goto            84
        //   194: astore          8
        //   196: goto            160
        //   199: astore          8
        //   201: aconst_null    
        //   202: astore          9
        //   204: aload           8
        //   206: athrow         
        //   207: astore          10
        //   209: aload           8
        //   211: astore          6
        //   213: aload           10
        //   215: astore          8
        //   217: aload           9
        //   219: ifnull          227
        //   222: aload           9
        //   224: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //   227: aload           6
        //   229: ifnull          266
        //   232: aload           6
        //   234: athrow         
        //   235: astore          9
        //   237: aload           6
        //   239: ifnonnull       249
        //   242: aload           9
        //   244: astore          6
        //   246: goto            227
        //   249: aload           6
        //   251: aload           9
        //   253: if_acmpeq       227
        //   256: aload           6
        //   258: aload           9
        //   260: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   263: goto            227
        //   266: aload           8
        //   268: athrow         
        //   269: new             Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
        //   272: astore          9
        //   274: aload           9
        //   276: aload_1        
        //   277: invokespecial   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.<init>:(Landroid/database/sqlite/SQLiteDatabase;)V
        //   280: ldc_w           "ALTER TABLE favorites ADD COLUMN modified INTEGER NOT NULL DEFAULT 0;"
        //   283: astore          8
        //   285: aload_1        
        //   286: aload           8
        //   288: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   291: ldc_w           "ALTER TABLE workspaceScreens ADD COLUMN modified INTEGER NOT NULL DEFAULT 0;"
        //   294: astore          8
        //   296: aload_1        
        //   297: aload           8
        //   299: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   302: aload           9
        //   304: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.commit:()V
        //   307: aload           9
        //   309: ifnull          317
        //   312: aload           9
        //   314: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //   317: aload           6
        //   319: ifnull          427
        //   322: aload           6
        //   324: athrow         
        //   325: astore          8
        //   327: ldc             "LauncherProvider"
        //   329: astore          9
        //   331: aload           8
        //   333: invokevirtual   android/database/SQLException.getMessage:()Ljava/lang/String;
        //   336: astore          6
        //   338: aload           9
        //   340: aload           6
        //   342: aload           8
        //   344: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   347: pop            
        //   348: goto            84
        //   351: astore          6
        //   353: goto            317
        //   356: astore          8
        //   358: aload           8
        //   360: athrow         
        //   361: astore          10
        //   363: aload           6
        //   365: astore          9
        //   367: aload           8
        //   369: astore          6
        //   371: aload           10
        //   373: astore          8
        //   375: aload           9
        //   377: ifnull          385
        //   380: aload           9
        //   382: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //   385: aload           6
        //   387: ifnull          424
        //   390: aload           6
        //   392: athrow         
        //   393: astore          9
        //   395: aload           6
        //   397: ifnonnull       407
        //   400: aload           9
        //   402: astore          6
        //   404: goto            385
        //   407: aload           6
        //   409: aload           9
        //   411: if_acmpeq       385
        //   414: aload           6
        //   416: aload           9
        //   418: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   421: goto            385
        //   424: aload           8
        //   426: athrow         
        //   427: ldc_w           "restored"
        //   430: astore          8
        //   432: aload_0        
        //   433: aload_1        
        //   434: aload           8
        //   436: lload           4
        //   438: invokespecial   com/android/launcher3/LauncherProvider$DatabaseHelper.addIntegerColumn:(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z
        //   441: istore          7
        //   443: iload           7
        //   445: ifeq            84
        //   448: aload_0        
        //   449: aload_1        
        //   450: invokespecial   com/android/launcher3/LauncherProvider$DatabaseHelper.removeOrphanedItems:(Landroid/database/sqlite/SQLiteDatabase;)V
        //   453: aload_0        
        //   454: aload_1        
        //   455: invokespecial   com/android/launcher3/LauncherProvider$DatabaseHelper.addProfileColumn:(Landroid/database/sqlite/SQLiteDatabase;)Z
        //   458: istore          7
        //   460: iload           7
        //   462: ifeq            84
        //   465: aload_0        
        //   466: aload_1        
        //   467: iconst_1       
        //   468: invokevirtual   com/android/launcher3/LauncherProvider$DatabaseHelper.updateFolderItemsRank:(Landroid/database/sqlite/SQLiteDatabase;Z)Z
        //   471: istore          7
        //   473: iload           7
        //   475: ifeq            84
        //   478: aload_0        
        //   479: aload_1        
        //   480: invokevirtual   com/android/launcher3/LauncherProvider$DatabaseHelper.recreateWorkspaceTable:(Landroid/database/sqlite/SQLiteDatabase;)Z
        //   483: istore          7
        //   485: iload           7
        //   487: ifeq            84
        //   490: ldc_w           "options"
        //   493: astore          8
        //   495: aload_0        
        //   496: aload_1        
        //   497: aload           8
        //   499: lload           4
        //   501: invokespecial   com/android/launcher3/LauncherProvider$DatabaseHelper.addIntegerColumn:(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z
        //   504: istore          7
        //   506: iload           7
        //   508: ifeq            84
        //   511: aload_0        
        //   512: getfield        com/android/launcher3/LauncherProvider$DatabaseHelper.mContext:Landroid/content/Context;
        //   515: astore          8
        //   517: aload           8
        //   519: invokestatic    com/android/launcher3/util/ManagedProfileHeuristic.markExistingUsersForNoFolderCreation:(Landroid/content/Context;)V
        //   522: aload_0        
        //   523: aload_1        
        //   524: invokevirtual   com/android/launcher3/LauncherProvider$DatabaseHelper.convertShortcutsToLauncherActivities:(Landroid/database/sqlite/SQLiteDatabase;)V
        //   527: aload_0        
        //   528: getfield        com/android/launcher3/LauncherProvider$DatabaseHelper.mContext:Landroid/content/Context;
        //   531: astore          8
        //   533: aload           8
        //   535: aload_1        
        //   536: invokestatic    com/android/launcher3/provider/LauncherDbUtils.prepareScreenZeroToHostQsb:(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Z
        //   539: iconst_1       
        //   540: ixor           
        //   541: istore          7
        //   543: iload           7
        //   545: ifne            84
        //   548: return         
        //   549: astore          8
        //   551: aload           9
        //   553: astore          6
        //   555: goto            358
        //   558: astore          8
        //   560: goto            204
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  117    120    199    204    Any
        //  124    128    199    204    Any
        //  134    139    558    563    Any
        //  139    144    558    563    Any
        //  149    154    194    199    Any
        //  165    168    168    194    Landroid/database/SQLException;
        //  204    207    207    269    Any
        //  222    227    235    266    Any
        //  232    235    168    194    Landroid/database/SQLException;
        //  258    263    168    194    Landroid/database/SQLException;
        //  266    269    168    194    Landroid/database/SQLException;
        //  269    272    356    358    Any
        //  276    280    356    358    Any
        //  286    291    549    558    Any
        //  297    302    549    558    Any
        //  302    307    549    558    Any
        //  312    317    351    356    Any
        //  322    325    325    351    Landroid/database/SQLException;
        //  358    361    361    427    Any
        //  380    385    393    424    Any
        //  390    393    325    351    Landroid/database/SQLException;
        //  416    421    325    351    Landroid/database/SQLException;
        //  424    427    325    351    Landroid/database/SQLException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0154:
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
    
    public boolean recreateWorkspaceTable(final SQLiteDatabase p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_1       
        //     1: istore_2       
        //     2: aconst_null    
        //     3: astore_3       
        //     4: new             Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
        //     7: astore          4
        //     9: aload           4
        //    11: aload_1        
        //    12: invokespecial   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.<init>:(Landroid/database/sqlite/SQLiteDatabase;)V
        //    15: ldc             "workspaceScreens"
        //    17: astore          5
        //    19: iconst_1       
        //    20: istore          6
        //    22: iload           6
        //    24: anewarray       Ljava/lang/String;
        //    27: astore          7
        //    29: ldc             "_id"
        //    31: astore          8
        //    33: iconst_0       
        //    34: istore          9
        //    36: aload           7
        //    38: iconst_0       
        //    39: aload           8
        //    41: aastore        
        //    42: ldc             "screenRank"
        //    44: astore          10
        //    46: iconst_0       
        //    47: istore          9
        //    49: aconst_null    
        //    50: astore          11
        //    52: aconst_null    
        //    53: astore          12
        //    55: aload_1        
        //    56: astore          8
        //    58: aload_1        
        //    59: aload           5
        //    61: aload           7
        //    63: aconst_null    
        //    64: aconst_null    
        //    65: aconst_null    
        //    66: aconst_null    
        //    67: aload           10
        //    69: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    72: astore          5
        //    74: new             Ljava/util/ArrayList;
        //    77: astore          7
        //    79: new             Ljava/util/LinkedHashSet;
        //    82: astore          8
        //    84: aload           8
        //    86: invokespecial   java/util/LinkedHashSet.<init>:()V
        //    89: iconst_0       
        //    90: istore          9
        //    92: aload           5
        //    94: iconst_0       
        //    95: aload           8
        //    97: invokestatic    com/android/launcher3/provider/LauncherDbUtils.iterateCursor:(Landroid/database/Cursor;ILjava/util/Collection;)Ljava/util/Collection;
        //   100: astore          8
        //   102: aload           7
        //   104: aload           8
        //   106: invokespecial   java/util/ArrayList.<init>:(Ljava/util/Collection;)V
        //   109: aload           5
        //   111: ifnull          121
        //   114: aload           5
        //   116: invokeinterface android/database/Cursor.close:()V
        //   121: iconst_0       
        //   122: istore          6
        //   124: aconst_null    
        //   125: astore          8
        //   127: aload           8
        //   129: ifnull          272
        //   132: aload           8
        //   134: athrow         
        //   135: astore          8
        //   137: aload           4
        //   139: astore_3       
        //   140: aload           8
        //   142: athrow         
        //   143: astore          5
        //   145: aload_3        
        //   146: astore          4
        //   148: aload           8
        //   150: astore_3       
        //   151: aload           5
        //   153: astore          8
        //   155: aload           4
        //   157: ifnull          165
        //   160: aload           4
        //   162: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //   165: aload_3        
        //   166: ifnull          506
        //   169: aload_3        
        //   170: athrow         
        //   171: astore          8
        //   173: aload           8
        //   175: invokevirtual   android/database/SQLException.getMessage:()Ljava/lang/String;
        //   178: astore          7
        //   180: ldc             "LauncherProvider"
        //   182: aload           7
        //   184: aload           8
        //   186: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   189: pop            
        //   190: iconst_0       
        //   191: ireturn        
        //   192: astore          8
        //   194: goto            127
        //   197: astore          8
        //   199: iconst_0       
        //   200: istore          13
        //   202: aconst_null    
        //   203: astore          5
        //   205: aload           8
        //   207: athrow         
        //   208: astore          14
        //   210: aload           8
        //   212: astore          7
        //   214: aload           14
        //   216: astore          8
        //   218: aload           5
        //   220: ifnull          230
        //   223: aload           5
        //   225: invokeinterface android/database/Cursor.close:()V
        //   230: aload           7
        //   232: ifnull          269
        //   235: aload           7
        //   237: athrow         
        //   238: astore          5
        //   240: aload           7
        //   242: ifnonnull       252
        //   245: aload           5
        //   247: astore          7
        //   249: goto            230
        //   252: aload           7
        //   254: aload           5
        //   256: if_acmpeq       230
        //   259: aload           7
        //   261: aload           5
        //   263: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   266: goto            230
        //   269: aload           8
        //   271: athrow         
        //   272: ldc_w           "DROP TABLE IF EXISTS workspaceScreens"
        //   275: astore          8
        //   277: aload_1        
        //   278: aload           8
        //   280: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   283: iconst_0       
        //   284: istore          6
        //   286: aconst_null    
        //   287: astore          8
        //   289: aload_0        
        //   290: aload_1        
        //   291: iconst_0       
        //   292: invokespecial   com/android/launcher3/LauncherProvider$DatabaseHelper.addWorkspacesTable:(Landroid/database/sqlite/SQLiteDatabase;Z)V
        //   295: aload           7
        //   297: invokevirtual   java/util/ArrayList.size:()I
        //   300: istore          9
        //   302: iconst_0       
        //   303: istore          13
        //   305: aconst_null    
        //   306: astore          5
        //   308: iload           13
        //   310: iload           9
        //   312: if_icmpge       409
        //   315: new             Landroid/content/ContentValues;
        //   318: astore          11
        //   320: aload           11
        //   322: invokespecial   android/content/ContentValues.<init>:()V
        //   325: ldc             "_id"
        //   327: astore          12
        //   329: aload           7
        //   331: iload           13
        //   333: invokevirtual   java/util/ArrayList.get:(I)Ljava/lang/Object;
        //   336: astore          8
        //   338: aload           8
        //   340: checkcast       Ljava/lang/Long;
        //   343: astore          8
        //   345: aload           11
        //   347: aload           12
        //   349: aload           8
        //   351: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Long;)V
        //   354: ldc             "screenRank"
        //   356: astore          8
        //   358: iload           13
        //   360: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   363: astore          12
        //   365: aload           11
        //   367: aload           8
        //   369: aload           12
        //   371: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   374: aload           11
        //   376: invokestatic    com/android/launcher3/LauncherProvider.addModifiedTime:(Landroid/content/ContentValues;)V
        //   379: ldc             "workspaceScreens"
        //   381: astore          8
        //   383: aconst_null    
        //   384: astore          12
        //   386: aload_1        
        //   387: aload           8
        //   389: aconst_null    
        //   390: aload           11
        //   392: invokevirtual   android/database/sqlite/SQLiteDatabase.insertOrThrow:(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
        //   395: pop2           
        //   396: iload           13
        //   398: iconst_1       
        //   399: iadd           
        //   400: istore          6
        //   402: iload           6
        //   404: istore          13
        //   406: goto            308
        //   409: aload           4
        //   411: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.commit:()V
        //   414: aload           7
        //   416: invokevirtual   java/util/ArrayList.isEmpty:()Z
        //   419: istore          6
        //   421: iload           6
        //   423: ifeq            451
        //   426: lconst_0       
        //   427: lstore          15
        //   429: aload_0        
        //   430: lload           15
        //   432: putfield        com/android/launcher3/LauncherProvider$DatabaseHelper.mMaxScreenId:J
        //   435: aload           4
        //   437: ifnull          445
        //   440: aload           4
        //   442: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //   445: aload_3        
        //   446: ifnull          509
        //   449: aload_3        
        //   450: athrow         
        //   451: aload           7
        //   453: invokestatic    java/util/Collections.max:(Ljava/util/Collection;)Ljava/lang/Object;
        //   456: astore          8
        //   458: aload           8
        //   460: checkcast       Ljava/lang/Long;
        //   463: astore          8
        //   465: aload           8
        //   467: invokevirtual   java/lang/Long.longValue:()J
        //   470: lstore          15
        //   472: goto            429
        //   475: astore_3       
        //   476: goto            445
        //   479: astore          5
        //   481: aload_3        
        //   482: ifnonnull       491
        //   485: aload           5
        //   487: astore_3       
        //   488: goto            165
        //   491: aload_3        
        //   492: aload           5
        //   494: if_acmpeq       165
        //   497: aload_3        
        //   498: aload           5
        //   500: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   503: goto            165
        //   506: aload           8
        //   508: athrow         
        //   509: iload_2        
        //   510: ireturn        
        //   511: astore          8
        //   513: goto            140
        //   516: astore          8
        //   518: goto            205
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  4      7      511    516    Any
        //  11     15     511    516    Any
        //  22     27     197    205    Any
        //  39     42     197    205    Any
        //  67     72     197    205    Any
        //  74     77     516    521    Any
        //  79     82     516    521    Any
        //  84     89     516    521    Any
        //  95     100    516    521    Any
        //  104    109    516    521    Any
        //  114    121    192    197    Any
        //  132    135    135    140    Any
        //  140    143    143    509    Any
        //  160    165    479    506    Any
        //  169    171    171    192    Landroid/database/SQLException;
        //  205    208    208    272    Any
        //  223    230    238    269    Any
        //  235    238    135    140    Any
        //  261    266    135    140    Any
        //  269    272    135    140    Any
        //  278    283    135    140    Any
        //  291    295    135    140    Any
        //  295    300    135    140    Any
        //  315    318    135    140    Any
        //  320    325    135    140    Any
        //  331    336    135    140    Any
        //  338    343    135    140    Any
        //  349    354    135    140    Any
        //  358    363    135    140    Any
        //  369    374    135    140    Any
        //  374    379    135    140    Any
        //  390    396    135    140    Any
        //  409    414    135    140    Any
        //  414    419    135    140    Any
        //  430    435    135    140    Any
        //  440    445    475    479    Any
        //  449    451    171    192    Landroid/database/SQLException;
        //  451    456    135    140    Any
        //  458    463    135    140    Any
        //  465    470    135    140    Any
        //  498    503    171    192    Landroid/database/SQLException;
        //  506    509    171    192    Landroid/database/SQLException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0165:
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
    
    public void removeGhostWidgets(final SQLiteDatabase p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_2       
        //     2: aload_0        
        //     3: invokevirtual   com/android/launcher3/LauncherProvider$DatabaseHelper.newLauncherWidgetHost:()Landroid/appwidget/AppWidgetHost;
        //     6: astore_3       
        //     7: aload_3        
        //     8: invokevirtual   android/appwidget/AppWidgetHost.getAppWidgetIds:()[I
        //    11: astore          4
        //    13: new             Ljava/util/HashSet;
        //    16: astore          5
        //    18: aload           5
        //    20: invokespecial   java/util/HashSet.<init>:()V
        //    23: ldc             "favorites"
        //    25: astore          6
        //    27: iconst_1       
        //    28: istore          7
        //    30: iload           7
        //    32: anewarray       Ljava/lang/String;
        //    35: astore          8
        //    37: ldc_w           "appWidgetId"
        //    40: astore          9
        //    42: iconst_0       
        //    43: istore          10
        //    45: aconst_null    
        //    46: astore          11
        //    48: aload           8
        //    50: iconst_0       
        //    51: aload           9
        //    53: aastore        
        //    54: ldc_w           "itemType=4"
        //    57: astore          11
        //    59: aconst_null    
        //    60: astore          12
        //    62: aconst_null    
        //    63: astore          13
        //    65: aload_1        
        //    66: astore          9
        //    68: aload_1        
        //    69: aload           6
        //    71: aload           8
        //    73: aload           11
        //    75: aconst_null    
        //    76: aconst_null    
        //    77: aconst_null    
        //    78: aconst_null    
        //    79: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    82: astore          6
        //    84: aload           6
        //    86: invokeinterface android/database/Cursor.moveToNext:()Z
        //    91: istore          7
        //    93: iload           7
        //    95: ifeq            196
        //    98: iconst_0       
        //    99: istore          7
        //   101: aconst_null    
        //   102: astore          9
        //   104: aload           6
        //   106: iconst_0       
        //   107: invokeinterface android/database/Cursor.getInt:(I)I
        //   112: istore          7
        //   114: iload           7
        //   116: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   119: astore          9
        //   121: aload           5
        //   123: aload           9
        //   125: invokevirtual   java/util/HashSet.add:(Ljava/lang/Object;)Z
        //   128: pop            
        //   129: goto            84
        //   132: astore          9
        //   134: aload           9
        //   136: athrow         
        //   137: astore          8
        //   139: aload           6
        //   141: astore_2       
        //   142: aload           9
        //   144: astore          6
        //   146: aload           8
        //   148: astore          9
        //   150: aload_2        
        //   151: ifnull          160
        //   154: aload_2        
        //   155: invokeinterface android/database/Cursor.close:()V
        //   160: aload           6
        //   162: ifnull          249
        //   165: aload           6
        //   167: athrow         
        //   168: astore          9
        //   170: ldc             "LauncherProvider"
        //   172: ldc_w           "Error getting widgets list"
        //   175: aload           9
        //   177: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   180: pop            
        //   181: return         
        //   182: astore          9
        //   184: ldc             "LauncherProvider"
        //   186: ldc_w           "getAppWidgetIds not supported"
        //   189: aload           9
        //   191: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   194: pop            
        //   195: return         
        //   196: aload           6
        //   198: ifnull          208
        //   201: aload           6
        //   203: invokeinterface android/database/Cursor.close:()V
        //   208: aload_2        
        //   209: ifnull          252
        //   212: aload_2        
        //   213: athrow         
        //   214: astore_2       
        //   215: goto            208
        //   218: astore          8
        //   220: aload           6
        //   222: ifnonnull       232
        //   225: aload           8
        //   227: astore          6
        //   229: goto            160
        //   232: aload           6
        //   234: aload           8
        //   236: if_acmpeq       160
        //   239: aload           6
        //   241: aload           8
        //   243: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   246: goto            160
        //   249: aload           9
        //   251: athrow         
        //   252: aload           4
        //   254: arraylength    
        //   255: istore          14
        //   257: iconst_0       
        //   258: istore          7
        //   260: aconst_null    
        //   261: astore          9
        //   263: iload           7
        //   265: iload           14
        //   267: if_icmpge       364
        //   270: aload           4
        //   272: iload           7
        //   274: iaload         
        //   275: istore          15
        //   277: iload           15
        //   279: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   282: astore          11
        //   284: aload           5
        //   286: aload           11
        //   288: invokevirtual   java/util/HashSet.contains:(Ljava/lang/Object;)Z
        //   291: istore          10
        //   293: iload           10
        //   295: ifne            355
        //   298: ldc             "LauncherProvider"
        //   300: astore          11
        //   302: new             Ljava/lang/StringBuilder;
        //   305: astore          12
        //   307: aload           12
        //   309: invokespecial   java/lang/StringBuilder.<init>:()V
        //   312: ldc_w           "Deleting invalid widget "
        //   315: astore          13
        //   317: aload           12
        //   319: aload           13
        //   321: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   324: astore          12
        //   326: aload           12
        //   328: iload           15
        //   330: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   333: astore          12
        //   335: aload           12
        //   337: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   340: astore          12
        //   342: aload           11
        //   344: aload           12
        //   346: invokestatic    com/android/launcher3/logging/FileLog.d:(Ljava/lang/String;Ljava/lang/String;)V
        //   349: aload_3        
        //   350: iload           15
        //   352: invokevirtual   android/appwidget/AppWidgetHost.deleteAppWidgetId:(I)V
        //   355: iload           7
        //   357: iconst_1       
        //   358: iadd           
        //   359: istore          7
        //   361: goto            263
        //   364: return         
        //   365: astore          8
        //   367: goto            355
        //   370: astore          9
        //   372: iconst_0       
        //   373: istore          14
        //   375: aconst_null    
        //   376: astore          6
        //   378: goto            134
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                    
        //  -----  -----  -----  -----  ----------------------------------------
        //  7      11     182    196    Ljava/lang/IncompatibleClassChangeError;
        //  30     35     370    381    Any
        //  51     54     370    381    Any
        //  78     82     370    381    Any
        //  84     91     132    134    Any
        //  106    112    132    134    Any
        //  114    119    132    134    Any
        //  123    129    132    134    Any
        //  134    137    137    252    Any
        //  154    160    218    249    Any
        //  165    168    168    182    Landroid/database/SQLException;
        //  201    208    214    218    Any
        //  212    214    168    182    Landroid/database/SQLException;
        //  241    246    168    182    Landroid/database/SQLException;
        //  249    252    168    182    Landroid/database/SQLException;
        //  302    305    365    370    Ljava/lang/RuntimeException;
        //  307    312    365    370    Ljava/lang/RuntimeException;
        //  319    324    365    370    Ljava/lang/RuntimeException;
        //  328    333    365    370    Ljava/lang/RuntimeException;
        //  335    340    365    370    Ljava/lang/RuntimeException;
        //  344    349    365    370    Ljava/lang/RuntimeException;
        //  350    355    365    370    Ljava/lang/RuntimeException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0084:
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
    
    boolean updateFolderItemsRank(final SQLiteDatabase sqLiteDatabase, final boolean b) {
        final boolean b2 = true;
        Object message = null;
        while (true) {
            try {
                final LauncherDbUtils$SQLiteTransaction launcherDbUtils$SQLiteTransaction = new LauncherDbUtils$SQLiteTransaction(sqLiteDatabase);
                while (true) {
                    if (b) {
                        final String s = "ALTER TABLE favorites ADD COLUMN rank INTEGER NOT NULL DEFAULT 0;";
                        Label_0245: {
                            try {
                                sqLiteDatabase.execSQL(s);
                                final Cursor rawQuery = sqLiteDatabase.rawQuery("SELECT container, MAX(cellX) FROM favorites WHERE container IN (SELECT _id FROM favorites WHERE itemType = ?) GROUP BY container;", new String[] { Integer.toString(2) });
                                while (rawQuery.moveToNext()) {
                                    sqLiteDatabase.execSQL("UPDATE favorites SET rank=cellX+(cellY*?) WHERE container=? AND cellX IS NOT NULL AND cellY IS NOT NULL;", new Object[] { rawQuery.getLong(1) + 1L, rawQuery.getLong(0) });
                                }
                                break Label_0245;
                            }
                            finally {}
                            try {
                                throw;
                            }
                            finally {
                                final Cursor cursor;
                                message = cursor;
                                final SQLException ex;
                                cursor = (Cursor)ex;
                                while (true) {
                                    if (launcherDbUtils$SQLiteTransaction == null) {
                                        break Label_0216;
                                    }
                                    try {
                                        launcherDbUtils$SQLiteTransaction.close();
                                        if (message != null) {
                                            try {
                                                throw message;
                                            }
                                            catch (SQLException cursor) {
                                                message = ((SQLException)cursor).getMessage();
                                                Log.e("LauncherProvider", (String)message, (Throwable)cursor);
                                                return false;
                                            }
                                            cursor.close();
                                            launcherDbUtils$SQLiteTransaction.commit();
                                            Label_0267: {
                                                if (launcherDbUtils$SQLiteTransaction == null) {
                                                    break Label_0267;
                                                }
                                                try {
                                                    launcherDbUtils$SQLiteTransaction.close();
                                                    if (message != null) {
                                                        throw message;
                                                    }
                                                    return b2;
                                                }
                                                finally {}
                                            }
                                        }
                                    }
                                    finally {
                                        final Throwable t;
                                        if (message == null) {
                                            message = t;
                                            continue;
                                        }
                                        if (message != t) {
                                            ((Throwable)message).addSuppressed(t);
                                        }
                                        continue;
                                    }
                                    break;
                                }
                            }
                        }
                        return b2;
                    }
                    continue;
                }
            }
            finally {
                final LauncherDbUtils$SQLiteTransaction launcherDbUtils$SQLiteTransaction = null;
                continue;
            }
            break;
        }
    }
}

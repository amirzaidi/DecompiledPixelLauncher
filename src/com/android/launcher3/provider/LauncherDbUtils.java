// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.provider;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.content.Context;
import java.util.Collection;
import java.util.ArrayList;
import android.database.Cursor;

public class LauncherDbUtils
{
    public static ArrayList getScreenIdsFromCursor(final Cursor cursor) {
        final String s = "_id";
        try {
            return (ArrayList)iterateCursor(cursor, cursor.getColumnIndexOrThrow(s), new ArrayList());
        }
        finally {
            cursor.close();
        }
    }
    
    public static Collection iterateCursor(final Cursor cursor, final int n, final Collection collection) {
        while (cursor.moveToNext()) {
            collection.add(cursor.getLong(n));
        }
        return collection;
    }
    
    public static boolean prepareScreenZeroToHostQsb(final Context p0, final SQLiteDatabase p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_2       
        //     2: iconst_0       
        //     3: istore_3       
        //     4: aconst_null    
        //     5: astore          4
        //     7: new             Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
        //    10: astore          5
        //    12: aload           5
        //    14: aload_1        
        //    15: invokespecial   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.<init>:(Landroid/database/sqlite/SQLiteDatabase;)V
        //    18: ldc             "workspaceScreens"
        //    20: astore          4
        //    22: ldc             "screenRank"
        //    24: astore          6
        //    26: aconst_null    
        //    27: astore          7
        //    29: iconst_0       
        //    30: istore          8
        //    32: aconst_null    
        //    33: astore          9
        //    35: iconst_0       
        //    36: istore          10
        //    38: aload_1        
        //    39: astore          11
        //    41: aload_1        
        //    42: aload           4
        //    44: aconst_null    
        //    45: aconst_null    
        //    46: aconst_null    
        //    47: aconst_null    
        //    48: aconst_null    
        //    49: aload           6
        //    51: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    54: astore          11
        //    56: aload           11
        //    58: invokestatic    com/android/launcher3/provider/LauncherDbUtils.getScreenIdsFromCursor:(Landroid/database/Cursor;)Ljava/util/ArrayList;
        //    61: astore          7
        //    63: aload           7
        //    65: invokevirtual   java/util/ArrayList.isEmpty:()Z
        //    68: istore          12
        //    70: iload           12
        //    72: ifeq            120
        //    75: aload           5
        //    77: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.commit:()V
        //    80: iconst_1       
        //    81: istore          12
        //    83: aload           5
        //    85: ifnull          93
        //    88: aload           5
        //    90: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //    93: aload_2        
        //    94: ifnull          117
        //    97: aload_2        
        //    98: athrow         
        //    99: astore          11
        //   101: ldc             "LauncherDbUtils"
        //   103: ldc             "Failed to update workspace size"
        //   105: aload           11
        //   107: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   110: pop            
        //   111: iconst_0       
        //   112: ireturn        
        //   113: astore_2       
        //   114: goto            93
        //   117: iload           12
        //   119: ireturn        
        //   120: iconst_0       
        //   121: istore          12
        //   123: aconst_null    
        //   124: astore          11
        //   126: aload           7
        //   128: iconst_0       
        //   129: invokevirtual   java/util/ArrayList.get:(I)Ljava/lang/Object;
        //   132: astore          11
        //   134: aload           11
        //   136: checkcast       Ljava/lang/Long;
        //   139: astore          11
        //   141: aload           11
        //   143: invokevirtual   java/lang/Long.longValue:()J
        //   146: lstore          13
        //   148: lconst_0       
        //   149: lstore          15
        //   151: lload           13
        //   153: lload           15
        //   155: lcmp           
        //   156: istore          12
        //   158: iload           12
        //   160: ifeq            282
        //   163: lconst_0       
        //   164: lstore          13
        //   166: lload           13
        //   168: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   171: astore          11
        //   173: aload           7
        //   175: aload           11
        //   177: invokevirtual   java/util/ArrayList.indexOf:(Ljava/lang/Object;)I
        //   180: istore          12
        //   182: iconst_m1      
        //   183: istore_3       
        //   184: iload           12
        //   186: iload_3        
        //   187: if_icmple       243
        //   190: lconst_1       
        //   191: lstore          13
        //   193: lload           13
        //   195: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   198: astore          9
        //   200: aload           7
        //   202: aload           9
        //   204: invokevirtual   java/util/ArrayList.indexOf:(Ljava/lang/Object;)I
        //   207: istore          8
        //   209: iconst_m1      
        //   210: istore          10
        //   212: iload           8
        //   214: iload           10
        //   216: if_icmple       232
        //   219: lconst_1       
        //   220: lstore          15
        //   222: lload           13
        //   224: lload           15
        //   226: ladd           
        //   227: lstore          13
        //   229: goto            193
        //   232: lconst_0       
        //   233: lstore          15
        //   235: aload_1        
        //   236: lload           15
        //   238: lload           13
        //   240: invokestatic    com/android/launcher3/provider/LauncherDbUtils.renameScreen:(Landroid/database/sqlite/SQLiteDatabase;JJ)V
        //   243: iconst_0       
        //   244: istore          12
        //   246: aconst_null    
        //   247: astore          11
        //   249: aload           7
        //   251: iconst_0       
        //   252: invokevirtual   java/util/ArrayList.get:(I)Ljava/lang/Object;
        //   255: astore          11
        //   257: aload           11
        //   259: checkcast       Ljava/lang/Long;
        //   262: astore          11
        //   264: aload           11
        //   266: invokevirtual   java/lang/Long.longValue:()J
        //   269: lstore          13
        //   271: lconst_0       
        //   272: lstore          17
        //   274: aload_1        
        //   275: lload           13
        //   277: lload           17
        //   279: invokestatic    com/android/launcher3/provider/LauncherDbUtils.renameScreen:(Landroid/database/sqlite/SQLiteDatabase;JJ)V
        //   282: ldc             "favorites"
        //   284: astore          11
        //   286: ldc             "container = -100 and screen = 0 and cellY = 0"
        //   288: astore          4
        //   290: aload_1        
        //   291: aload           11
        //   293: aload           4
        //   295: invokestatic    android/database/DatabaseUtils.queryNumEntries:(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J
        //   298: lstore          13
        //   300: lconst_0       
        //   301: lstore          17
        //   303: lload           13
        //   305: lload           17
        //   307: lcmp           
        //   308: istore          12
        //   310: iload           12
        //   312: ifne            346
        //   315: aload           5
        //   317: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.commit:()V
        //   320: iconst_1       
        //   321: istore          12
        //   323: aload           5
        //   325: ifnull          333
        //   328: aload           5
        //   330: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //   333: aload_2        
        //   334: ifnull          343
        //   337: aload_2        
        //   338: athrow         
        //   339: astore_2       
        //   340: goto            333
        //   343: iload           12
        //   345: ireturn        
        //   346: new             Lcom/android/launcher3/provider/LossyScreenMigrationTask;
        //   349: astore          11
        //   351: aload_0        
        //   352: invokestatic    com/android/launcher3/LauncherAppState.getIDP:(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;
        //   355: astore          4
        //   357: aload           11
        //   359: aload_0        
        //   360: aload           4
        //   362: aload_1        
        //   363: invokespecial   com/android/launcher3/provider/LossyScreenMigrationTask.<init>:(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/database/sqlite/SQLiteDatabase;)V
        //   366: aload           11
        //   368: invokevirtual   com/android/launcher3/provider/LossyScreenMigrationTask.migrateScreen0:()V
        //   371: aload           5
        //   373: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.commit:()V
        //   376: iconst_1       
        //   377: istore          12
        //   379: aload           5
        //   381: ifnull          389
        //   384: aload           5
        //   386: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //   389: aload_2        
        //   390: ifnull          399
        //   393: aload_2        
        //   394: athrow         
        //   395: astore_2       
        //   396: goto            389
        //   399: iload           12
        //   401: ireturn        
        //   402: astore          11
        //   404: aload           11
        //   406: athrow         
        //   407: astore          7
        //   409: aload           4
        //   411: astore          5
        //   413: aload           11
        //   415: astore          4
        //   417: aload           7
        //   419: astore          11
        //   421: aload           5
        //   423: ifnull          431
        //   426: aload           5
        //   428: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //   431: aload           4
        //   433: ifnull          470
        //   436: aload           4
        //   438: athrow         
        //   439: astore          7
        //   441: aload           4
        //   443: ifnonnull       453
        //   446: aload           7
        //   448: astore          4
        //   450: goto            431
        //   453: aload           4
        //   455: aload           7
        //   457: if_acmpeq       431
        //   460: aload           4
        //   462: aload           7
        //   464: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   467: goto            431
        //   470: aload           11
        //   472: athrow         
        //   473: astore          11
        //   475: aload           5
        //   477: astore          4
        //   479: goto            404
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  7      10     402    404    Any
        //  14     18     402    404    Any
        //  49     54     473    482    Any
        //  56     61     473    482    Any
        //  63     68     473    482    Any
        //  75     80     473    482    Any
        //  88     93     113    117    Any
        //  97     99     99     113    Ljava/lang/Exception;
        //  128    132    473    482    Any
        //  134    139    473    482    Any
        //  141    146    473    482    Any
        //  166    171    473    482    Any
        //  175    180    473    482    Any
        //  193    198    473    482    Any
        //  202    207    473    482    Any
        //  238    243    473    482    Any
        //  251    255    473    482    Any
        //  257    262    473    482    Any
        //  264    269    473    482    Any
        //  277    282    473    482    Any
        //  293    298    473    482    Any
        //  315    320    473    482    Any
        //  328    333    339    343    Any
        //  337    339    99     113    Ljava/lang/Exception;
        //  346    349    473    482    Any
        //  351    355    473    482    Any
        //  362    366    473    482    Any
        //  366    371    473    482    Any
        //  371    376    473    482    Any
        //  384    389    395    399    Any
        //  393    395    99     113    Ljava/lang/Exception;
        //  404    407    407    473    Any
        //  426    431    439    470    Any
        //  436    439    99     113    Ljava/lang/Exception;
        //  462    467    99     113    Ljava/lang/Exception;
        //  470    473    99     113    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0093:
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
    
    private static void renameScreen(final SQLiteDatabase sqLiteDatabase, final long n, final long n2) {
        final String[] array = { Long.toString(n) };
        final ContentValues contentValues = new ContentValues();
        contentValues.put("_id", n2);
        sqLiteDatabase.update("workspaceScreens", contentValues, "_id = ?", array);
        contentValues.clear();
        contentValues.put("screen", n2);
        sqLiteDatabase.update("favorites", contentValues, "container = -100 and screen = ?", array);
    }
}

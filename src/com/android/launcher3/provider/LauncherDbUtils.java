// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.provider;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.content.Context;
import com.android.launcher3.logging.FileLog;
import java.util.ArrayList;
import android.database.Cursor;

public class LauncherDbUtils
{
    public static ArrayList getScreenIdsFromCursor(final Cursor cursor) {
        final ArrayList<Long> list = new ArrayList<Long>();
        final String s = "_id";
        try {
            final int columnIndexOrThrow = cursor.getColumnIndexOrThrow(s);
            while (cursor.moveToNext()) {
                try {
                    final long long1 = cursor.getLong(columnIndexOrThrow);
                    try {
                        list.add(long1);
                    }
                    catch (Exception ex) {
                        FileLog.d("LauncherDbUtils", "Invalid screen id", ex);
                    }
                    finally {
                        cursor.close();
                    }
                }
                catch (Exception ex2) {}
            }
        }
        finally {}
        cursor.close();
        return list;
    }
    
    public static boolean prepareScreenZeroToHostQsb(final Context p0, final SQLiteDatabase p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: invokevirtual   android/database/sqlite/SQLiteDatabase.beginTransaction:()V
        //     4: ldc             "workspaceScreens"
        //     6: astore_2       
        //     7: ldc             "screenRank"
        //     9: astore_3       
        //    10: aconst_null    
        //    11: astore          4
        //    13: iconst_0       
        //    14: istore          5
        //    16: aconst_null    
        //    17: astore          6
        //    19: iconst_0       
        //    20: istore          7
        //    22: aload_1        
        //    23: astore          8
        //    25: aload_1        
        //    26: aload_2        
        //    27: aconst_null    
        //    28: aconst_null    
        //    29: aconst_null    
        //    30: aconst_null    
        //    31: aconst_null    
        //    32: aload_3        
        //    33: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    36: astore          8
        //    38: aload           8
        //    40: invokestatic    com/android/launcher3/provider/LauncherDbUtils.getScreenIdsFromCursor:(Landroid/database/Cursor;)Ljava/util/ArrayList;
        //    43: astore          4
        //    45: aload           4
        //    47: invokevirtual   java/util/ArrayList.isEmpty:()Z
        //    50: istore          9
        //    52: iload           9
        //    54: ifeq            63
        //    57: aload_1        
        //    58: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //    61: iconst_1       
        //    62: ireturn        
        //    63: iconst_0       
        //    64: istore          9
        //    66: aconst_null    
        //    67: astore          8
        //    69: aload           4
        //    71: iconst_0       
        //    72: invokevirtual   java/util/ArrayList.get:(I)Ljava/lang/Object;
        //    75: astore          8
        //    77: aload           8
        //    79: checkcast       Ljava/lang/Long;
        //    82: astore          8
        //    84: aload           8
        //    86: invokevirtual   java/lang/Long.longValue:()J
        //    89: lstore          10
        //    91: lconst_0       
        //    92: lstore          12
        //    94: lload           10
        //    96: lload           12
        //    98: lcmp           
        //    99: istore          9
        //   101: iload           9
        //   103: ifeq            227
        //   106: lconst_0       
        //   107: lstore          10
        //   109: lload           10
        //   111: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   114: astore          8
        //   116: aload           4
        //   118: aload           8
        //   120: invokevirtual   java/util/ArrayList.indexOf:(Ljava/lang/Object;)I
        //   123: istore          9
        //   125: iconst_m1      
        //   126: istore          14
        //   128: iload           9
        //   130: iload           14
        //   132: if_icmple       188
        //   135: lconst_1       
        //   136: lstore          10
        //   138: lload           10
        //   140: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   143: astore          6
        //   145: aload           4
        //   147: aload           6
        //   149: invokevirtual   java/util/ArrayList.indexOf:(Ljava/lang/Object;)I
        //   152: istore          5
        //   154: iconst_m1      
        //   155: istore          7
        //   157: iload           5
        //   159: iload           7
        //   161: if_icmple       177
        //   164: lconst_1       
        //   165: lstore          12
        //   167: lload           10
        //   169: lload           12
        //   171: ladd           
        //   172: lstore          10
        //   174: goto            138
        //   177: lconst_0       
        //   178: lstore          12
        //   180: aload_1        
        //   181: lload           12
        //   183: lload           10
        //   185: invokestatic    com/android/launcher3/provider/LauncherDbUtils.renameScreen:(Landroid/database/sqlite/SQLiteDatabase;JJ)V
        //   188: iconst_0       
        //   189: istore          9
        //   191: aconst_null    
        //   192: astore          8
        //   194: aload           4
        //   196: iconst_0       
        //   197: invokevirtual   java/util/ArrayList.get:(I)Ljava/lang/Object;
        //   200: astore          8
        //   202: aload           8
        //   204: checkcast       Ljava/lang/Long;
        //   207: astore          8
        //   209: aload           8
        //   211: invokevirtual   java/lang/Long.longValue:()J
        //   214: lstore          10
        //   216: lconst_0       
        //   217: lstore          15
        //   219: aload_1        
        //   220: lload           10
        //   222: lload           15
        //   224: invokestatic    com/android/launcher3/provider/LauncherDbUtils.renameScreen:(Landroid/database/sqlite/SQLiteDatabase;JJ)V
        //   227: aconst_null    
        //   228: astore          17
        //   230: aconst_null    
        //   231: astore          18
        //   233: ldc             "favorites"
        //   235: astore_2       
        //   236: ldc             "container = -100 and screen = 0 and cellY = 0"
        //   238: astore          6
        //   240: aconst_null    
        //   241: astore          4
        //   243: iconst_0       
        //   244: istore          7
        //   246: aconst_null    
        //   247: astore_3       
        //   248: aload_1        
        //   249: astore          8
        //   251: aload_1        
        //   252: aload_2        
        //   253: aconst_null    
        //   254: aload           6
        //   256: aconst_null    
        //   257: aconst_null    
        //   258: aconst_null    
        //   259: aconst_null    
        //   260: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   263: astore_2       
        //   264: aload_2        
        //   265: invokeinterface android/database/Cursor.getCount:()I
        //   270: istore          9
        //   272: iload           9
        //   274: ifne            330
        //   277: aload_2        
        //   278: ifnull          287
        //   281: aload_2        
        //   282: invokeinterface android/database/Cursor.close:()V
        //   287: aload           17
        //   289: ifnull          324
        //   292: aload           17
        //   294: athrow         
        //   295: astore          8
        //   297: ldc             "LauncherDbUtils"
        //   299: astore_2       
        //   300: ldc             "Failed to update workspace size"
        //   302: astore          4
        //   304: aload_2        
        //   305: aload           4
        //   307: aload           8
        //   309: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   312: pop            
        //   313: aload_1        
        //   314: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   317: iconst_0       
        //   318: ireturn        
        //   319: astore          17
        //   321: goto            287
        //   324: aload_1        
        //   325: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   328: iconst_1       
        //   329: ireturn        
        //   330: aload_2        
        //   331: ifnull          340
        //   334: aload_2        
        //   335: invokeinterface android/database/Cursor.close:()V
        //   340: aload           17
        //   342: ifnull          432
        //   345: aload           17
        //   347: athrow         
        //   348: astore          8
        //   350: aload_1        
        //   351: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   354: aload           8
        //   356: athrow         
        //   357: astore          17
        //   359: goto            340
        //   362: astore          8
        //   364: iconst_0       
        //   365: istore          14
        //   367: aconst_null    
        //   368: astore_2       
        //   369: aload           8
        //   371: athrow         
        //   372: astore          4
        //   374: aload_2        
        //   375: astore          18
        //   377: aload           8
        //   379: astore_2       
        //   380: aload           4
        //   382: astore          8
        //   384: aload           18
        //   386: ifnull          396
        //   389: aload           18
        //   391: invokeinterface android/database/Cursor.close:()V
        //   396: aload_2        
        //   397: ifnull          429
        //   400: aload_2        
        //   401: athrow         
        //   402: astore          4
        //   404: aload_2        
        //   405: ifnonnull       414
        //   408: aload           4
        //   410: astore_2       
        //   411: goto            396
        //   414: aload_2        
        //   415: aload           4
        //   417: if_acmpeq       396
        //   420: aload_2        
        //   421: aload           4
        //   423: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   426: goto            396
        //   429: aload           8
        //   431: athrow         
        //   432: new             Lcom/android/launcher3/provider/LossyScreenMigrationTask;
        //   435: astore          8
        //   437: aload_0        
        //   438: invokestatic    com/android/launcher3/LauncherAppState.getIDP:(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;
        //   441: astore_2       
        //   442: aload           8
        //   444: aload_0        
        //   445: aload_2        
        //   446: aload_1        
        //   447: invokespecial   com/android/launcher3/provider/LossyScreenMigrationTask.<init>:(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/database/sqlite/SQLiteDatabase;)V
        //   450: aload           8
        //   452: invokevirtual   com/android/launcher3/provider/LossyScreenMigrationTask.migrateScreen0:()V
        //   455: aload_1        
        //   456: invokevirtual   android/database/sqlite/SQLiteDatabase.setTransactionSuccessful:()V
        //   459: aload_1        
        //   460: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   463: iconst_1       
        //   464: ireturn        
        //   465: astore          8
        //   467: goto            369
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  32     36     295    319    Ljava/lang/Exception;
        //  32     36     348    357    Any
        //  38     43     295    319    Ljava/lang/Exception;
        //  38     43     348    357    Any
        //  45     50     295    319    Ljava/lang/Exception;
        //  45     50     348    357    Any
        //  71     75     295    319    Ljava/lang/Exception;
        //  71     75     348    357    Any
        //  77     82     295    319    Ljava/lang/Exception;
        //  77     82     348    357    Any
        //  84     89     295    319    Ljava/lang/Exception;
        //  84     89     348    357    Any
        //  109    114    295    319    Ljava/lang/Exception;
        //  109    114    348    357    Any
        //  118    123    295    319    Ljava/lang/Exception;
        //  118    123    348    357    Any
        //  138    143    295    319    Ljava/lang/Exception;
        //  138    143    348    357    Any
        //  147    152    295    319    Ljava/lang/Exception;
        //  147    152    348    357    Any
        //  183    188    295    319    Ljava/lang/Exception;
        //  183    188    348    357    Any
        //  196    200    295    319    Ljava/lang/Exception;
        //  196    200    348    357    Any
        //  202    207    295    319    Ljava/lang/Exception;
        //  202    207    348    357    Any
        //  209    214    295    319    Ljava/lang/Exception;
        //  209    214    348    357    Any
        //  222    227    295    319    Ljava/lang/Exception;
        //  222    227    348    357    Any
        //  259    263    362    369    Any
        //  264    270    465    470    Any
        //  281    287    319    324    Any
        //  292    295    295    319    Ljava/lang/Exception;
        //  292    295    348    357    Any
        //  307    313    348    357    Any
        //  334    340    357    362    Any
        //  345    348    295    319    Ljava/lang/Exception;
        //  345    348    348    357    Any
        //  369    372    372    432    Any
        //  389    396    402    429    Any
        //  400    402    295    319    Ljava/lang/Exception;
        //  400    402    348    357    Any
        //  421    426    295    319    Ljava/lang/Exception;
        //  421    426    348    357    Any
        //  429    432    295    319    Ljava/lang/Exception;
        //  429    432    348    357    Any
        //  432    435    295    319    Ljava/lang/Exception;
        //  432    435    348    357    Any
        //  437    441    295    319    Ljava/lang/Exception;
        //  437    441    348    357    Any
        //  446    450    295    319    Ljava/lang/Exception;
        //  446    450    348    357    Any
        //  450    455    295    319    Ljava/lang/Exception;
        //  450    455    348    357    Any
        //  455    459    295    319    Ljava/lang/Exception;
        //  455    459    348    357    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 252, Size: 252
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

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.c;

import java.util.List;
import java.io.Serializable;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.apps.nexuslauncher.reflection.d.i;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import java.util.ArrayList;
import android.content.ContentValues;
import com.google.android.apps.nexuslauncher.reflection.d.e;
import java.util.Map;
import com.google.research.reflection.a.b;
import com.android.launcher3.util.Preconditions;

public class c
{
    private final a L;
    
    public c(final a l) {
        this.L = l;
    }
    
    public void V(final long n) {
        synchronized (this) {
            Preconditions.assertNonUiThread();
            this.L.getWritableDatabase().delete("reflection_event", "timestamp <= ?", new String[] { Long.toString(n - 3024000000L) });
        }
    }
    
    public void W(final b b) {
        synchronized (this) {
            this.Z(((com.google.android.apps.nexuslauncher.reflection.b.b)b).getInstance());
        }
    }
    
    public void X(final String p0, final String p1, final Map p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore          4
        //     3: aload_0        
        //     4: monitorenter   
        //     5: invokestatic    com/android/launcher3/util/Preconditions.assertNonUiThread:()V
        //     8: aload_0        
        //     9: getfield        com/google/android/apps/nexuslauncher/reflection/c/c.L:Lcom/google/android/apps/nexuslauncher/reflection/c/a;
        //    12: astore          5
        //    14: aload           5
        //    16: invokevirtual   com/google/android/apps/nexuslauncher/reflection/c/a.getWritableDatabase:()Landroid/database/sqlite/SQLiteDatabase;
        //    19: astore          5
        //    21: aload           5
        //    23: invokevirtual   android/database/sqlite/SQLiteDatabase.beginTransaction:()V
        //    26: ldc             "reflection_event"
        //    28: astore          6
        //    30: iconst_2       
        //    31: istore          7
        //    33: iload           7
        //    35: anewarray       Ljava/lang/String;
        //    38: astore          8
        //    40: ldc             "_id"
        //    42: astore          9
        //    44: iconst_0       
        //    45: istore          10
        //    47: aconst_null    
        //    48: astore          11
        //    50: aload           8
        //    52: iconst_0       
        //    53: aload           9
        //    55: aastore        
        //    56: ldc             "id"
        //    58: astore          9
        //    60: iconst_1       
        //    61: istore          10
        //    63: aload           8
        //    65: iload           10
        //    67: aload           9
        //    69: aastore        
        //    70: ldc             "id like ?"
        //    72: astore          9
        //    74: iconst_1       
        //    75: istore          10
        //    77: iload           10
        //    79: anewarray       Ljava/lang/String;
        //    82: astore          11
        //    84: new             Ljava/lang/StringBuilder;
        //    87: astore          12
        //    89: aload           12
        //    91: invokespecial   java/lang/StringBuilder.<init>:()V
        //    94: aload           12
        //    96: aload_1        
        //    97: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   100: astore          12
        //   102: ldc             "%"
        //   104: astore          13
        //   106: aload           12
        //   108: aload           13
        //   110: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   113: astore          12
        //   115: aload           12
        //   117: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   120: astore          12
        //   122: aconst_null    
        //   123: astore          13
        //   125: aload           11
        //   127: iconst_0       
        //   128: aload           12
        //   130: aastore        
        //   131: iconst_0       
        //   132: istore          14
        //   134: aconst_null    
        //   135: astore          12
        //   137: aconst_null    
        //   138: astore          13
        //   140: iconst_0       
        //   141: istore          15
        //   143: aconst_null    
        //   144: astore          16
        //   146: aload           5
        //   148: aload           6
        //   150: aload           8
        //   152: aload           9
        //   154: aload           11
        //   156: aconst_null    
        //   157: aconst_null    
        //   158: aconst_null    
        //   159: aconst_null    
        //   160: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   163: astore          9
        //   165: ldc             "UPDATE reflection_event SET id = ? WHERE _id = ?"
        //   167: astore          6
        //   169: aload           5
        //   171: aload           6
        //   173: invokevirtual   android/database/sqlite/SQLiteDatabase.compileStatement:(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
        //   176: astore          8
        //   178: ldc             "_id"
        //   180: astore          6
        //   182: aload           9
        //   184: aload           6
        //   186: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   191: istore          10
        //   193: ldc             "id"
        //   195: astore          6
        //   197: aload           9
        //   199: aload           6
        //   201: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //   206: istore          14
        //   208: aload           9
        //   210: invokeinterface android/database/Cursor.moveToNext:()Z
        //   215: istore          17
        //   217: iload           17
        //   219: ifeq            453
        //   222: aload           9
        //   224: iload           10
        //   226: invokeinterface android/database/Cursor.getLong:(I)J
        //   231: lstore          18
        //   233: aload           9
        //   235: iload           14
        //   237: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   242: astore          16
        //   244: aload_3        
        //   245: aload           16
        //   247: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   252: astore          6
        //   254: aload           6
        //   256: checkcast       Ljava/lang/String;
        //   259: astore          6
        //   261: aload           6
        //   263: ifnonnull       332
        //   266: new             Ljava/lang/StringBuilder;
        //   269: astore          6
        //   271: aload           6
        //   273: invokespecial   java/lang/StringBuilder.<init>:()V
        //   276: aload           6
        //   278: aload_2        
        //   279: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   282: astore          6
        //   284: ldc             "_"
        //   286: astore          20
        //   288: aload           6
        //   290: aload           20
        //   292: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   295: astore          6
        //   297: aload_3        
        //   298: invokeinterface java/util/Map.size:()I
        //   303: istore          21
        //   305: aload           6
        //   307: iload           21
        //   309: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   312: astore          6
        //   314: aload           6
        //   316: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   319: astore          6
        //   321: aload_3        
        //   322: aload           16
        //   324: aload           6
        //   326: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   331: pop            
        //   332: iconst_1       
        //   333: istore          15
        //   335: aload           8
        //   337: iload           15
        //   339: aload           6
        //   341: invokevirtual   android/database/sqlite/SQLiteStatement.bindString:(ILjava/lang/String;)V
        //   344: iconst_2       
        //   345: istore          17
        //   347: aload           8
        //   349: iload           17
        //   351: lload           18
        //   353: invokevirtual   android/database/sqlite/SQLiteStatement.bindLong:(IJ)V
        //   356: aload           8
        //   358: invokevirtual   android/database/sqlite/SQLiteStatement.executeUpdateDelete:()I
        //   361: pop            
        //   362: goto            208
        //   365: astore          6
        //   367: aload           9
        //   369: astore          4
        //   371: aload           6
        //   373: athrow         
        //   374: astore          22
        //   376: aload           4
        //   378: astore          9
        //   380: aload           6
        //   382: astore          4
        //   384: aload           22
        //   386: astore          6
        //   388: aload           8
        //   390: ifnull          398
        //   393: aload           8
        //   395: invokevirtual   android/database/sqlite/SQLiteStatement.close:()V
        //   398: aload           4
        //   400: astore          11
        //   402: aload           9
        //   404: ifnull          414
        //   407: aload           9
        //   409: invokeinterface android/database/Cursor.close:()V
        //   414: aload           11
        //   416: astore          8
        //   418: aload           8
        //   420: ifnull          604
        //   423: aload           8
        //   425: athrow         
        //   426: astore          6
        //   428: ldc             "Reflection.EvtDbLogger"
        //   430: astore          8
        //   432: ldc             "Error renaming EventIds"
        //   434: astore          9
        //   436: aload           8
        //   438: aload           9
        //   440: aload           6
        //   442: invokestatic    com/android/launcher3/logging/FileLog.d:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
        //   445: aload           5
        //   447: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   450: aload_0        
        //   451: monitorexit    
        //   452: return         
        //   453: aload           5
        //   455: invokevirtual   android/database/sqlite/SQLiteDatabase.setTransactionSuccessful:()V
        //   458: aload           8
        //   460: ifnull          468
        //   463: aload           8
        //   465: invokevirtual   android/database/sqlite/SQLiteStatement.close:()V
        //   468: iconst_0       
        //   469: istore          7
        //   471: aconst_null    
        //   472: astore          8
        //   474: aload           9
        //   476: ifnull          486
        //   479: aload           9
        //   481: invokeinterface android/database/Cursor.close:()V
        //   486: aload           8
        //   488: astore          6
        //   490: aload           6
        //   492: ifnull          607
        //   495: aload           6
        //   497: athrow         
        //   498: astore          6
        //   500: aload           5
        //   502: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   505: aload           6
        //   507: athrow         
        //   508: astore          5
        //   510: aload_0        
        //   511: monitorexit    
        //   512: aload           5
        //   514: athrow         
        //   515: astore          8
        //   517: goto            474
        //   520: astore          6
        //   522: aload           8
        //   524: ifnull          490
        //   527: aload           8
        //   529: aload           6
        //   531: if_acmpeq       486
        //   534: aload           8
        //   536: aload           6
        //   538: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   541: aload           8
        //   543: astore          6
        //   545: goto            490
        //   548: astore          11
        //   550: aload           4
        //   552: ifnull          402
        //   555: aload           4
        //   557: aload           11
        //   559: if_acmpeq       398
        //   562: aload           4
        //   564: aload           11
        //   566: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   569: aload           4
        //   571: astore          11
        //   573: goto            402
        //   576: astore          8
        //   578: aload           11
        //   580: ifnull          418
        //   583: aload           11
        //   585: aload           8
        //   587: if_acmpeq       414
        //   590: aload           11
        //   592: aload           8
        //   594: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   597: aload           11
        //   599: astore          8
        //   601: goto            418
        //   604: aload           6
        //   606: athrow         
        //   607: aload           5
        //   609: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   612: goto            450
        //   615: astore          6
        //   617: iconst_0       
        //   618: istore          7
        //   620: aconst_null    
        //   621: astore          8
        //   623: goto            371
        //   626: astore          6
        //   628: iconst_0       
        //   629: istore          7
        //   631: aconst_null    
        //   632: astore          8
        //   634: aload           9
        //   636: astore          4
        //   638: goto            371
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  5      8      508    515    Any
        //  8      12     508    515    Any
        //  14     19     508    515    Any
        //  21     26     508    515    Any
        //  33     38     615    626    Any
        //  53     56     615    626    Any
        //  67     70     615    626    Any
        //  77     82     615    626    Any
        //  84     87     615    626    Any
        //  89     94     615    626    Any
        //  96     100    615    626    Any
        //  108    113    615    626    Any
        //  115    120    615    626    Any
        //  128    131    615    626    Any
        //  159    163    615    626    Any
        //  171    176    626    641    Any
        //  184    191    365    371    Any
        //  199    206    365    371    Any
        //  208    215    365    371    Any
        //  224    231    365    371    Any
        //  235    242    365    371    Any
        //  245    252    365    371    Any
        //  254    259    365    371    Any
        //  266    269    365    371    Any
        //  271    276    365    371    Any
        //  278    282    365    371    Any
        //  290    295    365    371    Any
        //  297    303    365    371    Any
        //  307    312    365    371    Any
        //  314    319    365    371    Any
        //  324    332    365    371    Any
        //  339    344    365    371    Any
        //  351    356    365    371    Any
        //  356    362    365    371    Any
        //  371    374    374    607    Any
        //  393    398    548    576    Any
        //  407    414    576    604    Any
        //  423    426    426    450    Landroid/database/SQLException;
        //  423    426    498    508    Any
        //  440    445    498    508    Any
        //  445    450    508    515    Any
        //  453    458    365    371    Any
        //  463    468    515    520    Any
        //  479    486    520    548    Any
        //  495    498    426    450    Landroid/database/SQLException;
        //  495    498    498    508    Any
        //  500    505    508    515    Any
        //  505    508    508    515    Any
        //  536    541    426    450    Landroid/database/SQLException;
        //  536    541    498    508    Any
        //  564    569    426    450    Landroid/database/SQLException;
        //  564    569    498    508    Any
        //  592    597    426    450    Landroid/database/SQLException;
        //  592    597    498    508    Any
        //  604    607    426    450    Landroid/database/SQLException;
        //  604    607    498    508    Any
        //  607    612    508    515    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 303, Size: 303
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
    
    public d Y(final long p0, final int p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: monitorenter   
        //     2: aload_0        
        //     3: getfield        com/google/android/apps/nexuslauncher/reflection/c/c.L:Lcom/google/android/apps/nexuslauncher/reflection/c/a;
        //     6: astore          4
        //     8: aload           4
        //    10: invokevirtual   com/google/android/apps/nexuslauncher/reflection/c/a.getReadableDatabase:()Landroid/database/sqlite/SQLiteDatabase;
        //    13: astore          4
        //    15: new             Ljava/util/ArrayList;
        //    18: astore          5
        //    20: aload           5
        //    22: invokespecial   java/util/ArrayList.<init>:()V
        //    25: iconst_m1      
        //    26: i2l            
        //    27: lstore          6
        //    29: aconst_null    
        //    30: astore          8
        //    32: iconst_0       
        //    33: istore          9
        //    35: aconst_null    
        //    36: astore          10
        //    38: ldc             "reflection_event"
        //    40: astore          11
        //    42: getstatic       java/util/Locale.US:Ljava/util/Locale;
        //    45: astore          12
        //    47: ldc             "%s > ?"
        //    49: astore          13
        //    51: iconst_1       
        //    52: istore          14
        //    54: iload           14
        //    56: anewarray       Ljava/lang/Object;
        //    59: astore          15
        //    61: ldc             "_id"
        //    63: astore          16
        //    65: iconst_0       
        //    66: istore          17
        //    68: aload           15
        //    70: iconst_0       
        //    71: aload           16
        //    73: aastore        
        //    74: aload           12
        //    76: aload           13
        //    78: aload           15
        //    80: invokestatic    java/lang/String.format:(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //    83: astore          13
        //    85: iconst_1       
        //    86: istore          18
        //    88: iload           18
        //    90: anewarray       Ljava/lang/String;
        //    93: astore          15
        //    95: lload_1        
        //    96: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //    99: astore          12
        //   101: iconst_0       
        //   102: istore          19
        //   104: aconst_null    
        //   105: astore          16
        //   107: aload           15
        //   109: iconst_0       
        //   110: aload           12
        //   112: aastore        
        //   113: ldc             "_id ASC"
        //   115: astore          20
        //   117: iload_3        
        //   118: invokestatic    java/lang/Integer.toString:(I)Ljava/lang/String;
        //   121: astore          21
        //   123: iconst_0       
        //   124: istore          18
        //   126: aconst_null    
        //   127: astore          12
        //   129: iconst_0       
        //   130: istore          19
        //   132: aconst_null    
        //   133: astore          16
        //   135: iconst_0       
        //   136: istore          17
        //   138: aload           4
        //   140: aload           11
        //   142: aconst_null    
        //   143: aload           13
        //   145: aload           15
        //   147: aconst_null    
        //   148: aconst_null    
        //   149: aload           20
        //   151: aload           21
        //   153: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   156: astore          12
        //   158: ldc             "_id"
        //   160: astore          4
        //   162: aload           12
        //   164: aload           4
        //   166: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   171: istore          22
        //   173: ldc             "proto"
        //   175: astore          4
        //   177: aload           12
        //   179: aload           4
        //   181: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   186: istore          14
        //   188: ldc             "id"
        //   190: astore          4
        //   192: aload           12
        //   194: aload           4
        //   196: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   201: istore          19
        //   203: ldc             "latLong"
        //   205: astore          4
        //   207: aload           12
        //   209: aload           4
        //   211: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   216: istore          17
        //   218: ldc             "semanticPlace"
        //   220: astore          4
        //   222: aload           12
        //   224: aload           4
        //   226: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   231: istore          23
        //   233: lload           6
        //   235: lstore          24
        //   237: aload           12
        //   239: invokeinterface android/database/Cursor.moveToNext:()Z
        //   244: istore          26
        //   246: iload           26
        //   248: ifeq            428
        //   251: new             Lcom/google/android/apps/nexuslauncher/reflection/b/b;
        //   254: astore          21
        //   256: aload           12
        //   258: iload           14
        //   260: invokeinterface android/database/Cursor.getBlob:(I)[B
        //   265: astore          10
        //   267: aload           10
        //   269: invokestatic    com/google/android/apps/nexuslauncher/reflection/d/e.ae:([B)Lcom/google/android/apps/nexuslauncher/reflection/d/e;
        //   272: astore          10
        //   274: aload           21
        //   276: aload           10
        //   278: invokespecial   com/google/android/apps/nexuslauncher/reflection/b/b.<init>:(Lcom/google/android/apps/nexuslauncher/reflection/d/e;)V
        //   281: aload           12
        //   283: iload           19
        //   285: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   290: astore          10
        //   292: aload           21
        //   294: aload           10
        //   296: invokevirtual   com/google/android/apps/nexuslauncher/reflection/b/b.H:(Ljava/lang/String;)Lcom/google/research/reflection/a/b;
        //   299: pop            
        //   300: aload           12
        //   302: iload           17
        //   304: invokeinterface android/database/Cursor.isNull:(I)Z
        //   309: istore          9
        //   311: iload           9
        //   313: ifne            353
        //   316: aload           12
        //   318: iload           17
        //   320: invokeinterface android/database/Cursor.getBlob:(I)[B
        //   325: astore          10
        //   327: aload           10
        //   329: invokestatic    com/google/android/apps/nexuslauncher/reflection/d/i.ag:([B)Lcom/google/android/apps/nexuslauncher/reflection/d/i;
        //   332: astore          10
        //   334: new             Lcom/google/android/apps/nexuslauncher/reflection/b/a;
        //   337: astore          27
        //   339: aload           27
        //   341: aload           10
        //   343: invokespecial   com/google/android/apps/nexuslauncher/reflection/b/a.<init>:(Lcom/google/android/apps/nexuslauncher/reflection/d/i;)V
        //   346: aload           21
        //   348: aload           27
        //   350: invokestatic    com/google/research/reflection/common/b.Ta:(Lcom/google/research/reflection/a/b;Lcom/google/research/reflection/a/a;)V
        //   353: aload           12
        //   355: iload           23
        //   357: invokeinterface android/database/Cursor.isNull:(I)Z
        //   362: istore          9
        //   364: iload           9
        //   366: ifne            406
        //   369: aload           12
        //   371: iload           23
        //   373: invokeinterface android/database/Cursor.getBlob:(I)[B
        //   378: astore          10
        //   380: aload           10
        //   382: invokestatic    com/google/android/apps/nexuslauncher/reflection/d/i.ag:([B)Lcom/google/android/apps/nexuslauncher/reflection/d/i;
        //   385: astore          10
        //   387: new             Lcom/google/android/apps/nexuslauncher/reflection/b/a;
        //   390: astore          27
        //   392: aload           27
        //   394: aload           10
        //   396: invokespecial   com/google/android/apps/nexuslauncher/reflection/b/a.<init>:(Lcom/google/android/apps/nexuslauncher/reflection/d/i;)V
        //   399: aload           21
        //   401: aload           27
        //   403: invokestatic    com/google/research/reflection/common/b.Ta:(Lcom/google/research/reflection/a/b;Lcom/google/research/reflection/a/a;)V
        //   406: aload           5
        //   408: aload           21
        //   410: invokevirtual   java/util/ArrayList.add:(Ljava/lang/Object;)Z
        //   413: pop            
        //   414: aload           12
        //   416: iload           22
        //   418: invokeinterface android/database/Cursor.getLong:(I)J
        //   423: lstore          24
        //   425: goto            237
        //   428: aload           12
        //   430: ifnull          440
        //   433: aload           12
        //   435: invokeinterface android/database/Cursor.close:()V
        //   440: aload           8
        //   442: ifnull          536
        //   445: aload           8
        //   447: athrow         
        //   448: astore          4
        //   450: aload_0        
        //   451: monitorexit    
        //   452: aload           4
        //   454: athrow         
        //   455: astore          8
        //   457: goto            440
        //   460: astore          4
        //   462: aconst_null    
        //   463: astore          11
        //   465: aload           4
        //   467: athrow         
        //   468: astore          28
        //   470: aload           11
        //   472: astore          12
        //   474: aload           4
        //   476: astore          11
        //   478: aload           28
        //   480: astore          4
        //   482: aload           12
        //   484: ifnull          494
        //   487: aload           12
        //   489: invokeinterface android/database/Cursor.close:()V
        //   494: aload           11
        //   496: ifnull          533
        //   499: aload           11
        //   501: athrow         
        //   502: astore          12
        //   504: aload           11
        //   506: ifnonnull       516
        //   509: aload           12
        //   511: astore          11
        //   513: goto            494
        //   516: aload           11
        //   518: aload           12
        //   520: if_acmpeq       494
        //   523: aload           11
        //   525: aload           12
        //   527: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   530: goto            494
        //   533: aload           4
        //   535: athrow         
        //   536: new             Lcom/google/android/apps/nexuslauncher/reflection/c/d;
        //   539: astore          12
        //   541: aload           12
        //   543: lload           24
        //   545: aload           5
        //   547: invokespecial   com/google/android/apps/nexuslauncher/reflection/c/d.<init>:(JLjava/util/List;)V
        //   550: aload_0        
        //   551: monitorexit    
        //   552: aload           12
        //   554: areturn        
        //   555: astore          4
        //   557: aload           12
        //   559: astore          11
        //   561: goto            465
        //   564: astore          21
        //   566: goto            237
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                                         
        //  -----  -----  -----  -----  -------------------------------------------------------------
        //  2      6      448    455    Any
        //  8      13     448    455    Any
        //  15     18     448    455    Any
        //  20     25     448    455    Any
        //  42     45     460    465    Any
        //  54     59     460    465    Any
        //  71     74     460    465    Any
        //  78     83     460    465    Any
        //  88     93     460    465    Any
        //  95     99     460    465    Any
        //  110    113    460    465    Any
        //  117    121    460    465    Any
        //  151    156    460    465    Any
        //  164    171    555    564    Any
        //  179    186    555    564    Any
        //  194    201    555    564    Any
        //  209    216    555    564    Any
        //  224    231    555    564    Any
        //  237    244    555    564    Any
        //  251    254    564    569    Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  251    254    555    564    Any
        //  258    265    564    569    Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  258    265    555    564    Any
        //  267    272    564    569    Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  267    272    555    564    Any
        //  276    281    564    569    Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  276    281    555    564    Any
        //  283    290    564    569    Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  283    290    555    564    Any
        //  294    300    564    569    Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  294    300    555    564    Any
        //  302    309    564    569    Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  302    309    555    564    Any
        //  318    325    564    569    Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  318    325    555    564    Any
        //  327    332    564    569    Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  327    332    555    564    Any
        //  334    337    564    569    Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  334    337    555    564    Any
        //  341    346    564    569    Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  341    346    555    564    Any
        //  348    353    564    569    Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  348    353    555    564    Any
        //  355    362    564    569    Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  355    362    555    564    Any
        //  371    378    564    569    Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  371    378    555    564    Any
        //  380    385    564    569    Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  380    385    555    564    Any
        //  387    390    564    569    Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  387    390    555    564    Any
        //  394    399    564    569    Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  394    399    555    564    Any
        //  401    406    564    569    Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  401    406    555    564    Any
        //  408    414    564    569    Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  408    414    555    564    Any
        //  416    423    564    569    Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  416    423    555    564    Any
        //  433    440    455    460    Any
        //  445    448    448    455    Any
        //  465    468    468    536    Any
        //  487    494    502    533    Any
        //  499    502    448    455    Any
        //  525    530    448    455    Any
        //  533    536    448    455    Any
        //  536    539    448    455    Any
        //  545    550    448    455    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 261, Size: 261
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
    
    public void Z(final e e) {
        e ae;
        SQLiteDatabase writableDatabase;
        ContentValues contentValues;
        Serializable s2 = null;
        while (true) {
            int length = 1;
            // monitorenter(this)
        Block_11_Outer:
            while (true) {
                Object o = null;
                try {
                    Preconditions.assertNonUiThread();
                    try {
                        final byte[] byteArray = com.google.protobuf.nano.a.toByteArray(e);
                        Label_0272: {
                            try {
                                ae = e.ae(byteArray);
                                writableDatabase = this.L.getWritableDatabase();
                                contentValues = new ContentValues();
                                final String s = "timestamp";
                                s2 = ae.ah;
                                contentValues.put(s, (Long)s2);
                                final String s3 = "client";
                                s2 = ae.an;
                                contentValues.put(s3, (String)s2);
                                final String s4 = "type";
                                s2 = ae.ap;
                                contentValues.put(s4, (String)s2);
                                final String s5 = "id";
                                s2 = ae.am;
                                contentValues.put(s5, (String)s2);
                                s2 = "eventSource";
                                int i = ae.ao.length;
                                if (i > length) {
                                    final String s6 = ae.ao[1];
                                    contentValues.put((String)s2, s6);
                                    ae.am = "";
                                    s2 = new ArrayList();
                                    final i[] au = ae.au;
                                    for (i = 0, length = au.length; i < length; ++i) {
                                        o = au[i];
                                        if (!((i)o).aC.equals("lat_long")) {
                                            break Label_0272;
                                        }
                                        final String s7 = "latLong";
                                        o = com.google.protobuf.nano.a.toByteArray((com.google.protobuf.nano.a)o);
                                        contentValues.put(s7, (byte[])o);
                                    }
                                    break;
                                }
                                break Label_0272;
                            }
                            catch (InvalidProtocolBufferNanoException ex) {
                                return;
                                // iftrue(Label_0333:, !o.aC.equals((Object)"semantic_place"))
                                while (true) {
                                    final String s8 = "semanticPlace";
                                    o = com.google.protobuf.nano.a.toByteArray((com.google.protobuf.nano.a)o);
                                    contentValues.put(s8, (byte[])o);
                                    continue Block_11_Outer;
                                    continue;
                                }
                                final String s6 = "";
                            }
                            finally {
                            }
                            // monitorexit(this)
                        }
                    }
                    catch (InvalidProtocolBufferNanoException ex2) {}
                }
                finally {}
                Label_0333: {
                    ((List<byte[]>)s2).add((byte[])o);
                }
                continue;
            }
        }
        ae.au = ((List<byte[]>)s2).toArray(new i[((List)s2).size()]);
        contentValues.put("proto", com.google.protobuf.nano.a.toByteArray(ae));
        writableDatabase.insert("reflection_event", (String)null, contentValues);
    }
    // monitorexit(this)
}

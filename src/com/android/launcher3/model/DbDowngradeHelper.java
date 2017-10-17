// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import android.database.sqlite.SQLiteDatabase;
import android.content.Context;
import org.json.JSONArray;
import org.json.JSONObject;
import com.android.launcher3.util.IOUtils;
import java.io.File;
import android.util.SparseArray;

public class DbDowngradeHelper
{
    private final SparseArray mStatements;
    public final int version;
    
    private DbDowngradeHelper(final int version) {
        this.mStatements = new SparseArray();
        this.version = version;
    }
    
    public static DbDowngradeHelper parse(final File file) {
        final JSONObject jsonObject = new JSONObject(new String(IOUtils.toByteArray(file)));
        final DbDowngradeHelper dbDowngradeHelper = new DbDowngradeHelper(jsonObject.getInt("version"));
        for (int i = dbDowngradeHelper.version - 1; i > 0; --i) {
            if (jsonObject.has("downgrade_to_" + i)) {
                final JSONArray jsonArray = jsonObject.getJSONArray("downgrade_to_" + i);
                final String[] array = new String[jsonArray.length()];
                for (int j = 0; j < array.length; ++j) {
                    array[j] = jsonArray.getString(j);
                }
                dbDowngradeHelper.mStatements.put(i, (Object)array);
            }
        }
        return dbDowngradeHelper;
    }
    
    public static void updateSchemaFile(final File p0, final int p1, final Context p2, final int p3) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore          4
        //     3: aload_0        
        //     4: invokestatic    com/android/launcher3/model/DbDowngradeHelper.parse:(Ljava/io/File;)Lcom/android/launcher3/model/DbDowngradeHelper;
        //     7: astore          5
        //     9: aload           5
        //    11: getfield        com/android/launcher3/model/DbDowngradeHelper.version:I
        //    14: istore          6
        //    16: iload           6
        //    18: iload_1        
        //    19: if_icmplt       25
        //    22: return         
        //    23: astore          5
        //    25: new             Ljava/io/FileOutputStream;
        //    28: astore          7
        //    30: aload           7
        //    32: aload_0        
        //    33: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
        //    36: aload_2        
        //    37: invokevirtual   android/content/Context.getResources:()Landroid/content/res/Resources;
        //    40: astore          5
        //    42: aload           5
        //    44: iload_3        
        //    45: invokevirtual   android/content/res/Resources.openRawResource:(I)Ljava/io/InputStream;
        //    48: astore          8
        //    50: aload           8
        //    52: aload           7
        //    54: invokestatic    com/android/launcher3/util/IOUtils.copy:(Ljava/io/InputStream;Ljava/io/OutputStream;)J
        //    57: pop2           
        //    58: aload           8
        //    60: ifnull          68
        //    63: aload           8
        //    65: invokevirtual   java/io/InputStream.close:()V
        //    68: aconst_null    
        //    69: astore          8
        //    71: aload           7
        //    73: ifnull          81
        //    76: aload           7
        //    78: invokevirtual   java/io/FileOutputStream.close:()V
        //    81: aload           8
        //    83: astore          5
        //    85: aload           5
        //    87: ifnull          113
        //    90: aload           5
        //    92: athrow         
        //    93: astore          5
        //    95: ldc             "DbDowngradeHelper"
        //    97: astore          8
        //    99: ldc             "Error writing schema file"
        //   101: astore          4
        //   103: aload           8
        //   105: aload           4
        //   107: aload           5
        //   109: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   112: pop            
        //   113: return         
        //   114: astore          8
        //   116: goto            71
        //   119: astore          5
        //   121: aload           8
        //   123: ifnull          85
        //   126: aload           8
        //   128: aload           5
        //   130: if_acmpeq       81
        //   133: aload           8
        //   135: aload           5
        //   137: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   140: aload           8
        //   142: astore          5
        //   144: goto            85
        //   147: astore          5
        //   149: aconst_null    
        //   150: astore          8
        //   152: aload           5
        //   154: athrow         
        //   155: astore          9
        //   157: aload           4
        //   159: astore          7
        //   161: aload           8
        //   163: astore          4
        //   165: aload           5
        //   167: astore          8
        //   169: aload           9
        //   171: astore          5
        //   173: aload           4
        //   175: ifnull          183
        //   178: aload           4
        //   180: invokevirtual   java/io/InputStream.close:()V
        //   183: aload           8
        //   185: astore          4
        //   187: aload           7
        //   189: ifnull          197
        //   192: aload           7
        //   194: invokevirtual   java/io/FileOutputStream.close:()V
        //   197: aload           4
        //   199: astore          8
        //   201: aload           8
        //   203: ifnull          265
        //   206: aload           8
        //   208: athrow         
        //   209: astore          4
        //   211: aload           8
        //   213: ifnull          187
        //   216: aload           8
        //   218: aload           4
        //   220: if_acmpeq       183
        //   223: aload           8
        //   225: aload           4
        //   227: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   230: aload           8
        //   232: astore          4
        //   234: goto            187
        //   237: astore          8
        //   239: aload           4
        //   241: ifnull          201
        //   244: aload           4
        //   246: aload           8
        //   248: if_acmpeq       197
        //   251: aload           4
        //   253: aload           8
        //   255: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   258: aload           4
        //   260: astore          8
        //   262: goto            201
        //   265: aload           5
        //   267: athrow         
        //   268: astore          5
        //   270: aconst_null    
        //   271: astore          8
        //   273: aload           7
        //   275: astore          4
        //   277: goto            152
        //   280: astore          5
        //   282: aload           7
        //   284: astore          4
        //   286: goto            152
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  3      7      23     25     Ljava/lang/Exception;
        //  9      14     23     25     Ljava/lang/Exception;
        //  25     28     147    152    Any
        //  32     36     147    152    Any
        //  36     40     268    280    Any
        //  44     48     268    280    Any
        //  52     58     280    289    Any
        //  63     68     114    119    Any
        //  76     81     119    147    Any
        //  90     93     93     113    Ljava/io/IOException;
        //  135    140    93     113    Ljava/io/IOException;
        //  152    155    155    268    Any
        //  178    183    209    237    Any
        //  192    197    237    265    Any
        //  206    209    93     113    Ljava/io/IOException;
        //  225    230    93     113    Ljava/io/IOException;
        //  253    258    93     113    Ljava/io/IOException;
        //  265    268    93     113    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 136, Size: 136
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
    
    public void onDowngrade(final SQLiteDatabase p0, final int p1, final int p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore          4
        //     3: new             Ljava/util/ArrayList;
        //     6: astore          5
        //     8: aload           5
        //    10: invokespecial   java/util/ArrayList.<init>:()V
        //    13: iload_2        
        //    14: iconst_m1      
        //    15: iadd           
        //    16: istore          6
        //    18: iload           6
        //    20: istore          7
        //    22: iload           7
        //    24: iload_3        
        //    25: if_icmplt       110
        //    28: aload_0        
        //    29: getfield        com/android/launcher3/model/DbDowngradeHelper.mStatements:Landroid/util/SparseArray;
        //    32: iload           7
        //    34: invokevirtual   android/util/SparseArray.get:(I)Ljava/lang/Object;
        //    37: checkcast       [Ljava/lang/String;
        //    40: astore          8
        //    42: aload           8
        //    44: ifnonnull       89
        //    47: new             Landroid/database/sqlite/SQLiteException;
        //    50: astore          8
        //    52: new             Ljava/lang/StringBuilder;
        //    55: astore          4
        //    57: aload           4
        //    59: invokespecial   java/lang/StringBuilder.<init>:()V
        //    62: aload           4
        //    64: ldc             "Downgrade path not supported to version "
        //    66: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    69: iload           7
        //    71: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //    74: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    77: astore          9
        //    79: aload           8
        //    81: aload           9
        //    83: invokespecial   android/database/sqlite/SQLiteException.<init>:(Ljava/lang/String;)V
        //    86: aload           8
        //    88: athrow         
        //    89: aload           5
        //    91: aload           8
        //    93: invokestatic    java/util/Collections.addAll:(Ljava/util/Collection;[Ljava/lang/Object;)Z
        //    96: pop            
        //    97: iload           7
        //    99: iconst_m1      
        //   100: iadd           
        //   101: istore          6
        //   103: iload           6
        //   105: istore          7
        //   107: goto            22
        //   110: new             Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
        //   113: astore          9
        //   115: aload           9
        //   117: aload_1        
        //   118: invokespecial   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.<init>:(Landroid/database/sqlite/SQLiteDatabase;)V
        //   121: aload           5
        //   123: invokeinterface java/lang/Iterable.iterator:()Ljava/util/Iterator;
        //   128: astore          5
        //   130: aload           5
        //   132: invokeinterface java/util/Iterator.hasNext:()Z
        //   137: istore          6
        //   139: iload           6
        //   141: ifeq            202
        //   144: aload           5
        //   146: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   151: astore          8
        //   153: aload           8
        //   155: checkcast       Ljava/lang/String;
        //   158: astore          8
        //   160: aload_1        
        //   161: aload           8
        //   163: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   166: goto            130
        //   169: astore          8
        //   171: aload           8
        //   173: athrow         
        //   174: astore          10
        //   176: aload           8
        //   178: astore          4
        //   180: aload           10
        //   182: astore          8
        //   184: aload           9
        //   186: ifnull          194
        //   189: aload           9
        //   191: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //   194: aload           4
        //   196: ifnull          261
        //   199: aload           4
        //   201: athrow         
        //   202: aload           9
        //   204: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.commit:()V
        //   207: aload           9
        //   209: ifnull          217
        //   212: aload           9
        //   214: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //   217: aload           4
        //   219: ifnull          264
        //   222: aload           4
        //   224: athrow         
        //   225: astore          4
        //   227: goto            217
        //   230: astore          9
        //   232: aload           4
        //   234: ifnonnull       244
        //   237: aload           9
        //   239: astore          4
        //   241: goto            194
        //   244: aload           4
        //   246: aload           9
        //   248: if_acmpeq       194
        //   251: aload           4
        //   253: aload           9
        //   255: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   258: goto            194
        //   261: aload           8
        //   263: athrow         
        //   264: return         
        //   265: astore          8
        //   267: iconst_0       
        //   268: istore          7
        //   270: aconst_null    
        //   271: astore          9
        //   273: goto            171
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  110    113    265    174    Any
        //  117    121    265    174    Any
        //  121    128    169    174    Any
        //  130    137    169    174    Any
        //  144    151    169    174    Any
        //  153    158    169    174    Any
        //  161    166    169    174    Any
        //  171    174    174    264    Any
        //  189    194    230    261    Any
        //  202    207    169    174    Any
        //  212    217    225    230    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.OutOfMemoryError: Java heap space
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
}

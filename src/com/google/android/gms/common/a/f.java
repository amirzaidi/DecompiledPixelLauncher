// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.a;

import android.os.Binder;

public class f
{
    private static String ko;
    
    static {
        f.ko = null;
    }
    
    private static String mp(final int p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_1       
        //     2: new             Ljava/io/BufferedReader;
        //     5: astore_2       
        //     6: new             Ljava/io/FileReader;
        //     9: astore_3       
        //    10: new             Ljava/lang/StringBuilder;
        //    13: astore          4
        //    15: bipush          25
        //    17: istore          5
        //    19: aload           4
        //    21: iload           5
        //    23: invokespecial   java/lang/StringBuilder.<init>:(I)V
        //    26: ldc             "/proc/"
        //    28: astore          6
        //    30: aload           4
        //    32: aload           6
        //    34: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    37: astore          4
        //    39: aload           4
        //    41: iload_0        
        //    42: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //    45: astore          4
        //    47: ldc             "/cmdline"
        //    49: astore          6
        //    51: aload           4
        //    53: aload           6
        //    55: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    58: astore          4
        //    60: aload           4
        //    62: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    65: astore          4
        //    67: aload_3        
        //    68: aload           4
        //    70: invokespecial   java/io/FileReader.<init>:(Ljava/lang/String;)V
        //    73: aload_2        
        //    74: aload_3        
        //    75: invokespecial   java/io/BufferedReader.<init>:(Ljava/io/Reader;)V
        //    78: aload_2        
        //    79: invokevirtual   java/io/BufferedReader.readLine:()Ljava/lang/String;
        //    82: astore_3       
        //    83: aload_3        
        //    84: invokevirtual   java/lang/String.trim:()Ljava/lang/String;
        //    87: astore_1       
        //    88: aload_2        
        //    89: ifnonnull       94
        //    92: aload_1        
        //    93: areturn        
        //    94: aload_2        
        //    95: invokevirtual   java/io/BufferedReader.close:()V
        //    98: goto            92
        //   101: astore_3       
        //   102: aload_3        
        //   103: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
        //   106: astore_2       
        //   107: ldc             "ProcessUtils"
        //   109: astore          4
        //   111: aload           4
        //   113: aload_2        
        //   114: aload_3        
        //   115: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   118: pop            
        //   119: goto            92
        //   122: astore_3       
        //   123: aconst_null    
        //   124: astore_2       
        //   125: aload_3        
        //   126: invokevirtual   java/io/IOException.getMessage:()Ljava/lang/String;
        //   129: astore          4
        //   131: ldc             "ProcessUtils"
        //   133: astore          6
        //   135: aload           6
        //   137: aload           4
        //   139: aload_3        
        //   140: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   143: pop            
        //   144: aload_2        
        //   145: ifnull          92
        //   148: aload_2        
        //   149: invokevirtual   java/io/BufferedReader.close:()V
        //   152: goto            92
        //   155: astore_3       
        //   156: aload_3        
        //   157: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
        //   160: astore_2       
        //   161: ldc             "ProcessUtils"
        //   163: astore          4
        //   165: aload           4
        //   167: aload_2        
        //   168: aload_3        
        //   169: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   172: pop            
        //   173: goto            92
        //   176: astore_3       
        //   177: aload_1        
        //   178: ifnonnull       183
        //   181: aload_3        
        //   182: athrow         
        //   183: aload_1        
        //   184: invokevirtual   java/io/BufferedReader.close:()V
        //   187: goto            181
        //   190: astore_2       
        //   191: aload_2        
        //   192: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
        //   195: astore_1       
        //   196: ldc             "ProcessUtils"
        //   198: astore          4
        //   200: aload           4
        //   202: aload_1        
        //   203: aload_2        
        //   204: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   207: pop            
        //   208: goto            181
        //   211: astore_3       
        //   212: aload_2        
        //   213: astore_1       
        //   214: goto            177
        //   217: astore_3       
        //   218: goto            125
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  2      5      122    125    Ljava/io/IOException;
        //  2      5      176    177    Any
        //  6      9      122    125    Ljava/io/IOException;
        //  6      9      176    177    Any
        //  10     13     122    125    Ljava/io/IOException;
        //  10     13     176    177    Any
        //  21     26     122    125    Ljava/io/IOException;
        //  21     26     176    177    Any
        //  32     37     122    125    Ljava/io/IOException;
        //  32     37     176    177    Any
        //  41     45     122    125    Ljava/io/IOException;
        //  41     45     176    177    Any
        //  53     58     122    125    Ljava/io/IOException;
        //  53     58     176    177    Any
        //  60     65     122    125    Ljava/io/IOException;
        //  60     65     176    177    Any
        //  68     73     122    125    Ljava/io/IOException;
        //  68     73     176    177    Any
        //  74     78     122    125    Ljava/io/IOException;
        //  74     78     176    177    Any
        //  78     82     217    221    Ljava/io/IOException;
        //  78     82     211    217    Any
        //  83     87     217    221    Ljava/io/IOException;
        //  83     87     211    217    Any
        //  94     98     101    122    Ljava/lang/Exception;
        //  125    129    211    217    Any
        //  139    144    211    217    Any
        //  148    152    155    176    Ljava/lang/Exception;
        //  183    187    190    211    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 119, Size: 119
        //     at java.util.ArrayList.rangeCheck(Unknown Source)
        //     at java.util.ArrayList.get(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3303)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3551)
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
    
    public static String mq() {
        return mp(Binder.getCallingPid());
    }
}

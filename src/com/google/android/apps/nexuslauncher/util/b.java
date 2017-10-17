// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.util;

import java.io.File;

public class b
{
    public static byte[] cD(final File p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_1       
        //     2: aload_0        
        //     3: invokevirtual   java/io/File.length:()J
        //     6: lstore_2       
        //     7: lload_2        
        //     8: l2i            
        //     9: istore          4
        //    11: iload           4
        //    13: newarray        B
        //    15: astore          5
        //    17: new             Ljava/io/BufferedInputStream;
        //    20: astore          6
        //    22: new             Ljava/io/FileInputStream;
        //    25: astore          7
        //    27: aload           7
        //    29: aload_0        
        //    30: invokespecial   java/io/FileInputStream.<init>:(Ljava/io/File;)V
        //    33: aload           6
        //    35: aload           7
        //    37: invokespecial   java/io/BufferedInputStream.<init>:(Ljava/io/InputStream;)V
        //    40: aload           5
        //    42: arraylength    
        //    43: istore          8
        //    45: aload           6
        //    47: aload           5
        //    49: iconst_0       
        //    50: iload           8
        //    52: invokevirtual   java/io/BufferedInputStream.read:([BII)I
        //    55: pop            
        //    56: aload           6
        //    58: ifnull          66
        //    61: aload           6
        //    63: invokevirtual   java/io/BufferedInputStream.close:()V
        //    66: aload_1        
        //    67: ifnull          143
        //    70: aload_1        
        //    71: athrow         
        //    72: astore_1       
        //    73: goto            66
        //    76: astore          5
        //    78: aconst_null    
        //    79: astore          6
        //    81: aload           5
        //    83: athrow         
        //    84: astore          9
        //    86: aload           6
        //    88: astore_1       
        //    89: aload           5
        //    91: astore          6
        //    93: aload           9
        //    95: astore          5
        //    97: aload_1        
        //    98: ifnull          105
        //   101: aload_1        
        //   102: invokevirtual   java/io/BufferedInputStream.close:()V
        //   105: aload           6
        //   107: ifnull          140
        //   110: aload           6
        //   112: athrow         
        //   113: astore_1       
        //   114: aload           6
        //   116: ifnonnull       125
        //   119: aload_1        
        //   120: astore          6
        //   122: goto            105
        //   125: aload           6
        //   127: aload_1        
        //   128: if_acmpeq       105
        //   131: aload           6
        //   133: aload_1        
        //   134: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   137: goto            105
        //   140: aload           5
        //   142: athrow         
        //   143: aload           5
        //   145: areturn        
        //   146: astore          5
        //   148: goto            81
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  17     20     76     84     Any
        //  22     25     76     84     Any
        //  29     33     76     84     Any
        //  35     40     76     84     Any
        //  40     43     146    84     Any
        //  50     56     146    84     Any
        //  61     66     72     76     Any
        //  81     84     84     143    Any
        //  101    105    113    140    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.OutOfMemoryError: Java heap space
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
}

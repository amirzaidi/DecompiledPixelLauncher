// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.OutputStream;
import java.io.InputStream;

public class IOUtils
{
    public static long copy(final InputStream inputStream, final OutputStream outputStream) {
        final byte[] array = new byte[4096];
        long n = 0L;
        while (true) {
            final int read = inputStream.read(array);
            if (read == -1) {
                break;
            }
            outputStream.write(array, 0, read);
            n += read;
        }
        return n;
    }
    
    public static byte[] toByteArray(final File p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_1       
        //     2: new             Ljava/io/FileInputStream;
        //     5: astore_2       
        //     6: aload_2        
        //     7: aload_0        
        //     8: invokespecial   java/io/FileInputStream.<init>:(Ljava/io/File;)V
        //    11: aload_2        
        //    12: invokestatic    com/android/launcher3/util/IOUtils.toByteArray:(Ljava/io/InputStream;)[B
        //    15: astore_3       
        //    16: aload_2        
        //    17: ifnull          24
        //    20: aload_2        
        //    21: invokevirtual   java/io/InputStream.close:()V
        //    24: aload_1        
        //    25: ifnull          34
        //    28: aload_1        
        //    29: athrow         
        //    30: astore_1       
        //    31: goto            24
        //    34: aload_3        
        //    35: areturn        
        //    36: astore_3       
        //    37: aconst_null    
        //    38: astore_2       
        //    39: aload_3        
        //    40: athrow         
        //    41: astore          4
        //    43: aload_3        
        //    44: astore_1       
        //    45: aload           4
        //    47: astore_3       
        //    48: aload_2        
        //    49: ifnull          56
        //    52: aload_2        
        //    53: invokevirtual   java/io/InputStream.close:()V
        //    56: aload_1        
        //    57: ifnull          85
        //    60: aload_1        
        //    61: athrow         
        //    62: astore_2       
        //    63: aload_1        
        //    64: ifnonnull       72
        //    67: aload_2        
        //    68: astore_1       
        //    69: goto            56
        //    72: aload_1        
        //    73: aload_2        
        //    74: if_acmpeq       56
        //    77: aload_1        
        //    78: aload_2        
        //    79: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //    82: goto            56
        //    85: aload_3        
        //    86: athrow         
        //    87: astore_3       
        //    88: goto            39
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  2      5      36     41     Any
        //  7      11     36     41     Any
        //  11     15     87     41     Any
        //  20     24     30     34     Any
        //  39     41     41     87     Any
        //  52     56     62     85     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.OutOfMemoryError: Java heap space
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    public static byte[] toByteArray(final InputStream inputStream) {
        final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copy(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}

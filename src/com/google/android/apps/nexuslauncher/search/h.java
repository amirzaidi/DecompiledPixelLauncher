// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.search;

import java.util.concurrent.Future;
import android.os.Bundle;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.content.ContentProvider$PipeDataWriter;

final class h implements ContentProvider$PipeDataWriter
{
    final /* synthetic */ AppSearchProvider fT;
    
    h(final AppSearchProvider ft) {
        this.fT = ft;
    }
    
    public void ex(final ParcelFileDescriptor p0, final Uri p1, final String p2, final Bundle p3, final Future p4) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore          6
        //     3: new             Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
        //     6: astore          7
        //     8: aload           7
        //    10: aload_1        
        //    11: invokespecial   android/os/ParcelFileDescriptor$AutoCloseOutputStream.<init>:(Landroid/os/ParcelFileDescriptor;)V
        //    14: aload           5
        //    16: invokeinterface java/util/concurrent/Future.get:()Ljava/lang/Object;
        //    21: astore          8
        //    23: aload           8
        //    25: checkcast       Landroid/graphics/Bitmap;
        //    28: astore          8
        //    30: getstatic       android/graphics/Bitmap$CompressFormat.PNG:Landroid/graphics/Bitmap$CompressFormat;
        //    33: astore          9
        //    35: bipush          100
        //    37: istore          10
        //    39: aload           8
        //    41: aload           9
        //    43: iload           10
        //    45: aload           7
        //    47: invokevirtual   android/graphics/Bitmap.compress:(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
        //    50: pop            
        //    51: aload           7
        //    53: ifnull          61
        //    56: aload           7
        //    58: invokevirtual   android/os/ParcelFileDescriptor$AutoCloseOutputStream.close:()V
        //    61: aload           6
        //    63: ifnull          89
        //    66: aload           6
        //    68: athrow         
        //    69: astore          8
        //    71: ldc             "AppSearchProvider"
        //    73: astore          7
        //    75: ldc             "fail to write to pipe"
        //    77: astore          6
        //    79: aload           7
        //    81: aload           6
        //    83: aload           8
        //    85: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //    88: pop            
        //    89: return         
        //    90: astore          6
        //    92: goto            61
        //    95: astore          8
        //    97: aconst_null    
        //    98: astore          7
        //   100: aload           8
        //   102: athrow         
        //   103: astore          11
        //   105: aload           8
        //   107: astore          6
        //   109: aload           11
        //   111: astore          8
        //   113: aload           7
        //   115: ifnull          123
        //   118: aload           7
        //   120: invokevirtual   android/os/ParcelFileDescriptor$AutoCloseOutputStream.close:()V
        //   123: aload           6
        //   125: ifnull          162
        //   128: aload           6
        //   130: athrow         
        //   131: astore          7
        //   133: aload           6
        //   135: ifnonnull       145
        //   138: aload           7
        //   140: astore          6
        //   142: goto            123
        //   145: aload           6
        //   147: aload           7
        //   149: if_acmpeq       123
        //   152: aload           6
        //   154: aload           7
        //   156: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   159: goto            123
        //   162: aload           8
        //   164: athrow         
        //   165: astore          8
        //   167: goto            100
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  3      6      95     100    Any
        //  10     14     95     100    Any
        //  14     21     165    170    Any
        //  23     28     165    170    Any
        //  30     33     165    170    Any
        //  45     51     165    170    Any
        //  56     61     90     95     Any
        //  66     69     69     89     Ljava/lang/Exception;
        //  100    103    103    165    Any
        //  118    123    131    162    Any
        //  128    131    69     89     Ljava/lang/Exception;
        //  154    159    69     89     Ljava/lang/Exception;
        //  162    165    69     89     Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0061:
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
}

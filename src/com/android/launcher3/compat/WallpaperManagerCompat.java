// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import android.content.Context;

public abstract class WallpaperManagerCompat
{
    private static WallpaperManagerCompat sInstance;
    private static final Object sInstanceLock;
    
    static {
        sInstanceLock = new Object();
    }
    
    public static WallpaperManagerCompat getInstance(final Context p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: getstatic       com/android/launcher3/compat/WallpaperManagerCompat.sInstanceLock:Ljava/lang/Object;
        //     3: astore_1       
        //     4: aload_1        
        //     5: monitorenter   
        //     6: getstatic       com/android/launcher3/compat/WallpaperManagerCompat.sInstance:Lcom/android/launcher3/compat/WallpaperManagerCompat;
        //     9: astore_2       
        //    10: aload_2        
        //    11: ifnonnull       69
        //    14: aload_0        
        //    15: invokevirtual   android/content/Context.getApplicationContext:()Landroid/content/Context;
        //    18: astore_2       
        //    19: invokestatic    com/android/launcher3/Utilities.isAtLeastO:()Z
        //    22: istore_3       
        //    23: iload_3        
        //    24: ifeq            43
        //    27: new             Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;
        //    30: astore          4
        //    32: aload           4
        //    34: aload_2        
        //    35: invokespecial   com/android/launcher3/compat/WallpaperManagerCompatVOMR1.<init>:(Landroid/content/Context;)V
        //    38: aload           4
        //    40: putstatic       com/android/launcher3/compat/WallpaperManagerCompat.sInstance:Lcom/android/launcher3/compat/WallpaperManagerCompat;
        //    43: getstatic       com/android/launcher3/compat/WallpaperManagerCompat.sInstance:Lcom/android/launcher3/compat/WallpaperManagerCompat;
        //    46: astore          4
        //    48: aload           4
        //    50: ifnonnull       69
        //    53: new             Lcom/android/launcher3/compat/WallpaperManagerCompatVL;
        //    56: astore          4
        //    58: aload           4
        //    60: aload_2        
        //    61: invokespecial   com/android/launcher3/compat/WallpaperManagerCompatVL.<init>:(Landroid/content/Context;)V
        //    64: aload           4
        //    66: putstatic       com/android/launcher3/compat/WallpaperManagerCompat.sInstance:Lcom/android/launcher3/compat/WallpaperManagerCompat;
        //    69: getstatic       com/android/launcher3/compat/WallpaperManagerCompat.sInstance:Lcom/android/launcher3/compat/WallpaperManagerCompat;
        //    72: astore_2       
        //    73: aload_1        
        //    74: monitorexit    
        //    75: aload_2        
        //    76: areturn        
        //    77: astore_2       
        //    78: aload_1        
        //    79: monitorexit    
        //    80: aload_2        
        //    81: athrow         
        //    82: astore          4
        //    84: goto            43
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  6      9      77     82     Any
        //  14     18     77     82     Any
        //  19     22     77     82     Any
        //  27     30     82     87     Ljava/lang/Exception;
        //  27     30     77     82     Any
        //  34     38     82     87     Ljava/lang/Exception;
        //  34     38     77     82     Any
        //  38     43     82     87     Ljava/lang/Exception;
        //  38     43     77     82     Any
        //  43     46     77     82     Any
        //  53     56     77     82     Any
        //  60     64     77     82     Any
        //  64     69     77     82     Any
        //  69     72     77     82     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0043:
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
    
    public abstract void addOnColorsChangedListener(final WallpaperManagerCompat$OnColorsChangedListenerCompat p0);
    
    public abstract WallpaperColorsCompat getWallpaperColors(final int p0);
}

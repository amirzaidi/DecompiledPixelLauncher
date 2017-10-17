// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import com.android.launcher3.Utilities;
import android.content.Context;

public class AlphabeticIndexCompat
{
    private static final String MID_DOT = "\u2219";
    private static final String TAG = "AlphabeticIndexCompat";
    private final AlphabeticIndexCompat$BaseIndex mBaseIndex;
    private final String mDefaultMiscLabel;
    
    public AlphabeticIndexCompat(final Context p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_2       
        //     2: aload_0        
        //     3: invokespecial   java/lang/Object.<init>:()V
        //     6: getstatic       com/android/launcher3/Utilities.ATLEAST_NOUGAT:Z
        //     9: istore_3       
        //    10: iload_3        
        //    11: ifeq            180
        //    14: new             Lcom/android/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;
        //    17: astore          4
        //    19: aload           4
        //    21: aload_1        
        //    22: invokespecial   com/android/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN.<init>:(Landroid/content/Context;)V
        //    25: aload           4
        //    27: astore          5
        //    29: aload           5
        //    31: ifnonnull       173
        //    34: new             Lcom/android/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexV16;
        //    37: astore          4
        //    39: aload           4
        //    41: aload_1        
        //    42: invokespecial   com/android/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexV16.<init>:(Landroid/content/Context;)V
        //    45: aload           4
        //    47: ifnonnull       61
        //    50: new             Lcom/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex;
        //    53: astore          4
        //    55: aload           4
        //    57: aconst_null    
        //    58: invokespecial   com/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex.<init>:(Lcom/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex;)V
        //    61: aload_0        
        //    62: aload           4
        //    64: putfield        com/android/launcher3/compat/AlphabeticIndexCompat.mBaseIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex;
        //    67: aload_1        
        //    68: invokevirtual   android/content/Context.getResources:()Landroid/content/res/Resources;
        //    71: invokevirtual   android/content/res/Resources.getConfiguration:()Landroid/content/res/Configuration;
        //    74: getfield        android/content/res/Configuration.locale:Ljava/util/Locale;
        //    77: invokevirtual   java/util/Locale.getLanguage:()Ljava/lang/String;
        //    80: astore          4
        //    82: getstatic       java/util/Locale.JAPANESE:Ljava/util/Locale;
        //    85: invokevirtual   java/util/Locale.getLanguage:()Ljava/lang/String;
        //    88: astore_2       
        //    89: aload           4
        //    91: aload_2        
        //    92: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    95: istore_3       
        //    96: iload_3        
        //    97: ifeq            160
        //   100: ldc             "\u4ed6"
        //   102: astore          4
        //   104: aload_0        
        //   105: aload           4
        //   107: putfield        com/android/launcher3/compat/AlphabeticIndexCompat.mDefaultMiscLabel:Ljava/lang/String;
        //   110: return         
        //   111: astore          4
        //   113: ldc             "Unable to load the system index"
        //   115: astore          6
        //   117: ldc             "AlphabeticIndexCompat"
        //   119: aload           6
        //   121: aload           4
        //   123: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   126: pop            
        //   127: aconst_null    
        //   128: astore          5
        //   130: goto            29
        //   133: astore          4
        //   135: ldc             "AlphabeticIndexCompat"
        //   137: astore          6
        //   139: ldc             "Unable to load the system index"
        //   141: astore          7
        //   143: aload           6
        //   145: aload           7
        //   147: aload           4
        //   149: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   152: pop            
        //   153: aload           5
        //   155: astore          4
        //   157: goto            45
        //   160: ldc             "\u2219"
        //   162: astore          4
        //   164: aload_0        
        //   165: aload           4
        //   167: putfield        com/android/launcher3/compat/AlphabeticIndexCompat.mDefaultMiscLabel:Ljava/lang/String;
        //   170: goto            110
        //   173: aload           5
        //   175: astore          4
        //   177: goto            45
        //   180: iconst_0       
        //   181: istore_3       
        //   182: aconst_null    
        //   183: astore          4
        //   185: goto            25
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  6      9      111    133    Ljava/lang/Exception;
        //  14     17     111    133    Ljava/lang/Exception;
        //  21     25     111    133    Ljava/lang/Exception;
        //  34     37     133    160    Ljava/lang/Exception;
        //  41     45     133    160    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0045:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createConstructor(AstBuilder.java:692)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:529)
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
    
    public String computeSectionName(final CharSequence charSequence) {
        final String trim = Utilities.trim(charSequence);
        final String bucketLabel = this.mBaseIndex.getBucketLabel(this.mBaseIndex.getBucketIndex(trim));
        if (!Utilities.trim(bucketLabel).isEmpty() || trim.length() <= 0) {
            return bucketLabel;
        }
        final int codePoint = trim.codePointAt(0);
        if (Character.isDigit(codePoint)) {
            return "#";
        }
        if (Character.isLetter(codePoint)) {
            return this.mDefaultMiscLabel;
        }
        return "\u2219";
    }
}

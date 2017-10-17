// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.util.Log;
import android.content.res.XmlResourceParser;

class AutoInstallsLayout$AppShortcutParser implements AutoInstallsLayout$TagParser
{
    final /* synthetic */ AutoInstallsLayout this$0;
    
    protected AutoInstallsLayout$AppShortcutParser(final AutoInstallsLayout this$0) {
        this.this$0 = this$0;
    }
    
    protected long invalidPackageOrClass(final XmlResourceParser xmlResourceParser) {
        Log.w("AutoInstalls", "Skipping invalid <favorite> with no component");
        return -1;
    }
    
    public long parseAndAdd(final XmlResourceParser p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: ldc             "packageName"
        //     3: invokestatic    com/android/launcher3/AutoInstallsLayout.getAttributeValue:(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
        //     6: astore_2       
        //     7: ldc             "className"
        //     9: astore_3       
        //    10: aload_1        
        //    11: aload_3        
        //    12: invokestatic    com/android/launcher3/AutoInstallsLayout.getAttributeValue:(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
        //    15: astore          4
        //    17: aload_2        
        //    18: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //    21: istore          5
        //    23: iload           5
        //    25: ifne            314
        //    28: aload           4
        //    30: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //    33: iconst_1       
        //    34: ixor           
        //    35: istore          5
        //    37: iload           5
        //    39: ifeq            314
        //    42: new             Landroid/content/ComponentName;
        //    45: astore          6
        //    47: aload           6
        //    49: aload_2        
        //    50: aload           4
        //    52: invokespecial   android/content/ComponentName.<init>:(Ljava/lang/String;Ljava/lang/String;)V
        //    55: aload_0        
        //    56: getfield        com/android/launcher3/AutoInstallsLayout$AppShortcutParser.this$0:Lcom/android/launcher3/AutoInstallsLayout;
        //    59: astore_3       
        //    60: aload_3        
        //    61: getfield        com/android/launcher3/AutoInstallsLayout.mPackageManager:Landroid/content/pm/PackageManager;
        //    64: astore_3       
        //    65: iconst_0       
        //    66: istore          7
        //    68: aconst_null    
        //    69: astore          8
        //    71: aload_3        
        //    72: aload           6
        //    74: iconst_0       
        //    75: invokevirtual   android/content/pm/PackageManager.getActivityInfo:(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
        //    78: astore_3       
        //    79: new             Landroid/content/Intent;
        //    82: astore          8
        //    84: ldc             "android.intent.action.MAIN"
        //    86: astore          9
        //    88: aload           8
        //    90: aload           9
        //    92: aconst_null    
        //    93: invokespecial   android/content/Intent.<init>:(Ljava/lang/String;Landroid/net/Uri;)V
        //    96: ldc             "android.intent.category.LAUNCHER"
        //    98: astore          9
        //   100: aload           8
        //   102: aload           9
        //   104: invokevirtual   android/content/Intent.addCategory:(Ljava/lang/String;)Landroid/content/Intent;
        //   107: astore          8
        //   109: aload           8
        //   111: aload           6
        //   113: invokevirtual   android/content/Intent.setComponent:(Landroid/content/ComponentName;)Landroid/content/Intent;
        //   116: astore          6
        //   118: ldc             270532608
        //   120: istore          7
        //   122: aload           6
        //   124: iload           7
        //   126: invokevirtual   android/content/Intent.setFlags:(I)Landroid/content/Intent;
        //   129: astore          6
        //   131: aload_0        
        //   132: getfield        com/android/launcher3/AutoInstallsLayout$AppShortcutParser.this$0:Lcom/android/launcher3/AutoInstallsLayout;
        //   135: astore          8
        //   137: aload_0        
        //   138: getfield        com/android/launcher3/AutoInstallsLayout$AppShortcutParser.this$0:Lcom/android/launcher3/AutoInstallsLayout;
        //   141: astore          9
        //   143: aload           9
        //   145: getfield        com/android/launcher3/AutoInstallsLayout.mPackageManager:Landroid/content/pm/PackageManager;
        //   148: astore          9
        //   150: aload_3        
        //   151: aload           9
        //   153: invokevirtual   android/content/pm/ActivityInfo.loadLabel:(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
        //   156: astore_3       
        //   157: aload_3        
        //   158: invokeinterface java/lang/CharSequence.toString:()Ljava/lang/String;
        //   163: astore_3       
        //   164: aconst_null    
        //   165: astore          9
        //   167: aload           8
        //   169: aload_3        
        //   170: aload           6
        //   172: iconst_0       
        //   173: invokevirtual   com/android/launcher3/AutoInstallsLayout.addShortcut:(Ljava/lang/String;Landroid/content/Intent;I)J
        //   176: lreturn        
        //   177: astore_3       
        //   178: aload_0        
        //   179: getfield        com/android/launcher3/AutoInstallsLayout$AppShortcutParser.this$0:Lcom/android/launcher3/AutoInstallsLayout;
        //   182: astore_3       
        //   183: aload_3        
        //   184: getfield        com/android/launcher3/AutoInstallsLayout.mPackageManager:Landroid/content/pm/PackageManager;
        //   187: astore_3       
        //   188: iconst_1       
        //   189: istore          10
        //   191: iload           10
        //   193: anewarray       Ljava/lang/String;
        //   196: astore          6
        //   198: iconst_0       
        //   199: istore          7
        //   201: aconst_null    
        //   202: astore          8
        //   204: aload           6
        //   206: iconst_0       
        //   207: aload_2        
        //   208: aastore        
        //   209: aload_3        
        //   210: aload           6
        //   212: invokevirtual   android/content/pm/PackageManager.currentToCanonicalPackageNames:([Ljava/lang/String;)[Ljava/lang/String;
        //   215: astore_3       
        //   216: new             Landroid/content/ComponentName;
        //   219: astore          6
        //   221: iconst_0       
        //   222: istore          7
        //   224: aconst_null    
        //   225: astore          8
        //   227: aload_3        
        //   228: iconst_0       
        //   229: aaload         
        //   230: astore_3       
        //   231: aload           6
        //   233: aload_3        
        //   234: aload           4
        //   236: invokespecial   android/content/ComponentName.<init>:(Ljava/lang/String;Ljava/lang/String;)V
        //   239: aload_0        
        //   240: getfield        com/android/launcher3/AutoInstallsLayout$AppShortcutParser.this$0:Lcom/android/launcher3/AutoInstallsLayout;
        //   243: astore_3       
        //   244: aload_3        
        //   245: getfield        com/android/launcher3/AutoInstallsLayout.mPackageManager:Landroid/content/pm/PackageManager;
        //   248: astore_3       
        //   249: iconst_0       
        //   250: istore          7
        //   252: aconst_null    
        //   253: astore          8
        //   255: aload_3        
        //   256: aload           6
        //   258: iconst_0       
        //   259: invokevirtual   android/content/pm/PackageManager.getActivityInfo:(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
        //   262: astore_3       
        //   263: goto            79
        //   266: astore_3       
        //   267: new             Ljava/lang/StringBuilder;
        //   270: astore          6
        //   272: aload           6
        //   274: invokespecial   java/lang/StringBuilder.<init>:()V
        //   277: aload           6
        //   279: ldc             "Favorite not found: "
        //   281: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   284: aload_2        
        //   285: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   288: ldc             "/"
        //   290: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   293: aload           4
        //   295: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   298: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   301: astore          6
        //   303: ldc             "AutoInstalls"
        //   305: aload           6
        //   307: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   310: pop            
        //   311: iconst_m1      
        //   312: i2l            
        //   313: lreturn        
        //   314: aload_0        
        //   315: aload_1        
        //   316: invokevirtual   com/android/launcher3/AutoInstallsLayout$AppShortcutParser.invalidPackageOrClass:(Landroid/content/res/XmlResourceParser;)J
        //   319: lreturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                                     
        //  -----  -----  -----  -----  ---------------------------------------------------------
        //  42     45     177    266    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  50     55     177    266    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  55     59     177    266    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  60     64     177    266    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  74     78     177    266    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  79     82     266    314    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  92     96     266    314    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  102    107    266    314    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  111    116    266    314    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  124    129    266    314    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  131    135    266    314    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  137    141    266    314    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  143    148    266    314    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  151    156    266    314    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  157    163    266    314    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  172    176    266    314    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  178    182    266    314    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  183    187    266    314    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  191    196    266    314    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  207    209    266    314    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  210    215    266    314    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  216    219    266    314    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  228    230    266    314    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  234    239    266    314    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  239    243    266    314    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  244    248    266    314    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  258    262    266    314    Landroid/content/pm/PackageManager$NameNotFoundException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 172, Size: 172
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
}

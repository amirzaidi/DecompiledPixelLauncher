// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import android.content.SharedPreferences$Editor;
import com.android.launcher3.Utilities;
import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;
import java.util.regex.Pattern;
import com.google.research.reflection.predictor.d;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import com.google.research.reflection.a.a;
import com.google.android.apps.nexuslauncher.reflection.d.b;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.util.Preconditions;

class n implements Runnable
{
    private c bS;
    final /* synthetic */ m bT;
    
    private n(final m bt) {
        this.bT = bt;
    }
    
    private void bx(long p) {
        final int n = 1;
        Preconditions.assertNonUiThread();
        final long currentTimeMillis = System.currentTimeMillis();
        FileLog.d("Reflection.StBatchTrain", "Start loading events from logs...");
        while (true) {
            Object o = this.bT;
            Object o2;
            synchronized (o) {
                if (this.bT.bO != this) {
                    return;
                }
                o2 = this.bT.bP.E(p, 1000);
                // monitorexit(o)
                if (o2 == null || ((com.google.android.apps.nexuslauncher.reflection.c.d)o2).o.isEmpty()) {
                    o2 = new Object[n];
                    o2[0] = System.currentTimeMillis() - currentTimeMillis;
                    o = String.format("Retrain finished, total time including loading: %dms", (Object[])o2);
                    FileLog.d("Reflection.StBatchTrain", (String)o);
                    return;
                }
            }
            final List o3 = ((com.google.android.apps.nexuslauncher.reflection.c.d)o2).o;
            final Object[] array = { o3.size(), null };
            array[n] = System.currentTimeMillis() - currentTimeMillis;
            FileLog.d("Reflection.StBatchTrain", String.format("Num events loaded: %d, time taken so far: %dms", array));
            for (final b b : o3) {
                synchronized (this.bT) {
                    if (this.bT.bO == this) {
                        this.bS.aP(b.ae(), b);
                        if (b.getId().startsWith("/deleted_app/")) {
                            continue;
                        }
                        final d ao = this.bS.aO();
                        if (ao == null) {
                            continue;
                        }
                        ao.Hd(b);
                        continue;
                    }
                    return;
                }
                break;
            }
            p = ((com.google.android.apps.nexuslauncher.reflection.c.d)o2).p;
            final Locale us = Locale.US;
            final Object[] array2 = new Object[n];
            array2[0] = p;
            final String format = String.format(us, "InProgress:%d", array2);
            final Object[] array3 = new Object[n];
            array3[0] = format;
            o2 = String.format("Progress: %s", array3);
            FileLog.d("Reflection.StBatchTrain", (String)o2);
            synchronized (this.bT) {
                o2 = this.bT;
                o2 = ((m)o2).bO;
                if (o2 != this) {
                    return;
                }
                o2 = this.bT;
                o2 = ((m)o2).bR;
                o2 = ((SharedPreferences)o2).edit();
                ((SharedPreferences$Editor)o2).putString("staged_batch_training_progress", format).apply();
                this.bS.aU();
            }
        }
    }
    
    private c by() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: invokestatic    com/android/launcher3/util/Preconditions.assertNonUiThread:()V
        //     3: lconst_0       
        //     4: lstore_1       
        //     5: aload_0        
        //     6: getfield        com/google/android/apps/nexuslauncher/reflection/n.bT:Lcom/google/android/apps/nexuslauncher/reflection/m;
        //     9: astore_3       
        //    10: aload_3        
        //    11: monitorenter   
        //    12: aload_0        
        //    13: getfield        com/google/android/apps/nexuslauncher/reflection/n.bT:Lcom/google/android/apps/nexuslauncher/reflection/m;
        //    16: astore          4
        //    18: aload           4
        //    20: invokestatic    com/google/android/apps/nexuslauncher/reflection/m.bu:(Lcom/google/android/apps/nexuslauncher/reflection/m;)Landroid/content/SharedPreferences;
        //    23: astore          4
        //    25: ldc             "staged_batch_training_progress"
        //    27: astore          5
        //    29: ldc             "Success"
        //    31: astore          6
        //    33: aload           4
        //    35: aload           5
        //    37: aload           6
        //    39: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //    44: astore          7
        //    46: ldc             "Success"
        //    48: astore          4
        //    50: aload           4
        //    52: aload           7
        //    54: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    57: istore          8
        //    59: iload           8
        //    61: ifeq            68
        //    64: aload_3        
        //    65: monitorexit    
        //    66: aconst_null    
        //    67: areturn        
        //    68: new             Lcom/google/android/apps/nexuslauncher/reflection/c;
        //    71: astore          4
        //    73: aload_0        
        //    74: getfield        com/google/android/apps/nexuslauncher/reflection/n.bT:Lcom/google/android/apps/nexuslauncher/reflection/m;
        //    77: astore          5
        //    79: aload           5
        //    81: invokestatic    com/google/android/apps/nexuslauncher/reflection/m.br:(Lcom/google/android/apps/nexuslauncher/reflection/m;)Landroid/content/Context;
        //    84: astore          5
        //    86: aload_0        
        //    87: getfield        com/google/android/apps/nexuslauncher/reflection/n.bT:Lcom/google/android/apps/nexuslauncher/reflection/m;
        //    90: astore          6
        //    92: aload           6
        //    94: invokestatic    com/google/android/apps/nexuslauncher/reflection/m.bu:(Lcom/google/android/apps/nexuslauncher/reflection/m;)Landroid/content/SharedPreferences;
        //    97: astore          9
        //    99: ldc             "background_evt_buf.properties"
        //   101: astore          10
        //   103: aconst_null    
        //   104: astore          6
        //   106: aload           4
        //   108: aload           5
        //   110: aconst_null    
        //   111: aload           9
        //   113: aload           10
        //   115: aconst_null    
        //   116: invokespecial   com/google/android/apps/nexuslauncher/reflection/c.<init>:(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/c/c;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Runnable;)V
        //   119: aload_0        
        //   120: aload           4
        //   122: putfield        com/google/android/apps/nexuslauncher/reflection/n.bS:Lcom/google/android/apps/nexuslauncher/reflection/c;
        //   125: aload_0        
        //   126: getfield        com/google/android/apps/nexuslauncher/reflection/n.bS:Lcom/google/android/apps/nexuslauncher/reflection/c;
        //   129: astore          4
        //   131: aload_0        
        //   132: getfield        com/google/android/apps/nexuslauncher/reflection/n.bT:Lcom/google/android/apps/nexuslauncher/reflection/m;
        //   135: astore          5
        //   137: aload           5
        //   139: invokestatic    com/google/android/apps/nexuslauncher/reflection/m.bq:(Lcom/google/android/apps/nexuslauncher/reflection/m;)Ljava/io/File;
        //   142: astore          5
        //   144: aload           4
        //   146: aload           5
        //   148: invokevirtual   com/google/android/apps/nexuslauncher/reflection/c.aV:(Ljava/io/File;)V
        //   151: ldc             "New"
        //   153: astore          4
        //   155: aload           4
        //   157: aload           7
        //   159: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   162: istore          8
        //   164: iload           8
        //   166: ifne            379
        //   169: invokestatic    com/google/android/apps/nexuslauncher/reflection/m.-get0:()Ljava/util/regex/Pattern;
        //   172: astore          4
        //   174: aload           4
        //   176: aload           7
        //   178: invokevirtual   java/util/regex/Pattern.matcher:(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
        //   181: astore          4
        //   183: aload           4
        //   185: invokevirtual   java/util/regex/Matcher.find:()Z
        //   188: istore          11
        //   190: iload           11
        //   192: ifne            215
        //   195: ldc             "Reflection.StBatchTrain"
        //   197: astore          4
        //   199: ldc             "Invalid progress string."
        //   201: astore          5
        //   203: aload           4
        //   205: aload           5
        //   207: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   210: pop            
        //   211: aload_3        
        //   212: monitorexit    
        //   213: aconst_null    
        //   214: areturn        
        //   215: iconst_1       
        //   216: istore          11
        //   218: aload           4
        //   220: iload           11
        //   222: invokevirtual   java/util/regex/Matcher.group:(I)Ljava/lang/String;
        //   225: astore          4
        //   227: aload           4
        //   229: invokestatic    java/lang/Long.parseLong:(Ljava/lang/String;)J
        //   232: lstore          12
        //   234: aload_0        
        //   235: getfield        com/google/android/apps/nexuslauncher/reflection/n.bS:Lcom/google/android/apps/nexuslauncher/reflection/c;
        //   238: astore          6
        //   240: aload           6
        //   242: invokevirtual   com/google/android/apps/nexuslauncher/reflection/c.aQ:()Z
        //   245: pop            
        //   246: aload_3        
        //   247: monitorexit    
        //   248: aload_0        
        //   249: lload           12
        //   251: invokespecial   com/google/android/apps/nexuslauncher/reflection/n.bx:(J)V
        //   254: aload_0        
        //   255: getfield        com/google/android/apps/nexuslauncher/reflection/n.bT:Lcom/google/android/apps/nexuslauncher/reflection/m;
        //   258: astore          5
        //   260: aload           5
        //   262: monitorenter   
        //   263: aload_0        
        //   264: getfield        com/google/android/apps/nexuslauncher/reflection/n.bT:Lcom/google/android/apps/nexuslauncher/reflection/m;
        //   267: astore          4
        //   269: aload           4
        //   271: invokestatic    com/google/android/apps/nexuslauncher/reflection/m.bs:(Lcom/google/android/apps/nexuslauncher/reflection/m;)Lcom/google/android/apps/nexuslauncher/reflection/n;
        //   274: astore          4
        //   276: aload           4
        //   278: aload_0        
        //   279: if_acmpne       332
        //   282: aload_0        
        //   283: getfield        com/google/android/apps/nexuslauncher/reflection/n.bT:Lcom/google/android/apps/nexuslauncher/reflection/m;
        //   286: astore          4
        //   288: aload           4
        //   290: invokestatic    com/google/android/apps/nexuslauncher/reflection/m.bu:(Lcom/google/android/apps/nexuslauncher/reflection/m;)Landroid/content/SharedPreferences;
        //   293: astore          4
        //   295: aload           4
        //   297: invokeinterface android/content/SharedPreferences.edit:()Landroid/content/SharedPreferences$Editor;
        //   302: astore          4
        //   304: ldc             "staged_batch_training_progress"
        //   306: astore          6
        //   308: ldc             "Success"
        //   310: astore          9
        //   312: aload           4
        //   314: aload           6
        //   316: aload           9
        //   318: invokeinterface android/content/SharedPreferences$Editor.putString:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
        //   323: astore          4
        //   325: aload           4
        //   327: invokeinterface android/content/SharedPreferences$Editor.apply:()V
        //   332: aload           5
        //   334: monitorexit    
        //   335: aload_0        
        //   336: getfield        com/google/android/apps/nexuslauncher/reflection/n.bS:Lcom/google/android/apps/nexuslauncher/reflection/c;
        //   339: areturn        
        //   340: astore          4
        //   342: ldc             "Reflection.StBatchTrain"
        //   344: astore          5
        //   346: ldc             "Invalid progress string."
        //   348: astore          6
        //   350: aload           5
        //   352: aload           6
        //   354: aload           4
        //   356: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   359: pop            
        //   360: aload_3        
        //   361: monitorexit    
        //   362: aconst_null    
        //   363: areturn        
        //   364: astore          4
        //   366: aload_3        
        //   367: monitorexit    
        //   368: aload           4
        //   370: athrow         
        //   371: astore          4
        //   373: aload           5
        //   375: monitorexit    
        //   376: aload           4
        //   378: athrow         
        //   379: lload_1        
        //   380: lstore          12
        //   382: goto            246
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                             
        //  -----  -----  -----  -----  ---------------------------------
        //  12     16     364    371    Any
        //  18     23     364    371    Any
        //  37     44     364    371    Any
        //  52     57     364    371    Any
        //  68     71     364    371    Any
        //  73     77     364    371    Any
        //  79     84     364    371    Any
        //  86     90     364    371    Any
        //  92     97     364    371    Any
        //  115    119    364    371    Any
        //  120    125    364    371    Any
        //  125    129    364    371    Any
        //  131    135    364    371    Any
        //  137    142    364    371    Any
        //  146    151    364    371    Any
        //  157    162    364    371    Any
        //  169    172    364    371    Any
        //  176    181    364    371    Any
        //  183    188    364    371    Any
        //  205    211    364    371    Any
        //  220    225    340    364    Ljava/lang/NumberFormatException;
        //  220    225    364    371    Any
        //  227    232    340    364    Ljava/lang/NumberFormatException;
        //  227    232    364    371    Any
        //  234    238    364    371    Any
        //  240    246    364    371    Any
        //  263    267    371    379    Any
        //  269    274    371    379    Any
        //  282    286    371    379    Any
        //  288    293    371    379    Any
        //  295    302    371    379    Any
        //  316    323    371    379    Any
        //  325    332    371    379    Any
        //  354    360    364    371    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0332:
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
    
    public void run() {
        try {
            this.bT.bp(this.by(), this);
        }
        finally {
            final Throwable t;
            this.bT.bo(t, this);
        }
    }
}

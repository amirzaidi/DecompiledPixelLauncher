// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import java.util.ArrayList;
import com.google.research.reflection.predictor.e;
import java.io.Closeable;
import com.android.launcher3.Utilities;
import java.io.IOException;
import android.util.Log;
import com.android.launcher3.util.IOUtils;
import com.android.launcher3.util.Preconditions;
import com.google.research.reflection.predictor.g;
import com.google.android.apps.nexuslauncher.reflection.d.b;
import java.util.Map;
import java.util.HashMap;
import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.apps.nexuslauncher.reflection.a.a;
import com.google.research.reflection.predictor.d;
import java.io.File;

public class c
{
    private final String bp;
    private File bq;
    private d br;
    private final com.google.android.apps.nexuslauncher.reflection.c.c bs;
    private a bt;
    private final SharedPreferences bu;
    private final Runnable bv;
    private final Context mContext;
    HashMap mLearners;
    
    public c(final Context mContext, final com.google.android.apps.nexuslauncher.reflection.c.c bs, final SharedPreferences bu, final String bp, final Runnable bv) {
        this.mLearners = new HashMap();
        this.bq = null;
        this.bt = null;
        this.mContext = mContext;
        this.bs = bs;
        this.bu = bu;
        this.bp = bp;
        this.bv = bv;
        this.br = new d();
        if (!(boolean)com.google.android.apps.nexuslauncher.experiment.a.fb.get()) {
            this.bt = a.getInstance(mContext);
        }
    }
    
    private String aR() {
        final int n = 1;
        final StringBuffer sb = new StringBuffer();
        final Object[] array = new Object[n];
        array[0] = (n != 0);
        sb.append(String.format("LatLong=%b ", array));
        final Object[] array2 = new Object[n];
        array2[0] = false;
        sb.append(String.format("Semantic=%b ", array2));
        final Object[] array3 = new Object[n];
        array3[0] = (n != 0);
        sb.append(String.format("Install=%b ", array3));
        final Object[] array4 = new Object[n];
        array4[0] = (n != 0);
        sb.append(String.format("Headset=%b ", array4));
        return sb.toString();
    }
    
    public void aM(final c c) {
        synchronized (this) {
            synchronized (c) {
                this.mLearners.clear();
                this.mLearners.putAll(c.mLearners);
            }
        }
    }
    
    public void aN(final String s, final String s2) {
        synchronized (this) {
            final String string = "/deleted_app/" + System.currentTimeMillis() + "/";
            final HashMap hashMap = new HashMap();
            final com.google.research.reflection.predictor.a a = this.mLearners.get(s);
            if (a != null) {
                a.GP(s2, string, hashMap);
                this.aU();
            }
            this.bs.D(s2, string, hashMap);
        }
    }
    
    d aO() {
        return this.br;
    }
    
    void aP(final String s, final b b) {
        while (true) {
            while (true) {
                synchronized (this) {
                    if (b.getId().startsWith("/deleted_app/")) {
                        return;
                    }
                    if (!com.google.android.apps.nexuslauncher.reflection.d.aW(b)) {
                        return;
                    }
                    if (this.mLearners.get(s) == null) {
                        final com.google.android.apps.nexuslauncher.reflection.b.a a = new com.google.android.apps.nexuslauncher.reflection.b.a(new g());
                        a.GN(this.br);
                        this.mLearners.put(s, a);
                        final com.google.research.reflection.predictor.a a2 = a;
                        a2.GL(b);
                        if (!(boolean)com.google.android.apps.nexuslauncher.experiment.a.fb.get() && this.bt != null) {
                            this.bt.f(b, a2);
                        }
                        return;
                    }
                }
                final com.google.research.reflection.predictor.a a3;
                final com.google.research.reflection.predictor.a a2 = a3;
                continue;
            }
        }
    }
    
    boolean aQ() {
        synchronized (this) {
            Preconditions.assertNonUiThread();
            if (this.bu != null) {
                this.br = d.He(this.bu.getString(this.bp, (String)null), new b());
            }
            if (this.bq == null) {
                return false;
            }
            this.mLearners.clear();
            if (!this.bq.exists()) {
                return false;
            }
            try {
                final File bq = this.bq;
                try {
                    final byte[] byteArray = IOUtils.toByteArray(bq);
                    try {
                        final com.google.android.apps.nexuslauncher.reflection.f.a ab = com.google.android.apps.nexuslauncher.reflection.f.a.aB(byteArray);
                        try {
                            final HashMap mLearners = this.mLearners;
                            try {
                                com.google.android.apps.nexuslauncher.reflection.b.a.s(ab, mLearners, this.br);
                                return true;
                            }
                            catch (IOException ex) {
                                Log.e("Reflection.Engine", "Failed to load models, starting a fresh model.", (Throwable)ex);
                                return false;
                            }
                        }
                        catch (IOException ex2) {}
                    }
                    catch (IOException ex3) {}
                }
                catch (IOException ex4) {}
            }
            catch (IOException ex5) {}
            finally {
                Utilities.closeSilently(null);
            }
        }
    }
    
    public e aS(final String s, final b b) {
        synchronized (this) {
            final com.google.research.reflection.predictor.a a = this.mLearners.get(s);
            if (a == null) {
                final e e = new e();
                e.Ho(new ArrayList());
                return e;
            }
            if (a.GR().isEmpty()) {
                final e e2 = new e();
                e2.Ho(new ArrayList());
                return e2;
            }
            final e gj = a.GJ(b);
            gj.Hr();
            if (!(boolean)com.google.android.apps.nexuslauncher.experiment.a.fb.get() && this.bt != null) {
                this.bt.d(b, a);
            }
            return gj;
        }
    }
    
    public void aT(final String s, final b b) {
        // monitorenter(this)
        final String s2 = "system";
        try {
            if (!s.equals(s2)) {
                this.aP(s, b);
            }
            if (!b.getId().startsWith("/deleted_app/") && this.br != null) {
                this.br.Hd(b);
            }
            this.bs.B(b.aa());
            this.bs.C(b);
        }
        finally {
        }
        // monitorexit(this)
    }
    
    public boolean aU() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_1       
        //     2: aload_0        
        //     3: monitorenter   
        //     4: invokestatic    com/android/launcher3/util/Preconditions.assertNonUiThread:()V
        //     7: aload_0        
        //     8: getfield        com/google/android/apps/nexuslauncher/reflection/c.br:Lcom/google/research/reflection/predictor/d;
        //    11: astore_2       
        //    12: aload_2        
        //    13: ifnull          69
        //    16: aload_0        
        //    17: getfield        com/google/android/apps/nexuslauncher/reflection/c.bu:Landroid/content/SharedPreferences;
        //    20: astore_2       
        //    21: aload_2        
        //    22: ifnull          69
        //    25: aload_0        
        //    26: getfield        com/google/android/apps/nexuslauncher/reflection/c.br:Lcom/google/research/reflection/predictor/d;
        //    29: astore_2       
        //    30: aload_2        
        //    31: invokestatic    com/google/research/reflection/predictor/d.Hj:(Lcom/google/research/reflection/predictor/d;)Ljava/lang/String;
        //    34: astore_2       
        //    35: aload_0        
        //    36: getfield        com/google/android/apps/nexuslauncher/reflection/c.bu:Landroid/content/SharedPreferences;
        //    39: astore_3       
        //    40: aload_3        
        //    41: invokeinterface android/content/SharedPreferences.edit:()Landroid/content/SharedPreferences$Editor;
        //    46: astore_3       
        //    47: aload_0        
        //    48: getfield        com/google/android/apps/nexuslauncher/reflection/c.bp:Ljava/lang/String;
        //    51: astore          4
        //    53: aload_3        
        //    54: aload           4
        //    56: aload_2        
        //    57: invokeinterface android/content/SharedPreferences$Editor.putString:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
        //    62: astore_2       
        //    63: aload_2        
        //    64: invokeinterface android/content/SharedPreferences$Editor.apply:()V
        //    69: aload_0        
        //    70: getfield        com/google/android/apps/nexuslauncher/reflection/c.bq:Ljava/io/File;
        //    73: astore_2       
        //    74: aload_2        
        //    75: ifnonnull       82
        //    78: aload_0        
        //    79: monitorexit    
        //    80: iconst_0       
        //    81: ireturn        
        //    82: aload_0        
        //    83: getfield        com/google/android/apps/nexuslauncher/reflection/c.mLearners:Ljava/util/HashMap;
        //    86: astore_2       
        //    87: aload_2        
        //    88: invokestatic    com/google/android/apps/nexuslauncher/reflection/b/a.u:(Ljava/util/Map;)Lcom/google/android/apps/nexuslauncher/reflection/f/a;
        //    91: astore_2       
        //    92: invokestatic    java/util/Calendar.getInstance:()Ljava/util/Calendar;
        //    95: astore_3       
        //    96: aload_3        
        //    97: invokevirtual   java/util/Calendar.getTimeInMillis:()J
        //   100: lstore          5
        //   102: aload_2        
        //   103: lload           5
        //   105: putfield        com/google/android/apps/nexuslauncher/reflection/f/a.ab:J
        //   108: bipush          24
        //   110: istore          7
        //   112: aload_2        
        //   113: iload           7
        //   115: putfield        com/google/android/apps/nexuslauncher/reflection/f/a.version:I
        //   118: aload_0        
        //   119: invokespecial   com/google/android/apps/nexuslauncher/reflection/c.aR:()Ljava/lang/String;
        //   122: astore_3       
        //   123: aload_2        
        //   124: aload_3        
        //   125: putfield        com/google/android/apps/nexuslauncher/reflection/f/a.ac:Ljava/lang/String;
        //   128: new             Ljava/io/DataOutputStream;
        //   131: astore_3       
        //   132: new             Ljava/io/BufferedOutputStream;
        //   135: astore          4
        //   137: new             Ljava/io/FileOutputStream;
        //   140: astore          8
        //   142: aload_0        
        //   143: getfield        com/google/android/apps/nexuslauncher/reflection/c.bq:Ljava/io/File;
        //   146: astore          9
        //   148: aload           8
        //   150: aload           9
        //   152: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
        //   155: aload           4
        //   157: aload           8
        //   159: invokespecial   java/io/BufferedOutputStream.<init>:(Ljava/io/OutputStream;)V
        //   162: aload_3        
        //   163: aload           4
        //   165: invokespecial   java/io/DataOutputStream.<init>:(Ljava/io/OutputStream;)V
        //   168: aload_2        
        //   169: invokestatic    com/google/protobuf/nano/a.toByteArray:(Lcom/google/protobuf/nano/a;)[B
        //   172: astore_2       
        //   173: aload_3        
        //   174: aload_2        
        //   175: invokevirtual   java/io/DataOutputStream.write:([B)V
        //   178: aload_0        
        //   179: getfield        com/google/android/apps/nexuslauncher/reflection/c.bv:Ljava/lang/Runnable;
        //   182: astore_2       
        //   183: aload_2        
        //   184: ifnull          198
        //   187: aload_0        
        //   188: getfield        com/google/android/apps/nexuslauncher/reflection/c.bv:Ljava/lang/Runnable;
        //   191: astore_2       
        //   192: aload_2        
        //   193: invokeinterface java/lang/Runnable.run:()V
        //   198: aload_3        
        //   199: invokestatic    com/android/launcher3/Utilities.closeSilently:(Ljava/io/Closeable;)V
        //   202: aload_0        
        //   203: monitorexit    
        //   204: iconst_1       
        //   205: ireturn        
        //   206: astore_2       
        //   207: iconst_0       
        //   208: istore          7
        //   210: aconst_null    
        //   211: astore_3       
        //   212: ldc             "Reflection.Engine"
        //   214: astore_1       
        //   215: ldc_w           "Failed to save models"
        //   218: astore          4
        //   220: aload_1        
        //   221: aload           4
        //   223: aload_2        
        //   224: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   227: pop            
        //   228: aload_3        
        //   229: invokestatic    com/android/launcher3/Utilities.closeSilently:(Ljava/io/Closeable;)V
        //   232: aload_0        
        //   233: monitorexit    
        //   234: iconst_0       
        //   235: ireturn        
        //   236: astore_2       
        //   237: aload_1        
        //   238: invokestatic    com/android/launcher3/Utilities.closeSilently:(Ljava/io/Closeable;)V
        //   241: aload_2        
        //   242: athrow         
        //   243: astore_2       
        //   244: aload_0        
        //   245: monitorexit    
        //   246: aload_2        
        //   247: athrow         
        //   248: astore_2       
        //   249: aload_3        
        //   250: astore_1       
        //   251: goto            237
        //   254: astore_2       
        //   255: goto            212
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  4      7      243    248    Any
        //  7      11     243    248    Any
        //  16     20     243    248    Any
        //  25     29     243    248    Any
        //  30     34     243    248    Any
        //  35     39     243    248    Any
        //  40     46     243    248    Any
        //  47     51     243    248    Any
        //  56     62     243    248    Any
        //  63     69     243    248    Any
        //  69     73     243    248    Any
        //  82     86     206    212    Ljava/io/IOException;
        //  82     86     236    237    Any
        //  87     91     206    212    Ljava/io/IOException;
        //  87     91     236    237    Any
        //  92     95     206    212    Ljava/io/IOException;
        //  92     95     236    237    Any
        //  96     100    206    212    Ljava/io/IOException;
        //  96     100    236    237    Any
        //  103    108    206    212    Ljava/io/IOException;
        //  103    108    236    237    Any
        //  113    118    206    212    Ljava/io/IOException;
        //  113    118    236    237    Any
        //  118    122    206    212    Ljava/io/IOException;
        //  118    122    236    237    Any
        //  124    128    206    212    Ljava/io/IOException;
        //  124    128    236    237    Any
        //  128    131    206    212    Ljava/io/IOException;
        //  128    131    236    237    Any
        //  132    135    206    212    Ljava/io/IOException;
        //  132    135    236    237    Any
        //  137    140    206    212    Ljava/io/IOException;
        //  137    140    236    237    Any
        //  142    146    206    212    Ljava/io/IOException;
        //  142    146    236    237    Any
        //  150    155    206    212    Ljava/io/IOException;
        //  150    155    236    237    Any
        //  157    162    206    212    Ljava/io/IOException;
        //  157    162    236    237    Any
        //  163    168    206    212    Ljava/io/IOException;
        //  163    168    236    237    Any
        //  168    172    254    258    Ljava/io/IOException;
        //  168    172    248    254    Any
        //  174    178    254    258    Ljava/io/IOException;
        //  174    178    248    254    Any
        //  178    182    254    258    Ljava/io/IOException;
        //  178    182    248    254    Any
        //  187    191    254    258    Ljava/io/IOException;
        //  187    191    248    254    Any
        //  192    198    254    258    Ljava/io/IOException;
        //  192    198    248    254    Any
        //  198    202    243    248    Any
        //  223    228    248    254    Any
        //  228    232    243    248    Any
        //  237    241    243    248    Any
        //  241    243    243    248    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 147, Size: 147
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
    
    public void aV(final File bq) {
        synchronized (this) {
            this.bq = bq;
        }
    }
    
    HashMap getPredictors() {
        return this.mLearners;
    }
    
    void reset() {
        synchronized (this) {
            Preconditions.assertNonUiThread();
            this.mLearners.clear();
        }
    }
}

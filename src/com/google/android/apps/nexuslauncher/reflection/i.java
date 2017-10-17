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
import java.util.Map;
import com.google.android.apps.nexuslauncher.reflection.a.k;
import com.android.launcher3.util.Preconditions;
import com.google.research.reflection.predictor.g;
import com.google.research.reflection.predictor.a;
import com.google.android.apps.nexuslauncher.reflection.b.b;
import java.util.HashMap;
import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.apps.nexuslauncher.reflection.c.c;
import com.google.research.reflection.predictor.d;
import java.io.File;

public class i
{
    private final String cP;
    private File cQ;
    private d cR;
    private final c cS;
    private final SharedPreferences cT;
    private final Runnable cU;
    private final Context mContext;
    HashMap mLearners;
    
    public i(final Context mContext, final c cs, final SharedPreferences ct, final String cp, final Runnable cu) {
        this.mLearners = new HashMap();
        this.cQ = null;
        this.mContext = mContext;
        this.cS = cs;
        this.cT = ct;
        this.cP = cp;
        this.cU = cu;
        this.cR = new d();
    }
    
    private String co() {
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
    
    void cf(final String s, final b b) {
        synchronized (this) {
            if (b.getId().startsWith("/deleted_app/")) {
                return;
            }
            if (!o.cx(b)) {
                return;
            }
            a a = this.mLearners.get(s);
            if (a == null) {
                a = new com.google.android.apps.nexuslauncher.reflection.e.a(new g());
                a.Tw(this.cR);
                this.mLearners.put(s, a);
            }
            a.Tu(b);
        }
    }
    
    d cg() {
        return this.cR;
    }
    
    public boolean ch() {
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
        //     8: getfield        com/google/android/apps/nexuslauncher/reflection/i.cR:Lcom/google/research/reflection/predictor/d;
        //    11: astore_2       
        //    12: aload_2        
        //    13: ifnull          69
        //    16: aload_0        
        //    17: getfield        com/google/android/apps/nexuslauncher/reflection/i.cT:Landroid/content/SharedPreferences;
        //    20: astore_2       
        //    21: aload_2        
        //    22: ifnull          69
        //    25: aload_0        
        //    26: getfield        com/google/android/apps/nexuslauncher/reflection/i.cR:Lcom/google/research/reflection/predictor/d;
        //    29: astore_2       
        //    30: aload_2        
        //    31: invokestatic    com/google/research/reflection/predictor/d.TS:(Lcom/google/research/reflection/predictor/d;)Ljava/lang/String;
        //    34: astore_2       
        //    35: aload_0        
        //    36: getfield        com/google/android/apps/nexuslauncher/reflection/i.cT:Landroid/content/SharedPreferences;
        //    39: astore_3       
        //    40: aload_3        
        //    41: invokeinterface android/content/SharedPreferences.edit:()Landroid/content/SharedPreferences$Editor;
        //    46: astore_3       
        //    47: aload_0        
        //    48: getfield        com/google/android/apps/nexuslauncher/reflection/i.cP:Ljava/lang/String;
        //    51: astore          4
        //    53: aload_3        
        //    54: aload           4
        //    56: aload_2        
        //    57: invokeinterface android/content/SharedPreferences$Editor.putString:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
        //    62: astore_2       
        //    63: aload_2        
        //    64: invokeinterface android/content/SharedPreferences$Editor.apply:()V
        //    69: aload_0        
        //    70: getfield        com/google/android/apps/nexuslauncher/reflection/i.cQ:Ljava/io/File;
        //    73: astore_2       
        //    74: aload_2        
        //    75: ifnonnull       82
        //    78: aload_0        
        //    79: monitorexit    
        //    80: iconst_0       
        //    81: ireturn        
        //    82: aload_0        
        //    83: getfield        com/google/android/apps/nexuslauncher/reflection/i.mLearners:Ljava/util/HashMap;
        //    86: astore_2       
        //    87: aload_2        
        //    88: invokestatic    com/google/android/apps/nexuslauncher/reflection/e/a.bx:(Ljava/util/Map;)Lcom/google/android/apps/nexuslauncher/reflection/a/k;
        //    91: astore_2       
        //    92: invokestatic    java/util/Calendar.getInstance:()Ljava/util/Calendar;
        //    95: astore_3       
        //    96: aload_3        
        //    97: invokevirtual   java/util/Calendar.getTimeInMillis:()J
        //   100: lstore          5
        //   102: aload_2        
        //   103: lload           5
        //   105: putfield        com/google/android/apps/nexuslauncher/reflection/a/k.bh:J
        //   108: bipush          24
        //   110: istore          7
        //   112: aload_2        
        //   113: iload           7
        //   115: putfield        com/google/android/apps/nexuslauncher/reflection/a/k.bi:I
        //   118: aload_0        
        //   119: invokespecial   com/google/android/apps/nexuslauncher/reflection/i.co:()Ljava/lang/String;
        //   122: astore_3       
        //   123: aload_2        
        //   124: aload_3        
        //   125: putfield        com/google/android/apps/nexuslauncher/reflection/a/k.bj:Ljava/lang/String;
        //   128: new             Ljava/io/DataOutputStream;
        //   131: astore_3       
        //   132: new             Ljava/io/BufferedOutputStream;
        //   135: astore          4
        //   137: new             Ljava/io/FileOutputStream;
        //   140: astore          8
        //   142: aload_0        
        //   143: getfield        com/google/android/apps/nexuslauncher/reflection/i.cQ:Ljava/io/File;
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
        //   179: getfield        com/google/android/apps/nexuslauncher/reflection/i.cU:Ljava/lang/Runnable;
        //   182: astore_2       
        //   183: aload_2        
        //   184: ifnull          198
        //   187: aload_0        
        //   188: getfield        com/google/android/apps/nexuslauncher/reflection/i.cU:Ljava/lang/Runnable;
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
        //   215: ldc             "Failed to save models"
        //   217: astore          4
        //   219: aload_1        
        //   220: aload           4
        //   222: aload_2        
        //   223: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   226: pop            
        //   227: aload_3        
        //   228: invokestatic    com/android/launcher3/Utilities.closeSilently:(Ljava/io/Closeable;)V
        //   231: aload_0        
        //   232: monitorexit    
        //   233: iconst_0       
        //   234: ireturn        
        //   235: astore_2       
        //   236: aload_1        
        //   237: invokestatic    com/android/launcher3/Utilities.closeSilently:(Ljava/io/Closeable;)V
        //   240: aload_2        
        //   241: athrow         
        //   242: astore_2       
        //   243: aload_0        
        //   244: monitorexit    
        //   245: aload_2        
        //   246: athrow         
        //   247: astore_2       
        //   248: aload_3        
        //   249: astore_1       
        //   250: goto            236
        //   253: astore_2       
        //   254: goto            212
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  4      7      242    247    Any
        //  7      11     242    247    Any
        //  16     20     242    247    Any
        //  25     29     242    247    Any
        //  30     34     242    247    Any
        //  35     39     242    247    Any
        //  40     46     242    247    Any
        //  47     51     242    247    Any
        //  56     62     242    247    Any
        //  63     69     242    247    Any
        //  69     73     242    247    Any
        //  82     86     206    212    Ljava/io/IOException;
        //  82     86     235    236    Any
        //  87     91     206    212    Ljava/io/IOException;
        //  87     91     235    236    Any
        //  92     95     206    212    Ljava/io/IOException;
        //  92     95     235    236    Any
        //  96     100    206    212    Ljava/io/IOException;
        //  96     100    235    236    Any
        //  103    108    206    212    Ljava/io/IOException;
        //  103    108    235    236    Any
        //  113    118    206    212    Ljava/io/IOException;
        //  113    118    235    236    Any
        //  118    122    206    212    Ljava/io/IOException;
        //  118    122    235    236    Any
        //  124    128    206    212    Ljava/io/IOException;
        //  124    128    235    236    Any
        //  128    131    206    212    Ljava/io/IOException;
        //  128    131    235    236    Any
        //  132    135    206    212    Ljava/io/IOException;
        //  132    135    235    236    Any
        //  137    140    206    212    Ljava/io/IOException;
        //  137    140    235    236    Any
        //  142    146    206    212    Ljava/io/IOException;
        //  142    146    235    236    Any
        //  150    155    206    212    Ljava/io/IOException;
        //  150    155    235    236    Any
        //  157    162    206    212    Ljava/io/IOException;
        //  157    162    235    236    Any
        //  163    168    206    212    Ljava/io/IOException;
        //  163    168    235    236    Any
        //  168    172    253    257    Ljava/io/IOException;
        //  168    172    247    253    Any
        //  174    178    253    257    Ljava/io/IOException;
        //  174    178    247    253    Any
        //  178    182    253    257    Ljava/io/IOException;
        //  178    182    247    253    Any
        //  187    191    253    257    Ljava/io/IOException;
        //  187    191    247    253    Any
        //  192    198    253    257    Ljava/io/IOException;
        //  192    198    247    253    Any
        //  198    202    242    247    Any
        //  222    227    247    253    Any
        //  227    231    242    247    Any
        //  236    240    242    247    Any
        //  240    242    242    247    Any
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
    
    public void ci(final File cq) {
        synchronized (this) {
            this.cQ = cq;
        }
    }
    
    boolean cj() {
        synchronized (this) {
            Preconditions.assertNonUiThread();
            if (this.cT != null) {
                this.cR = d.TN(this.cT.getString(this.cP, (String)null), new b());
            }
            if (this.cQ == null) {
                return false;
            }
            this.mLearners.clear();
            if (!this.cQ.exists()) {
                return false;
            }
            try {
                final File cq = this.cQ;
                try {
                    final byte[] cd = com.google.android.apps.nexuslauncher.util.b.cD(cq);
                    try {
                        final k aq = k.aq(cd);
                        try {
                            final HashMap mLearners = this.mLearners;
                            try {
                                com.google.android.apps.nexuslauncher.reflection.e.a.bw(aq, mLearners, this.cR);
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
    
    public void ck(final i i) {
        synchronized (this) {
            synchronized (i) {
                this.mLearners.clear();
                this.mLearners.putAll(i.mLearners);
            }
        }
    }
    
    public void cl(final String s, final b b) {
        // monitorenter(this)
        final String s2 = "system";
        try {
            if (!s.equals(s2)) {
                this.cf(s, b);
            }
            if (!b.getId().startsWith("/deleted_app/") && this.cR != null) {
                this.cR.TM(b);
            }
            this.cS.aO(b.ax());
            this.cS.aP(b);
        }
        finally {
        }
        // monitorexit(this)
    }
    
    public e cm(final String s, final b b) {
        synchronized (this) {
            final a a = this.mLearners.get(s);
            if (a == null) {
                final e e = new e();
                e.TX(new ArrayList());
                return e;
            }
            if (a.TA().isEmpty()) {
                final e e2 = new e();
                e2.TX(new ArrayList());
                return e2;
            }
            final e ts = a.Ts(b);
            ts.Ua();
            return ts;
        }
    }
    
    public void cn(final String s, final String s2) {
        synchronized (this) {
            final String string = "/deleted_app/" + System.currentTimeMillis() + "/";
            final HashMap hashMap = new HashMap();
            final a a = this.mLearners.get(s);
            if (a != null) {
                a.Ty(s2, string, hashMap);
                this.ch();
            }
            this.cS.aQ(s2, string, hashMap);
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

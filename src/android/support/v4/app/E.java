// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.support.v4.a.j;
import android.view.ContextMenu$ContextMenuInfo;
import android.view.ContextMenu;
import android.content.Intent;
import android.content.res.Resources;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.os.Parcelable;
import android.os.Looper;
import android.animation.Animator;
import android.app.Activity;
import android.view.MenuInflater;
import android.content.res.Configuration;
import android.view.MenuItem;
import android.view.Menu;
import android.support.v4.view.C;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.View;
import android.os.Bundle;
import android.util.SparseArray;
import android.support.v4.a.k;
import android.view.View$OnCreateContextMenuListener;
import android.content.ComponentCallbacks;

public class e implements ComponentCallbacks, View$OnCreateContextMenuListener
{
    private static final k WG;
    static final Object Wo;
    SparseArray WA;
    int WB;
    boolean WC;
    az WD;
    boolean WE;
    boolean WF;
    aV WH;
    Bundle WI;
    Bundle WJ;
    int WK;
    View WL;
    String WM;
    boolean WN;
    boolean WO;
    boolean WP;
    int WQ;
    boolean WR;
    aY WS;
    aD WT;
    e WU;
    e WV;
    float WW;
    boolean WX;
    boolean WY;
    ViewGroup Wj;
    p Wk;
    String Wl;
    boolean Wm;
    boolean Wn;
    boolean Wp;
    boolean Wq;
    int Wr;
    int Ws;
    boolean Wt;
    boolean Wu;
    boolean Wv;
    aV Ww;
    int Wx;
    boolean Wy;
    boolean Wz;
    boolean mCalled;
    LayoutInflater mLayoutInflater;
    int mState;
    View mView;
    
    static {
        WG = new k();
        Wo = new Object();
    }
    
    public e() {
        final boolean b = true;
        final int n = -1;
        this.mState = 0;
        this.Wr = n;
        this.WK = n;
        this.WX = b;
        this.Wz = b;
    }
    
    static boolean aiC(final Context context, final String s) {
        try {
            final Object value = e.WG.get(s);
            try {
                Class<?> loadClass = (Class<?>)value;
                if (loadClass == null) {
                    loadClass = context.getClassLoader().loadClass(s);
                    try {
                        e.WG.put(s, loadClass);
                    }
                    catch (ClassNotFoundException ex) {
                        return false;
                    }
                }
                return e.class.isAssignableFrom(loadClass);
            }
            catch (ClassNotFoundException ex2) {}
        }
        catch (ClassNotFoundException ex3) {}
    }
    
    private void aiG() {
        aq abf;
        if (this.WT != null) {
            this.WT.abj = false;
            abf = this.WT.abf;
            this.WT.abf = null;
        }
        else {
            abf = null;
        }
        if (abf != null) {
            abf.aih();
        }
    }
    
    public static e aiU(final Context p0, final String p1, final Bundle p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: getstatic       android/support/v4/app/e.WG:Landroid/support/v4/a/k;
        //     3: astore_3       
        //     4: aload_3        
        //     5: aload_1        
        //     6: invokevirtual   android/support/v4/a/k.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //     9: astore_3       
        //    10: aload_3        
        //    11: checkcast       Ljava/lang/Class;
        //    14: astore_3       
        //    15: aload_3        
        //    16: ifnull          62
        //    19: aconst_null    
        //    20: astore          4
        //    22: iconst_0       
        //    23: anewarray       Ljava/lang/Class;
        //    26: astore          4
        //    28: aload_3        
        //    29: aload           4
        //    31: invokevirtual   java/lang/Class.getConstructor:([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
        //    34: astore_3       
        //    35: aconst_null    
        //    36: astore          4
        //    38: iconst_0       
        //    39: anewarray       Ljava/lang/Object;
        //    42: astore          4
        //    44: aload_3        
        //    45: aload           4
        //    47: invokevirtual   java/lang/reflect/Constructor.newInstance:([Ljava/lang/Object;)Ljava/lang/Object;
        //    50: astore_3       
        //    51: aload_3        
        //    52: checkcast       Landroid/support/v4/app/e;
        //    55: astore_3       
        //    56: aload_2        
        //    57: ifnonnull       142
        //    60: aload_3        
        //    61: areturn        
        //    62: aload_0        
        //    63: invokevirtual   android/content/Context.getClassLoader:()Ljava/lang/ClassLoader;
        //    66: astore_3       
        //    67: aload_3        
        //    68: aload_1        
        //    69: invokevirtual   java/lang/ClassLoader.loadClass:(Ljava/lang/String;)Ljava/lang/Class;
        //    72: astore_3       
        //    73: getstatic       android/support/v4/app/e.WG:Landroid/support/v4/a/k;
        //    76: astore          4
        //    78: aload           4
        //    80: aload_1        
        //    81: aload_3        
        //    82: invokevirtual   android/support/v4/a/k.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //    85: pop            
        //    86: goto            19
        //    89: astore_3       
        //    90: new             Landroid/support/v4/app/Fragment$InstantiationException;
        //    93: astore          4
        //    95: new             Ljava/lang/StringBuilder;
        //    98: astore          5
        //   100: aload           5
        //   102: invokespecial   java/lang/StringBuilder.<init>:()V
        //   105: aload           5
        //   107: ldc             "Unable to instantiate fragment "
        //   109: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   112: aload_1        
        //   113: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   116: ldc             ": make sure class name exists, is public, and has an"
        //   118: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   121: ldc             " empty constructor that is public"
        //   123: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   126: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   129: astore          5
        //   131: aload           4
        //   133: aload           5
        //   135: aload_3        
        //   136: invokespecial   android/support/v4/app/Fragment$InstantiationException.<init>:(Ljava/lang/String;Ljava/lang/Exception;)V
        //   139: aload           4
        //   141: athrow         
        //   142: aload_3        
        //   143: invokevirtual   java/lang/Object.getClass:()Ljava/lang/Class;
        //   146: astore          4
        //   148: aload           4
        //   150: invokevirtual   java/lang/Class.getClassLoader:()Ljava/lang/ClassLoader;
        //   153: astore          4
        //   155: aload_2        
        //   156: aload           4
        //   158: invokevirtual   android/os/Bundle.setClassLoader:(Ljava/lang/ClassLoader;)V
        //   161: aload_3        
        //   162: aload_2        
        //   163: invokevirtual   android/support/v4/app/e.ajg:(Landroid/os/Bundle;)V
        //   166: goto            60
        //   169: astore_3       
        //   170: new             Landroid/support/v4/app/Fragment$InstantiationException;
        //   173: astore          4
        //   175: new             Ljava/lang/StringBuilder;
        //   178: astore          5
        //   180: aload           5
        //   182: invokespecial   java/lang/StringBuilder.<init>:()V
        //   185: aload           5
        //   187: ldc             "Unable to instantiate fragment "
        //   189: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   192: aload_1        
        //   193: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   196: ldc             ": make sure class name exists, is public, and has an"
        //   198: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   201: ldc             " empty constructor that is public"
        //   203: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   206: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   209: astore          5
        //   211: aload           4
        //   213: aload           5
        //   215: aload_3        
        //   216: invokespecial   android/support/v4/app/Fragment$InstantiationException.<init>:(Ljava/lang/String;Ljava/lang/Exception;)V
        //   219: aload           4
        //   221: athrow         
        //   222: astore_3       
        //   223: new             Landroid/support/v4/app/Fragment$InstantiationException;
        //   226: astore          4
        //   228: new             Ljava/lang/StringBuilder;
        //   231: astore          5
        //   233: aload           5
        //   235: invokespecial   java/lang/StringBuilder.<init>:()V
        //   238: aload           5
        //   240: ldc             "Unable to instantiate fragment "
        //   242: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   245: aload_1        
        //   246: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   249: ldc             ": make sure class name exists, is public, and has an"
        //   251: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   254: ldc             " empty constructor that is public"
        //   256: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   259: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   262: astore          5
        //   264: aload           4
        //   266: aload           5
        //   268: aload_3        
        //   269: invokespecial   android/support/v4/app/Fragment$InstantiationException.<init>:(Ljava/lang/String;Ljava/lang/Exception;)V
        //   272: aload           4
        //   274: athrow         
        //   275: astore_3       
        //   276: new             Landroid/support/v4/app/Fragment$InstantiationException;
        //   279: astore          4
        //   281: new             Ljava/lang/StringBuilder;
        //   284: astore          5
        //   286: aload           5
        //   288: invokespecial   java/lang/StringBuilder.<init>:()V
        //   291: aload           5
        //   293: ldc             "Unable to instantiate fragment "
        //   295: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   298: aload_1        
        //   299: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   302: ldc             ": could not find Fragment constructor"
        //   304: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   307: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   310: astore          5
        //   312: aload           4
        //   314: aload           5
        //   316: aload_3        
        //   317: invokespecial   android/support/v4/app/Fragment$InstantiationException.<init>:(Ljava/lang/String;Ljava/lang/Exception;)V
        //   320: aload           4
        //   322: athrow         
        //   323: astore_3       
        //   324: new             Landroid/support/v4/app/Fragment$InstantiationException;
        //   327: astore          4
        //   329: new             Ljava/lang/StringBuilder;
        //   332: astore          5
        //   334: aload           5
        //   336: invokespecial   java/lang/StringBuilder.<init>:()V
        //   339: aload           5
        //   341: ldc             "Unable to instantiate fragment "
        //   343: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   346: aload_1        
        //   347: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   350: ldc             ": calling Fragment constructor caused an exception"
        //   352: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   355: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   358: astore          5
        //   360: aload           4
        //   362: aload           5
        //   364: aload_3        
        //   365: invokespecial   android/support/v4/app/Fragment$InstantiationException.<init>:(Ljava/lang/String;Ljava/lang/Exception;)V
        //   368: aload           4
        //   370: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                         
        //  -----  -----  -----  -----  ---------------------------------------------
        //  0      3      89     142    Ljava/lang/ClassNotFoundException;
        //  0      3      169    222    Ljava/lang/InstantiationException;
        //  0      3      222    275    Ljava/lang/IllegalAccessException;
        //  0      3      275    323    Ljava/lang/NoSuchMethodException;
        //  0      3      323    371    Ljava/lang/reflect/InvocationTargetException;
        //  5      9      89     142    Ljava/lang/ClassNotFoundException;
        //  5      9      169    222    Ljava/lang/InstantiationException;
        //  5      9      222    275    Ljava/lang/IllegalAccessException;
        //  5      9      275    323    Ljava/lang/NoSuchMethodException;
        //  5      9      323    371    Ljava/lang/reflect/InvocationTargetException;
        //  10     14     89     142    Ljava/lang/ClassNotFoundException;
        //  10     14     169    222    Ljava/lang/InstantiationException;
        //  10     14     222    275    Ljava/lang/IllegalAccessException;
        //  10     14     275    323    Ljava/lang/NoSuchMethodException;
        //  10     14     323    371    Ljava/lang/reflect/InvocationTargetException;
        //  22     26     89     142    Ljava/lang/ClassNotFoundException;
        //  22     26     169    222    Ljava/lang/InstantiationException;
        //  22     26     222    275    Ljava/lang/IllegalAccessException;
        //  22     26     275    323    Ljava/lang/NoSuchMethodException;
        //  22     26     323    371    Ljava/lang/reflect/InvocationTargetException;
        //  29     34     89     142    Ljava/lang/ClassNotFoundException;
        //  29     34     169    222    Ljava/lang/InstantiationException;
        //  29     34     222    275    Ljava/lang/IllegalAccessException;
        //  29     34     275    323    Ljava/lang/NoSuchMethodException;
        //  29     34     323    371    Ljava/lang/reflect/InvocationTargetException;
        //  38     42     89     142    Ljava/lang/ClassNotFoundException;
        //  38     42     169    222    Ljava/lang/InstantiationException;
        //  38     42     222    275    Ljava/lang/IllegalAccessException;
        //  38     42     275    323    Ljava/lang/NoSuchMethodException;
        //  38     42     323    371    Ljava/lang/reflect/InvocationTargetException;
        //  45     50     89     142    Ljava/lang/ClassNotFoundException;
        //  45     50     169    222    Ljava/lang/InstantiationException;
        //  45     50     222    275    Ljava/lang/IllegalAccessException;
        //  45     50     275    323    Ljava/lang/NoSuchMethodException;
        //  45     50     323    371    Ljava/lang/reflect/InvocationTargetException;
        //  51     55     89     142    Ljava/lang/ClassNotFoundException;
        //  51     55     169    222    Ljava/lang/InstantiationException;
        //  51     55     222    275    Ljava/lang/IllegalAccessException;
        //  51     55     275    323    Ljava/lang/NoSuchMethodException;
        //  51     55     323    371    Ljava/lang/reflect/InvocationTargetException;
        //  62     66     89     142    Ljava/lang/ClassNotFoundException;
        //  62     66     169    222    Ljava/lang/InstantiationException;
        //  62     66     222    275    Ljava/lang/IllegalAccessException;
        //  62     66     275    323    Ljava/lang/NoSuchMethodException;
        //  62     66     323    371    Ljava/lang/reflect/InvocationTargetException;
        //  68     72     89     142    Ljava/lang/ClassNotFoundException;
        //  68     72     169    222    Ljava/lang/InstantiationException;
        //  68     72     222    275    Ljava/lang/IllegalAccessException;
        //  68     72     275    323    Ljava/lang/NoSuchMethodException;
        //  68     72     323    371    Ljava/lang/reflect/InvocationTargetException;
        //  73     76     89     142    Ljava/lang/ClassNotFoundException;
        //  73     76     169    222    Ljava/lang/InstantiationException;
        //  73     76     222    275    Ljava/lang/IllegalAccessException;
        //  73     76     275    323    Ljava/lang/NoSuchMethodException;
        //  73     76     323    371    Ljava/lang/reflect/InvocationTargetException;
        //  81     86     89     142    Ljava/lang/ClassNotFoundException;
        //  81     86     169    222    Ljava/lang/InstantiationException;
        //  81     86     222    275    Ljava/lang/IllegalAccessException;
        //  81     86     275    323    Ljava/lang/NoSuchMethodException;
        //  81     86     323    371    Ljava/lang/reflect/InvocationTargetException;
        //  142    146    89     142    Ljava/lang/ClassNotFoundException;
        //  142    146    169    222    Ljava/lang/InstantiationException;
        //  142    146    222    275    Ljava/lang/IllegalAccessException;
        //  142    146    275    323    Ljava/lang/NoSuchMethodException;
        //  142    146    323    371    Ljava/lang/reflect/InvocationTargetException;
        //  148    153    89     142    Ljava/lang/ClassNotFoundException;
        //  148    153    169    222    Ljava/lang/InstantiationException;
        //  148    153    222    275    Ljava/lang/IllegalAccessException;
        //  148    153    275    323    Ljava/lang/NoSuchMethodException;
        //  148    153    323    371    Ljava/lang/reflect/InvocationTargetException;
        //  156    161    89     142    Ljava/lang/ClassNotFoundException;
        //  156    161    169    222    Ljava/lang/InstantiationException;
        //  156    161    222    275    Ljava/lang/IllegalAccessException;
        //  156    161    275    323    Ljava/lang/NoSuchMethodException;
        //  156    161    323    371    Ljava/lang/reflect/InvocationTargetException;
        //  162    166    89     142    Ljava/lang/ClassNotFoundException;
        //  162    166    169    222    Ljava/lang/InstantiationException;
        //  162    166    222    275    Ljava/lang/IllegalAccessException;
        //  162    166    275    323    Ljava/lang/NoSuchMethodException;
        //  162    166    323    371    Ljava/lang/reflect/InvocationTargetException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 180, Size: 180
        //     at java.util.ArrayList.rangeCheck(Unknown Source)
        //     at java.util.ArrayList.get(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3303)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3551)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3417)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3417)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3417)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3417)
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
    
    private aD ajb() {
        if (this.WT == null) {
            this.WT = new aD();
        }
        return this.WT;
    }
    
    public void aiA(final e e) {
    }
    
    public LayoutInflater aiD(final Bundle bundle) {
        if (this.Wk != null) {
            final LayoutInflater akx = this.Wk.akx();
            this.aiJ();
            C.agq(akx, this.WH.aoA());
            return akx;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }
    
    public Object aiE() {
        if (this.WT != null) {
            Object o;
            if (this.WT.abk != e.Wo) {
                o = this.WT.abk;
            }
            else {
                o = this.ajG();
            }
            return o;
        }
        return null;
    }
    
    public void aiF() {
    }
    
    void aiH(final Menu menu) {
        if (!this.WY) {
            if (this.Wu && this.WX) {
                this.ajq(menu);
            }
            if (this.WH != null) {
                this.WH.apc(menu);
            }
        }
    }
    
    boolean aiI() {
        return this.WT != null && this.WT.abj;
    }
    
    public final bb aiJ() {
        if (this.WH == null) {
            this.aio();
            if (this.mState < 5) {
                if (this.mState < 4) {
                    if (this.mState < 2) {
                        if (this.mState >= 1) {
                            this.WH.apL();
                        }
                    }
                    else {
                        this.WH.apv();
                    }
                }
                else {
                    this.WH.aob();
                }
            }
            else {
                this.WH.aqf();
            }
        }
        return this.WH;
    }
    
    void aiK() {
        if (this.WH != null) {
            this.WH.apU();
            this.WH.aoZ();
        }
        this.mState = 5;
        this.mCalled = false;
        this.onResume();
        if (this.mCalled) {
            if (this.WH != null) {
                this.WH.aqf();
                this.WH.aoZ();
            }
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onResume()");
    }
    
    int aiL() {
        if (this.WT != null) {
            return this.WT.abn;
        }
        return 0;
    }
    
    LayoutInflater aiM(final Bundle bundle) {
        return this.mLayoutInflater = this.aiw(bundle);
    }
    
    int aiN() {
        if (this.WT != null) {
            return this.WT.aaY;
        }
        return 0;
    }
    
    View aiO(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        if (this.WH != null) {
            this.WH.apU();
        }
        this.WF = true;
        return this.ajz(layoutInflater, viewGroup, bundle);
    }
    
    boolean aiP(final Menu menu) {
        boolean b = false;
        if (!this.WY) {
            if (this.Wu && this.WX) {
                b = true;
                this.onPrepareOptionsMenu(menu);
            }
            if (this.WH != null) {
                b |= this.WH.apI(menu);
            }
        }
        return b;
    }
    
    public Object aiQ() {
        if (this.WT != null) {
            Object o;
            if (this.WT.abp != e.Wo) {
                o = this.WT.abp;
            }
            else {
                o = this.ajh();
            }
            return o;
        }
        return null;
    }
    
    public boolean aiR() {
        return this.WT == null || this.WT.abo == null || this.WT.abo;
    }
    
    int aiS() {
        if (this.WT != null) {
            return this.WT.abd;
        }
        return 0;
    }
    
    void aiT() {
        this.mCalled = false;
        this.ajK();
        this.mLayoutInflater = null;
        if (this.mCalled) {
            if (this.WH != null) {
                if (!this.Wp) {
                    throw new IllegalStateException("Child FragmentManager of " + this + " was not " + " destroyed and this fragment is not retaining instance");
                }
                this.WH.aoL();
                this.WH = null;
            }
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDetach()");
    }
    
    public boolean aiV(final MenuItem menuItem) {
        return false;
    }
    
    void aiW(final Configuration configuration) {
        this.onConfigurationChanged(configuration);
        if (this.WH != null) {
            this.WH.apz(configuration);
        }
    }
    
    final boolean aiX() {
        boolean b = false;
        if (this.WB > 0) {
            b = true;
        }
        return b;
    }
    
    void aiY(final boolean b) {
        this.onMultiWindowModeChanged(b);
        if (this.WH != null) {
            this.WH.aqg(b);
        }
    }
    
    public void aiZ(final Menu menu, final MenuInflater menuInflater) {
    }
    
    void aio() {
        if (this.Wk != null) {
            (this.WH = new aV()).aps(this.Wk, new Z(this), this);
            return;
        }
        throw new IllegalStateException("Fragment has not been attached yet.");
    }
    
    bd aip() {
        if (this.WT != null) {
            return this.WT.aba;
        }
        return null;
    }
    
    View aiq() {
        if (this.WT != null) {
            return this.WT.abb;
        }
        return null;
    }
    
    void air(final Bundle bundle) {
        if (this.WH != null) {
            this.WH.apU();
        }
        this.mState = 2;
        this.mCalled = false;
        this.aiu(bundle);
        if (this.mCalled) {
            if (this.WH != null) {
                this.WH.apv();
            }
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onActivityCreated()");
    }
    
    public void ais(final Context context) {
        Activity activity = null;
        this.mCalled = true;
        if (this.Wk != null) {
            activity = this.Wk.getActivity();
        }
        if (activity != null) {
            this.mCalled = false;
            this.ajN(activity);
        }
    }
    
    void ait() {
        this.onLowMemory();
        if (this.WH != null) {
            this.WH.aoU();
        }
    }
    
    public void aiu(final Bundle bundle) {
        this.mCalled = true;
    }
    
    public final boolean aiv() {
        return this.WN;
    }
    
    public LayoutInflater aiw(final Bundle bundle) {
        return this.aiD(bundle);
    }
    
    boolean aix() {
        return this.WT != null && this.WT.abm;
    }
    
    void aiy() {
        if (this.WH != null) {
            this.WH.apl();
        }
        this.mState = 4;
        this.mCalled = false;
        this.onPause();
        if (this.mCalled) {
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onPause()");
    }
    
    bd aiz() {
        if (this.WT != null) {
            return this.WT.aaZ;
        }
        return null;
    }
    
    public void ajA(final Bundle bundle) {
        this.mCalled = true;
    }
    
    public Object ajB() {
        if (this.WT != null) {
            Object o;
            if (this.WT.abq != e.Wo) {
                o = this.WT.abq;
            }
            else {
                o = this.aju();
            }
            return o;
        }
        return null;
    }
    
    boolean ajC(final Menu menu, final MenuInflater menuInflater) {
        boolean b = false;
        if (!this.WY) {
            if (this.Wu && this.WX) {
                b = true;
                this.aiZ(menu, menuInflater);
            }
            if (this.WH != null) {
                b |= this.WH.aod(menu, menuInflater);
            }
        }
        return b;
    }
    
    public Animator ajD(final int n, final boolean b, final int n2) {
        return null;
    }
    
    final void ajE(final Bundle bundle) {
        if (this.WA != null) {
            this.WL.restoreHierarchyState(this.WA);
            this.WA = null;
        }
        this.mCalled = false;
        this.ajA(bundle);
        if (this.mCalled) {
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onViewStateRestored()");
    }
    
    void ajF() {
        if (this.WH != null) {
            this.WH.aoP();
        }
        this.mState = 2;
        if (this.Wq) {
            this.Wq = false;
            if (!this.Wv) {
                this.Wv = true;
                this.WS = this.Wk.akj(this.Wl, this.Wq, false);
            }
            if (this.WS != null) {
                if (!this.Wk.ako()) {
                    this.WS.aqr();
                }
                else {
                    this.WS.aqn();
                }
            }
        }
    }
    
    public Object ajG() {
        if (this.WT != null) {
            return this.WT.abi;
        }
        return null;
    }
    
    int ajH() {
        if (this.WT != null) {
            return this.WT.abe;
        }
        return 0;
    }
    
    public final boolean ajI() {
        return this.Ww != null && this.Ww.apS();
    }
    
    void ajJ() {
        this.Wr = -1;
        this.Wl = null;
        this.Wm = false;
        this.WN = false;
        this.WC = false;
        this.Wy = false;
        this.Wt = false;
        this.WB = 0;
        this.Ww = null;
        this.WH = null;
        this.Wk = null;
        this.Wx = 0;
        this.Ws = 0;
        this.WM = null;
        this.WY = false;
        this.WR = false;
        this.Wp = false;
        this.WS = null;
        this.Wq = false;
        this.Wv = false;
    }
    
    public void ajK() {
        this.mCalled = true;
    }
    
    boolean ajL(final MenuItem menuItem) {
        final boolean b = true;
        if (!this.WY) {
            if (this.aiV(menuItem)) {
                return b;
            }
            if (this.WH != null && this.WH.aoC(menuItem)) {
                return b;
            }
        }
        return false;
    }
    
    void ajM() {
        if (this.WH != null) {
            this.WH.apU();
        }
    }
    
    public void ajN(final Activity activity) {
        this.mCalled = true;
    }
    
    public boolean ajO(final MenuItem menuItem) {
        return false;
    }
    
    void ajP(final int abn, final int aaY) {
        if (this.WT == null && abn == 0 && aaY == 0) {
            return;
        }
        this.ajb();
        this.WT.abn = abn;
        this.WT.aaY = aaY;
    }
    
    public void ajQ() {
        if (this.Ww != null && this.Ww.abY != null) {
            if (Looper.myLooper() == this.Ww.abY.getHandler().getLooper()) {
                this.aiG();
            }
            else {
                this.Ww.abY.getHandler().postAtFrontOfQueue((Runnable)new P(this));
            }
        }
        else {
            this.ajb().abj = false;
        }
    }
    
    void ajR(final Bundle bundle) {
        this.onSaveInstanceState(bundle);
        if (this.WH != null) {
            final Parcelable aog = this.WH.aog();
            if (aog != null) {
                bundle.putParcelable("android:support:fragments", aog);
            }
        }
    }
    
    public void ajS(final boolean b) {
    }
    
    public boolean ajT() {
        return this.WT == null || this.WT.abg == null || this.WT.abg;
    }
    
    void ajU() {
        if (this.WH != null) {
            this.WH.aoG();
        }
        this.mState = 1;
        this.mCalled = false;
        this.ajs();
        if (this.mCalled) {
            if (this.WS != null) {
                this.WS.aqp();
            }
            this.WF = false;
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDestroyView()");
    }
    
    public Animation ajV(final int n, final boolean b, final int n2) {
        return null;
    }
    
    void ajW(final aq abf) {
        this.ajb();
        if (abf == this.WT.abf) {
            return;
        }
        if (abf != null && this.WT.abf != null) {
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
        if (this.WT.abj) {
            this.WT.abf = abf;
        }
        if (abf != null) {
            abf.startListening();
        }
    }
    
    public final bb ajX() {
        return this.Ww;
    }
    
    void aja() {
        if (this.WH != null) {
            this.WH.aoL();
        }
        this.mState = 0;
        this.mCalled = false;
        this.onDestroy();
        if (this.mCalled) {
            this.WH = null;
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDestroy()");
    }
    
    public void ajc(final Activity activity, final AttributeSet set, final Bundle bundle) {
        this.mCalled = true;
    }
    
    boolean ajd(final MenuItem menuItem) {
        final boolean b = true;
        if (!this.WY) {
            if (this.Wu && this.WX && this.ajO(menuItem)) {
                return b;
            }
            if (this.WH != null && this.WH.apP(menuItem)) {
                return b;
            }
        }
        return false;
    }
    
    void aje(final Animator abl) {
        this.ajb().abl = abl;
    }
    
    void ajf(final int abe) {
        this.ajb().abe = abe;
    }
    
    public void ajg(final Bundle wj) {
        if (this.Wr >= 0 && this.ajI()) {
            throw new IllegalStateException("Fragment already active and state has been saved");
        }
        this.WJ = wj;
    }
    
    public Object ajh() {
        if (this.WT != null) {
            return this.WT.abc;
        }
        return null;
    }
    
    public View aji() {
        return this.mView;
    }
    
    void ajj(final View abb) {
        this.ajb().abb = abb;
    }
    
    void ajk() {
        if (this.WH != null) {
            this.WH.aoF();
        }
        this.mState = 3;
        this.mCalled = false;
        this.onStop();
        if (this.mCalled) {
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onStop()");
    }
    
    void ajl() {
        if (this.WH != null) {
            this.WH.apU();
            this.WH.aoZ();
        }
        this.mState = 4;
        this.mCalled = false;
        this.onStart();
        if (this.mCalled) {
            if (this.WH != null) {
                this.WH.aob();
            }
            if (this.WS != null) {
                this.WS.aqs();
            }
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onStart()");
    }
    
    void ajm(final Bundle bundle) {
        if (bundle != null) {
            final Parcelable parcelable = bundle.getParcelable("android:support:fragments");
            if (parcelable != null) {
                if (this.WH == null) {
                    this.aio();
                }
                this.WH.aoW(parcelable, this.WD);
                this.WD = null;
                this.WH.apL();
            }
        }
    }
    
    public void ajn(final View view, final Bundle bundle) {
    }
    
    void ajo(final boolean b) {
        this.onPictureInPictureModeChanged(b);
        if (this.WH != null) {
            this.WH.apE(b);
        }
    }
    
    public void ajp(final Context context, final AttributeSet set, final Bundle bundle) {
        Activity activity = null;
        this.mCalled = true;
        if (this.Wk != null) {
            activity = this.Wk.getActivity();
        }
        if (activity != null) {
            this.mCalled = false;
            this.ajc(activity, set, bundle);
        }
    }
    
    public void ajq(final Menu menu) {
    }
    
    void ajr(final Bundle bundle) {
        if (this.WH != null) {
            this.WH.apU();
        }
        this.mState = 1;
        this.mCalled = false;
        this.onCreate(bundle);
        if (this.mCalled) {
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onCreate()");
    }
    
    public void ajs() {
        this.mCalled = true;
    }
    
    bb ajt() {
        return this.WH;
    }
    
    public Object aju() {
        if (this.WT != null) {
            return this.WT.abh;
        }
        return null;
    }
    
    void ajv(final int abd) {
        if (this.WT == null && abd == 0) {
            return;
        }
        this.ajb().abd = abd;
    }
    
    void ajw(final boolean abm) {
        this.ajb().abm = abm;
    }
    
    e ajx(final String s) {
        if (s.equals(this.Wl)) {
            return this;
        }
        if (this.WH == null) {
            return null;
        }
        return this.WH.apG(s);
    }
    
    final void ajy(final int wr, final e e) {
        this.Wr = wr;
        if (e == null) {
            this.Wl = "android:fragment:" + this.Wr;
        }
        else {
            this.Wl = e.Wl + ":" + this.Wr;
        }
    }
    
    public View ajz(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        return null;
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        printWriter.print(s);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.Wx));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.Ws));
        printWriter.print(" mTag=");
        printWriter.println(this.WM);
        printWriter.print(s);
        printWriter.print("mState=");
        printWriter.print(this.mState);
        printWriter.print(" mIndex=");
        printWriter.print(this.Wr);
        printWriter.print(" mWho=");
        printWriter.print(this.Wl);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.WB);
        printWriter.print(s);
        printWriter.print("mAdded=");
        printWriter.print(this.Wm);
        printWriter.print(" mRemoving=");
        printWriter.print(this.WN);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.WC);
        printWriter.print(" mInLayout=");
        printWriter.println(this.Wy);
        printWriter.print(s);
        printWriter.print("mHidden=");
        printWriter.print(this.WY);
        printWriter.print(" mDetached=");
        printWriter.print(this.WR);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.WX);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.Wu);
        printWriter.print(s);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.WP);
        printWriter.print(" mRetaining=");
        printWriter.print(this.Wp);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.Wz);
        if (this.Ww != null) {
            printWriter.print(s);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.Ww);
        }
        if (this.Wk != null) {
            printWriter.print(s);
            printWriter.print("mHost=");
            printWriter.println(this.Wk);
        }
        if (this.WV != null) {
            printWriter.print(s);
            printWriter.print("mParentFragment=");
            printWriter.println(this.WV);
        }
        if (this.WJ != null) {
            printWriter.print(s);
            printWriter.print("mArguments=");
            printWriter.println(this.WJ);
        }
        if (this.WI != null) {
            printWriter.print(s);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.WI);
        }
        if (this.WA != null) {
            printWriter.print(s);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.WA);
        }
        if (this.WU != null) {
            printWriter.print(s);
            printWriter.print("mTarget=");
            printWriter.print(this.WU);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.WQ);
        }
        if (this.aiS() != 0) {
            printWriter.print(s);
            printWriter.print("mNextAnim=");
            printWriter.println(this.aiS());
        }
        if (this.Wj != null) {
            printWriter.print(s);
            printWriter.print("mContainer=");
            printWriter.println(this.Wj);
        }
        if (this.mView != null) {
            printWriter.print(s);
            printWriter.print("mView=");
            printWriter.println(this.mView);
        }
        if (this.WL != null) {
            printWriter.print(s);
            printWriter.print("mInnerView=");
            printWriter.println(this.mView);
        }
        if (this.aiq() != null) {
            printWriter.print(s);
            printWriter.print("mAnimatingAway=");
            printWriter.println(this.aiq());
            printWriter.print(s);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(this.ajH());
        }
        if (this.WS != null) {
            printWriter.print(s);
            printWriter.println("Loader Manager:");
            this.WS.dump(s + "  ", fileDescriptor, printWriter, array);
        }
        if (this.WH != null) {
            printWriter.print(s);
            printWriter.println("Child " + this.WH + ":");
            this.WH.dump(s + "  ", fileDescriptor, printWriter, array);
        }
    }
    
    public final boolean equals(final Object o) {
        return super.equals(o);
    }
    
    public final a getActivity() {
        a a = null;
        if (this.Wk != null) {
            a = (a)this.Wk.getActivity();
        }
        return a;
    }
    
    Animator getAnimator() {
        if (this.WT != null) {
            return this.WT.abl;
        }
        return null;
    }
    
    public final Resources getResources() {
        if (this.Wk != null) {
            return this.Wk.getContext().getResources();
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }
    
    public final int hashCode() {
        return super.hashCode();
    }
    
    public void onActivityResult(final int n, final int n2, final Intent intent) {
    }
    
    public void onConfigurationChanged(final Configuration configuration) {
        this.mCalled = true;
    }
    
    public void onCreate(final Bundle bundle) {
        final int mCalled = 1;
        this.mCalled = (mCalled != 0);
        this.ajm(bundle);
        if (this.WH != null && !this.WH.apZ(mCalled)) {
            this.WH.apL();
        }
    }
    
    public void onCreateContextMenu(final ContextMenu contextMenu, final View view, final ContextMenu$ContextMenuInfo contextMenu$ContextMenuInfo) {
        this.getActivity().onCreateContextMenu(contextMenu, view, contextMenu$ContextMenuInfo);
    }
    
    public void onDestroy() {
        final boolean b = true;
        this.mCalled = b;
        if (!this.Wv) {
            this.Wv = b;
            this.WS = this.Wk.akj(this.Wl, this.Wq, false);
        }
        if (this.WS != null) {
            this.WS.aql();
        }
    }
    
    public void onLowMemory() {
        this.mCalled = true;
    }
    
    public void onMultiWindowModeChanged(final boolean b) {
    }
    
    public void onPause() {
        this.mCalled = true;
    }
    
    public void onPictureInPictureModeChanged(final boolean b) {
    }
    
    public void onPrepareOptionsMenu(final Menu menu) {
    }
    
    public void onRequestPermissionsResult(final int n, final String[] array, final int[] array2) {
    }
    
    public void onResume() {
        this.mCalled = true;
    }
    
    public void onSaveInstanceState(final Bundle bundle) {
    }
    
    public void onStart() {
        final boolean wv = true;
        this.mCalled = wv;
        if (!this.Wq) {
            this.Wq = wv;
            if (this.Wv) {
                if (this.WS != null) {
                    this.WS.aqq();
                }
            }
            else {
                this.Wv = wv;
                this.WS = this.Wk.akj(this.Wl, this.Wq, false);
            }
        }
    }
    
    public void onStop() {
        this.mCalled = true;
    }
    
    public void startActivityForResult(final Intent intent, final int n) {
        this.startActivityForResult(intent, n, null);
    }
    
    public void startActivityForResult(final Intent intent, final int n, final Bundle bundle) {
        if (this.Wk != null) {
            this.Wk.aky(this, intent, n, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder(128);
        j.aha(this, sb);
        if (this.Wr >= 0) {
            sb.append(" #");
            sb.append(this.Wr);
        }
        if (this.Wx != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.Wx));
        }
        if (this.WM != null) {
            sb.append(" ");
            sb.append(this.WM);
        }
        sb.append('}');
        return sb.toString();
    }
}

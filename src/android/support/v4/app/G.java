// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.support.v4.a.k;
import android.view.ContextMenu$ContextMenuInfo;
import android.view.ContextMenu;
import android.content.Intent;
import android.content.res.Resources;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.view.animation.Animation;
import android.os.Looper;
import android.os.Parcelable;
import android.content.res.Configuration;
import android.view.MenuItem;
import android.animation.Animator;
import android.view.MenuInflater;
import android.util.AttributeSet;
import android.view.Menu;
import android.support.v4.view.B;
import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.ViewGroup;
import android.support.v4.a.b;
import android.view.View$OnCreateContextMenuListener;
import android.content.ComponentCallbacks;

public class g implements ComponentCallbacks, View$OnCreateContextMenuListener
{
    static final Object XY;
    private static final b Yq;
    ViewGroup XT;
    r XU;
    String XV;
    boolean XW;
    boolean XX;
    boolean XZ;
    int YA;
    boolean YB;
    aU YC;
    aA YD;
    g YE;
    g YF;
    float YG;
    boolean YH;
    boolean YI;
    boolean Ya;
    int Yb;
    int Yc;
    boolean Yd;
    boolean Ye;
    boolean Yf;
    aR Yg;
    int Yh;
    boolean Yi;
    boolean Yj;
    SparseArray Yk;
    int Yl;
    boolean Ym;
    ax Yn;
    boolean Yo;
    boolean Yp;
    aR Yr;
    Bundle Ys;
    Bundle Yt;
    int Yu;
    View Yv;
    String Yw;
    boolean Yx;
    boolean Yy;
    boolean Yz;
    boolean mCalled;
    LayoutInflater mLayoutInflater;
    int mState;
    View mView;
    
    static {
        Yq = new b();
        XY = new Object();
    }
    
    public g() {
        final boolean b = true;
        final int n = -1;
        this.mState = 0;
        this.Yb = n;
        this.Yu = n;
        this.YH = b;
        this.Yj = b;
    }
    
    static boolean ajP(final Context context, final String s) {
        try {
            final Object value = g.Yq.get(s);
            try {
                Class<?> loadClass = (Class<?>)value;
                if (loadClass == null) {
                    loadClass = context.getClassLoader().loadClass(s);
                    try {
                        g.Yq.put(s, loadClass);
                    }
                    catch (ClassNotFoundException ex) {
                        return false;
                    }
                }
                return g.class.isAssignableFrom(loadClass);
            }
            catch (ClassNotFoundException ex2) {}
        }
        catch (ClassNotFoundException ex3) {}
    }
    
    private void ajT() {
        ap acA;
        if (this.YD != null) {
            this.YD.acE = false;
            acA = this.YD.acA;
            this.YD.acA = null;
        }
        else {
            acA = null;
        }
        if (acA != null) {
            acA.ajv();
        }
    }
    
    public static g akh(final Context p0, final String p1, final Bundle p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: getstatic       android/support/v4/app/g.Yq:Landroid/support/v4/a/b;
        //     3: astore_3       
        //     4: aload_3        
        //     5: aload_1        
        //     6: invokevirtual   android/support/v4/a/b.get:(Ljava/lang/Object;)Ljava/lang/Object;
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
        //    52: checkcast       Landroid/support/v4/app/g;
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
        //    73: getstatic       android/support/v4/app/g.Yq:Landroid/support/v4/a/b;
        //    76: astore          4
        //    78: aload           4
        //    80: aload_1        
        //    81: aload_3        
        //    82: invokevirtual   android/support/v4/a/b.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
        //   163: invokevirtual   android/support/v4/app/g.akt:(Landroid/os/Bundle;)V
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
    
    private aA ako() {
        if (this.YD == null) {
            this.YD = new aA();
        }
        return this.YD;
    }
    
    void ajB() {
        if (this.XU != null) {
            (this.Yr = new aR()).aqt(this.XU, new aa(this), this);
            return;
        }
        throw new IllegalStateException("Fragment has not been attached yet.");
    }
    
    c ajC() {
        if (this.YD != null) {
            return this.YD.acv;
        }
        return null;
    }
    
    View ajD() {
        if (this.YD != null) {
            return this.YD.acw;
        }
        return null;
    }
    
    void ajE(final Bundle bundle) {
        if (this.Yr != null) {
            this.Yr.aqV();
        }
        this.mState = 2;
        this.mCalled = false;
        this.ajH(bundle);
        if (this.mCalled) {
            if (this.Yr != null) {
                this.Yr.aqw();
            }
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onActivityCreated()");
    }
    
    public void ajF(final Context context) {
        Activity activity = null;
        this.mCalled = true;
        if (this.XU != null) {
            activity = this.XU.getActivity();
        }
        if (activity != null) {
            this.mCalled = false;
            this.ala(activity);
        }
    }
    
    void ajG() {
        this.onLowMemory();
        if (this.Yr != null) {
            this.Yr.apV();
        }
    }
    
    public void ajH(final Bundle bundle) {
        this.mCalled = true;
    }
    
    public final boolean ajI() {
        return this.Yx;
    }
    
    public LayoutInflater ajJ(final Bundle bundle) {
        return this.ajQ(bundle);
    }
    
    boolean ajK() {
        return this.YD != null && this.YD.acH;
    }
    
    void ajL() {
        if (this.Yr != null) {
            this.Yr.aqm();
        }
        this.mState = 4;
        this.mCalled = false;
        this.onPause();
        if (this.mCalled) {
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onPause()");
    }
    
    c ajM() {
        if (this.YD != null) {
            return this.YD.acu;
        }
        return null;
    }
    
    public void ajN(final g g) {
    }
    
    public LayoutInflater ajQ(final Bundle bundle) {
        if (this.XU != null) {
            final LayoutInflater alI = this.XU.alI();
            this.ajW();
            B.ahz(alI, this.Yr.apB());
            return alI;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }
    
    public Object ajR() {
        if (this.YD != null) {
            Object o;
            if (this.YD.acF != g.XY) {
                o = this.YD.acF;
            }
            else {
                o = this.akT();
            }
            return o;
        }
        return null;
    }
    
    public void ajS() {
    }
    
    void ajU(final Menu menu) {
        if (!this.YI) {
            if (this.Ye && this.YH) {
                this.akD(menu);
            }
            if (this.Yr != null) {
                this.Yr.aqd(menu);
            }
        }
    }
    
    boolean ajV() {
        return this.YD != null && this.YD.acE;
    }
    
    public final aW ajW() {
        if (this.Yr == null) {
            this.ajB();
            if (this.mState < 5) {
                if (this.mState < 4) {
                    if (this.mState < 2) {
                        if (this.mState >= 1) {
                            this.Yr.aqM();
                        }
                    }
                    else {
                        this.Yr.aqw();
                    }
                }
                else {
                    this.Yr.apc();
                }
            }
            else {
                this.Yr.arg();
            }
        }
        return this.Yr;
    }
    
    void ajX() {
        if (this.Yr != null) {
            this.Yr.aqV();
            this.Yr.aqa();
        }
        this.mState = 5;
        this.mCalled = false;
        this.onResume();
        if (this.mCalled) {
            if (this.Yr != null) {
                this.Yr.arg();
                this.Yr.aqa();
            }
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onResume()");
    }
    
    int ajY() {
        if (this.YD != null) {
            return this.YD.acI;
        }
        return 0;
    }
    
    LayoutInflater ajZ(final Bundle bundle) {
        return this.mLayoutInflater = this.ajJ(bundle);
    }
    
    public void akA(final View view, final Bundle bundle) {
    }
    
    void akB(final boolean b) {
        this.onPictureInPictureModeChanged(b);
        if (this.Yr != null) {
            this.Yr.aqF(b);
        }
    }
    
    public void akC(final Context context, final AttributeSet set, final Bundle bundle) {
        Activity activity = null;
        this.mCalled = true;
        if (this.XU != null) {
            activity = this.XU.getActivity();
        }
        if (activity != null) {
            this.mCalled = false;
            this.akp(activity, set, bundle);
        }
    }
    
    public void akD(final Menu menu) {
    }
    
    void akE(final Bundle bundle) {
        if (this.Yr != null) {
            this.Yr.aqV();
        }
        this.mState = 1;
        this.mCalled = false;
        this.onCreate(bundle);
        if (this.mCalled) {
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onCreate()");
    }
    
    public void akF() {
        this.mCalled = true;
    }
    
    aW akG() {
        return this.Yr;
    }
    
    public Object akH() {
        if (this.YD != null) {
            return this.YD.acC;
        }
        return null;
    }
    
    void akI(final int acy) {
        if (this.YD == null && acy == 0) {
            return;
        }
        this.ako().acy = acy;
    }
    
    void akJ(final boolean acH) {
        this.ako().acH = acH;
    }
    
    g akK(final String s) {
        if (s.equals(this.XV)) {
            return this;
        }
        if (this.Yr == null) {
            return null;
        }
        return this.Yr.aqH(s);
    }
    
    final void akL(final int yb, final g g) {
        this.Yb = yb;
        if (g == null) {
            this.XV = "android:fragment:" + this.Yb;
        }
        else {
            this.XV = g.XV + ":" + this.Yb;
        }
    }
    
    public View akM(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        return null;
    }
    
    public void akN(final Bundle bundle) {
        this.mCalled = true;
    }
    
    public Object akO() {
        if (this.YD != null) {
            Object o;
            if (this.YD.acL != g.XY) {
                o = this.YD.acL;
            }
            else {
                o = this.akH();
            }
            return o;
        }
        return null;
    }
    
    boolean akP(final Menu menu, final MenuInflater menuInflater) {
        boolean b = false;
        if (!this.YI) {
            if (this.Ye && this.YH) {
                b = true;
                this.akm(menu, menuInflater);
            }
            if (this.Yr != null) {
                b |= this.Yr.ape(menu, menuInflater);
            }
        }
        return b;
    }
    
    public Animator akQ(final int n, final boolean b, final int n2) {
        return null;
    }
    
    final void akR(final Bundle bundle) {
        if (this.Yk != null) {
            this.Yv.restoreHierarchyState(this.Yk);
            this.Yk = null;
        }
        this.mCalled = false;
        this.akN(bundle);
        if (this.mCalled) {
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onViewStateRestored()");
    }
    
    void akS() {
        if (this.Yr != null) {
            this.Yr.apQ();
        }
        this.mState = 2;
        if (this.Ya) {
            this.Ya = false;
            if (!this.Yf) {
                this.Yf = true;
                this.YC = this.XU.alu(this.XV, this.Ya, false);
            }
            if (this.YC != null) {
                if (!this.XU.alz()) {
                    this.YC.ars();
                }
                else {
                    this.YC.aro();
                }
            }
        }
    }
    
    public Object akT() {
        if (this.YD != null) {
            return this.YD.acD;
        }
        return null;
    }
    
    int akU() {
        if (this.YD != null) {
            return this.YD.acz;
        }
        return 0;
    }
    
    public final boolean akV() {
        return this.Yg != null && this.Yg.aqT();
    }
    
    void akW() {
        this.Yb = -1;
        this.XV = null;
        this.XW = false;
        this.Yx = false;
        this.Ym = false;
        this.Yi = false;
        this.Yd = false;
        this.Yl = 0;
        this.Yg = null;
        this.Yr = null;
        this.XU = null;
        this.Yh = 0;
        this.Yc = 0;
        this.Yw = null;
        this.YI = false;
        this.YB = false;
        this.XZ = false;
        this.YC = null;
        this.Ya = false;
        this.Yf = false;
    }
    
    public void akX() {
        this.mCalled = true;
    }
    
    boolean akY(final MenuItem menuItem) {
        final boolean b = true;
        if (!this.YI) {
            if (this.aki(menuItem)) {
                return b;
            }
            if (this.Yr != null && this.Yr.apD(menuItem)) {
                return b;
            }
        }
        return false;
    }
    
    void akZ() {
        if (this.Yr != null) {
            this.Yr.aqV();
        }
    }
    
    int aka() {
        if (this.YD != null) {
            return this.YD.act;
        }
        return 0;
    }
    
    View akb(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        if (this.Yr != null) {
            this.Yr.aqV();
        }
        this.Yp = true;
        return this.akM(layoutInflater, viewGroup, bundle);
    }
    
    boolean akc(final Menu menu) {
        boolean b = false;
        if (!this.YI) {
            if (this.Ye && this.YH) {
                b = true;
                this.onPrepareOptionsMenu(menu);
            }
            if (this.Yr != null) {
                b |= this.Yr.aqJ(menu);
            }
        }
        return b;
    }
    
    public Object akd() {
        if (this.YD != null) {
            Object o;
            if (this.YD.acK != g.XY) {
                o = this.YD.acK;
            }
            else {
                o = this.aku();
            }
            return o;
        }
        return null;
    }
    
    public boolean ake() {
        return this.YD == null || this.YD.acJ == null || this.YD.acJ;
    }
    
    int akf() {
        if (this.YD != null) {
            return this.YD.acy;
        }
        return 0;
    }
    
    void akg() {
        this.mCalled = false;
        this.akX();
        this.mLayoutInflater = null;
        if (this.mCalled) {
            if (this.Yr != null) {
                if (!this.XZ) {
                    throw new IllegalStateException("Child FragmentManager of " + this + " was not " + " destroyed and this fragment is not retaining instance");
                }
                this.Yr.apM();
                this.Yr = null;
            }
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDetach()");
    }
    
    public boolean aki(final MenuItem menuItem) {
        return false;
    }
    
    void akj(final Configuration configuration) {
        this.onConfigurationChanged(configuration);
        if (this.Yr != null) {
            this.Yr.aqA(configuration);
        }
    }
    
    final boolean akk() {
        boolean b = false;
        if (this.Yl > 0) {
            b = true;
        }
        return b;
    }
    
    void akl(final boolean b) {
        this.onMultiWindowModeChanged(b);
        if (this.Yr != null) {
            this.Yr.arh(b);
        }
    }
    
    public void akm(final Menu menu, final MenuInflater menuInflater) {
    }
    
    void akn() {
        if (this.Yr != null) {
            this.Yr.apM();
        }
        this.mState = 0;
        this.mCalled = false;
        this.onDestroy();
        if (this.mCalled) {
            this.Yr = null;
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDestroy()");
    }
    
    public void akp(final Activity activity, final AttributeSet set, final Bundle bundle) {
        this.mCalled = true;
    }
    
    boolean akq(final MenuItem menuItem) {
        final boolean b = true;
        if (!this.YI) {
            if (this.Ye && this.YH && this.alb(menuItem)) {
                return b;
            }
            if (this.Yr != null && this.Yr.aqQ(menuItem)) {
                return b;
            }
        }
        return false;
    }
    
    void akr(final Animator acG) {
        this.ako().acG = acG;
    }
    
    void aks(final int acz) {
        this.ako().acz = acz;
    }
    
    public void akt(final Bundle yt) {
        if (this.Yb >= 0 && this.akV()) {
            throw new IllegalStateException("Fragment already active and state has been saved");
        }
        this.Yt = yt;
    }
    
    public Object aku() {
        if (this.YD != null) {
            return this.YD.acx;
        }
        return null;
    }
    
    public View akv() {
        return this.mView;
    }
    
    void akw(final View acw) {
        this.ako().acw = acw;
    }
    
    void akx() {
        if (this.Yr != null) {
            this.Yr.apG();
        }
        this.mState = 3;
        this.mCalled = false;
        this.onStop();
        if (this.mCalled) {
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onStop()");
    }
    
    void aky() {
        if (this.Yr != null) {
            this.Yr.aqV();
            this.Yr.aqa();
        }
        this.mState = 4;
        this.mCalled = false;
        this.onStart();
        if (this.mCalled) {
            if (this.Yr != null) {
                this.Yr.apc();
            }
            if (this.YC != null) {
                this.YC.art();
            }
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onStart()");
    }
    
    void akz(final Bundle bundle) {
        if (bundle != null) {
            final Parcelable parcelable = bundle.getParcelable("android:support:fragments");
            if (parcelable != null) {
                if (this.Yr == null) {
                    this.ajB();
                }
                this.Yr.apX(parcelable, this.Yn);
                this.Yn = null;
                this.Yr.aqM();
            }
        }
    }
    
    public void ala(final Activity activity) {
        this.mCalled = true;
    }
    
    public boolean alb(final MenuItem menuItem) {
        return false;
    }
    
    void alc(final int acI, final int act) {
        if (this.YD == null && acI == 0 && act == 0) {
            return;
        }
        this.ako();
        this.YD.acI = acI;
        this.YD.act = act;
    }
    
    public void ald() {
        if (this.Yg != null && this.Yg.ads != null) {
            if (Looper.myLooper() == this.Yg.ads.getHandler().getLooper()) {
                this.ajT();
            }
            else {
                this.Yg.ads.getHandler().postAtFrontOfQueue((Runnable)new Q(this));
            }
        }
        else {
            this.ako().acE = false;
        }
    }
    
    void ale(final Bundle bundle) {
        this.onSaveInstanceState(bundle);
        if (this.Yr != null) {
            final Parcelable aph = this.Yr.aph();
            if (aph != null) {
                bundle.putParcelable("android:support:fragments", aph);
            }
        }
    }
    
    public void alf(final boolean b) {
    }
    
    public boolean alg() {
        return this.YD == null || this.YD.acB == null || this.YD.acB;
    }
    
    void alh() {
        if (this.Yr != null) {
            this.Yr.apH();
        }
        this.mState = 1;
        this.mCalled = false;
        this.akF();
        if (this.mCalled) {
            if (this.YC != null) {
                this.YC.arq();
            }
            this.Yp = false;
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDestroyView()");
    }
    
    public Animation ali(final int n, final boolean b, final int n2) {
        return null;
    }
    
    void alj(final ap acA) {
        this.ako();
        if (acA == this.YD.acA) {
            return;
        }
        if (acA != null && this.YD.acA != null) {
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
        if (this.YD.acE) {
            this.YD.acA = acA;
        }
        if (acA != null) {
            acA.startListening();
        }
    }
    
    public final aW alk() {
        return this.Yg;
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        printWriter.print(s);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.Yh));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.Yc));
        printWriter.print(" mTag=");
        printWriter.println(this.Yw);
        printWriter.print(s);
        printWriter.print("mState=");
        printWriter.print(this.mState);
        printWriter.print(" mIndex=");
        printWriter.print(this.Yb);
        printWriter.print(" mWho=");
        printWriter.print(this.XV);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.Yl);
        printWriter.print(s);
        printWriter.print("mAdded=");
        printWriter.print(this.XW);
        printWriter.print(" mRemoving=");
        printWriter.print(this.Yx);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.Ym);
        printWriter.print(" mInLayout=");
        printWriter.println(this.Yi);
        printWriter.print(s);
        printWriter.print("mHidden=");
        printWriter.print(this.YI);
        printWriter.print(" mDetached=");
        printWriter.print(this.YB);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.YH);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.Ye);
        printWriter.print(s);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.Yz);
        printWriter.print(" mRetaining=");
        printWriter.print(this.XZ);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.Yj);
        if (this.Yg != null) {
            printWriter.print(s);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.Yg);
        }
        if (this.XU != null) {
            printWriter.print(s);
            printWriter.print("mHost=");
            printWriter.println(this.XU);
        }
        if (this.YF != null) {
            printWriter.print(s);
            printWriter.print("mParentFragment=");
            printWriter.println(this.YF);
        }
        if (this.Yt != null) {
            printWriter.print(s);
            printWriter.print("mArguments=");
            printWriter.println(this.Yt);
        }
        if (this.Ys != null) {
            printWriter.print(s);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.Ys);
        }
        if (this.Yk != null) {
            printWriter.print(s);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.Yk);
        }
        if (this.YE != null) {
            printWriter.print(s);
            printWriter.print("mTarget=");
            printWriter.print(this.YE);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.YA);
        }
        if (this.akf() != 0) {
            printWriter.print(s);
            printWriter.print("mNextAnim=");
            printWriter.println(this.akf());
        }
        if (this.XT != null) {
            printWriter.print(s);
            printWriter.print("mContainer=");
            printWriter.println(this.XT);
        }
        if (this.mView != null) {
            printWriter.print(s);
            printWriter.print("mView=");
            printWriter.println(this.mView);
        }
        if (this.Yv != null) {
            printWriter.print(s);
            printWriter.print("mInnerView=");
            printWriter.println(this.mView);
        }
        if (this.ajD() != null) {
            printWriter.print(s);
            printWriter.print("mAnimatingAway=");
            printWriter.println(this.ajD());
            printWriter.print(s);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(this.akU());
        }
        if (this.YC != null) {
            printWriter.print(s);
            printWriter.println("Loader Manager:");
            this.YC.dump(s + "  ", fileDescriptor, printWriter, array);
        }
        if (this.Yr != null) {
            printWriter.print(s);
            printWriter.println("Child " + this.Yr + ":");
            this.Yr.dump(s + "  ", fileDescriptor, printWriter, array);
        }
    }
    
    public final boolean equals(final Object o) {
        return super.equals(o);
    }
    
    public final a getActivity() {
        a a = null;
        if (this.XU != null) {
            a = (a)this.XU.getActivity();
        }
        return a;
    }
    
    Animator getAnimator() {
        if (this.YD != null) {
            return this.YD.acG;
        }
        return null;
    }
    
    public final Resources getResources() {
        if (this.XU != null) {
            return this.XU.getContext().getResources();
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
        this.akz(bundle);
        if (this.Yr != null && !this.Yr.ara(mCalled)) {
            this.Yr.aqM();
        }
    }
    
    public void onCreateContextMenu(final ContextMenu contextMenu, final View view, final ContextMenu$ContextMenuInfo contextMenu$ContextMenuInfo) {
        this.getActivity().onCreateContextMenu(contextMenu, view, contextMenu$ContextMenuInfo);
    }
    
    public void onDestroy() {
        final boolean b = true;
        this.mCalled = b;
        if (!this.Yf) {
            this.Yf = b;
            this.YC = this.XU.alu(this.XV, this.Ya, false);
        }
        if (this.YC != null) {
            this.YC.arm();
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
        final boolean yf = true;
        this.mCalled = yf;
        if (!this.Ya) {
            this.Ya = yf;
            if (this.Yf) {
                if (this.YC != null) {
                    this.YC.arr();
                }
            }
            else {
                this.Yf = yf;
                this.YC = this.XU.alu(this.XV, this.Ya, false);
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
        if (this.XU != null) {
            this.XU.alJ(this, intent, n, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder(128);
        k.aix(this, sb);
        if (this.Yb >= 0) {
            sb.append(" #");
            sb.append(this.Yb);
        }
        if (this.Yh != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.Yh));
        }
        if (this.Yw != null) {
            sb.append(" ");
            sb.append(this.Yw);
        }
        sb.append('}');
        return sb.toString();
    }
}

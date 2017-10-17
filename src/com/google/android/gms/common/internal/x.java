// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import java.text.DateFormat;
import java.util.Collections;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import android.accounts.Account;
import android.content.Intent;
import android.os.IBinder;
import java.util.Set;
import com.google.android.gms.common.api.A;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.os.Bundle;
import android.util.Log;
import android.content.ServiceConnection;
import android.os.Handler;
import android.content.Context;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import android.os.IInterface;
import com.google.android.gms.common.f;
import android.os.Looper;

public abstract class x
{
    public static final String[] iO;
    private long iP;
    private long iQ;
    private int iR;
    private final Looper iS;
    private int iT;
    private final Object iU;
    private long iV;
    private final B iW;
    private final C iX;
    private final f iY;
    private final Object iZ;
    private zzu ja;
    private IInterface jb;
    private int jc;
    private final q jd;
    protected AtomicInteger je;
    private final ArrayList jf;
    private e jg;
    private final String jh;
    private final int ji;
    private c jj;
    private final Context mContext;
    final Handler mHandler;
    
    static {
        iO = new String[] { "service_esmobile", "service_googleme" };
    }
    
    protected x(final Context context, final Looper looper, final C c, final f f, final int ji, final B iw, final q jd, final String jh) {
        this.iU = new Object();
        this.iZ = new Object();
        this.jf = new ArrayList();
        this.jc = 1;
        this.je = new AtomicInteger(0);
        this.mContext = (Context)l.kc(context, "Context must not be null");
        this.iS = (Looper)l.kc(looper, "Looper must not be null");
        this.iX = (C)l.kc(c, "Supervisor must not be null");
        this.iY = (f)l.kc(f, "API availability must not be null");
        this.mHandler = new j(this, looper);
        this.ji = ji;
        this.iW = iw;
        this.jd = jd;
        this.jh = jh;
    }
    
    private void kN() {
        if (this.jg != null) {
            this.iX.jN(this.jk(), this.lb(), (ServiceConnection)this.jg, this.kD());
            this.jg = null;
        }
    }
    
    private boolean kT(final int n, final int n2, final IInterface interface1) {
        synchronized (this.iU) {
            if (this.jc == n) {
                this.kV(n2, interface1);
                return true;
            }
            return false;
        }
    }
    
    private void kV(final int jc, final IInterface jb) {
        final boolean b = true;
        boolean b2 = false;
        int n = 3;
        while (true) {
        Label_0102_Outer:
            while (true) {
                int n2 = 0;
                Label_0027: {
                    while (true) {
                        Label_0020: {
                            if (jc != n) {
                                n2 = 0;
                                break Label_0020;
                            }
                            Label_0096: {
                                break Label_0096;
                                while (true) {
                                    l.kl(b2);
                                    Label_0137: {
                                        Label_0129: {
                                            synchronized (this.iU) {
                                                this.jo(this.jc = jc, this.jb = jb);
                                                switch (jc) {
                                                    case 2: {
                                                        this.kZ();
                                                        break;
                                                    }
                                                    case 3: {
                                                        break Label_0129;
                                                    }
                                                    case 1: {
                                                        break Label_0137;
                                                    }
                                                }
                                                return;
                                                b2 = b;
                                                continue Label_0102_Outer;
                                                n2 = (b ? 1 : 0);
                                                break;
                                                n = (b ? 1 : 0);
                                                break Label_0027;
                                            }
                                        }
                                        this.kS(jb);
                                        return;
                                    }
                                    this.kN();
                                    return;
                                }
                            }
                        }
                        if (jb != null) {
                            continue;
                        }
                        break;
                    }
                    n = 0;
                }
                if (n2 != n) {
                    continue Label_0102_Outer;
                }
                break;
            }
            continue;
        }
    }
    
    private void kZ() {
        if (this.jg != null) {
            final String value = String.valueOf(this.jk());
            final String value2 = String.valueOf(this.lb());
            Log.e("GmsClient", new StringBuilder(String.valueOf(value).length() + 70 + String.valueOf(value2).length()).append("Calling connect() while still connected, missing disconnect() for ").append(value).append(" on ").append(value2).toString());
            this.iX.jN(this.jk(), this.lb(), (ServiceConnection)this.jg, this.kD());
            this.je.incrementAndGet();
        }
        this.jg = new e(this, this.je.get());
        if (!this.iX.jR(this.jk(), this.lb(), (ServiceConnection)this.jg, this.kD())) {
            final String value3 = String.valueOf(this.jk());
            final String value4 = String.valueOf(this.lb());
            Log.e("GmsClient", new StringBuilder(String.valueOf(value3).length() + 34 + String.valueOf(value4).length()).append("unable to connect to service: ").append(value3).append(" on ").append(value4).toString());
            this.kG(16, null, this.je.get());
        }
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        Object o;
        int jc;
        IInterface jb;
        PrintWriter append;
        int n;
        PrintWriter append2;
        long iq;
        String value;
        int n2;
        PrintWriter append3;
        long ip;
        String value2;
        int n3;
        PrintWriter append4;
        long iv;
        Label_0147_Outer:Label_0195_Outer:Label_0340_Outer:Label_0416_Outer:Label_0552_Outer:
        while (true) {
            o = this.iU;
            while (true) {
            Label_0834:
                while (true) {
                    Label_0819: {
                    Label_0804:
                        while (true) {
                        Label_0795:
                            while (true) {
                            Label_0786:
                                while (true) {
                                Label_0772:
                                    while (true) {
                                        Label_0758: {
                                            Label_0744: {
                                                Label_0730: {
                                                    synchronized (o) {
                                                        jc = this.jc;
                                                        jb = this.jb;
                                                        // monitorexit(o)
                                                        o = printWriter.append(s);
                                                        ((PrintWriter)o).append("mConnectState=");
                                                        switch (jc) {
                                                            default: {
                                                                printWriter.print("UNKNOWN");
                                                                printWriter.append(" mService=");
                                                                if (jb == null) {
                                                                    break Label_0772;
                                                                }
                                                                append = printWriter.append(this.jl()).append("@");
                                                                o = Integer.toHexString(System.identityHashCode(jb.asBinder()));
                                                                append.println((String)o);
                                                                o = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
                                                                if (this.iQ > 0L) {
                                                                    break Label_0786;
                                                                }
                                                                n = 1;
                                                                if (n == 0) {
                                                                    append2 = printWriter.append(s).append("lastConnectedTime=");
                                                                    iq = this.iQ;
                                                                    value = String.valueOf(((DateFormat)o).format(new Date(this.iQ)));
                                                                    append2.println(new StringBuilder(String.valueOf(value).length() + 21).append(iq).append(" ").append(value).toString());
                                                                }
                                                                if (this.iP > 0L) {
                                                                    break Label_0795;
                                                                }
                                                                n2 = 1;
                                                                if (n2 == 0) {
                                                                    printWriter.append(s).append("lastSuspendedCause=");
                                                                    switch (this.iT) {
                                                                        default: {
                                                                            printWriter.append(String.valueOf(this.iT));
                                                                            append3 = printWriter.append(" lastSuspendedTime=");
                                                                            ip = this.iP;
                                                                            value2 = String.valueOf(((DateFormat)o).format(new Date(this.iP)));
                                                                            append3.println(new StringBuilder(String.valueOf(value2).length() + 21).append(ip).append(" ").append(value2).toString());
                                                                            break;
                                                                        }
                                                                        case 1: {
                                                                            break Label_0804;
                                                                        }
                                                                        case 2: {
                                                                            break Label_0819;
                                                                        }
                                                                    }
                                                                }
                                                                if (this.iV <= 0L) {
                                                                    n3 = 1;
                                                                    if (n3 == 0) {
                                                                        printWriter.append(s).append("lastFailedStatus=").append(A.hu(this.iR));
                                                                        append4 = printWriter.append(" lastFailedTime=");
                                                                        iv = this.iV;
                                                                        o = String.valueOf(((DateFormat)o).format(new Date(this.iV)));
                                                                        o = new StringBuilder(String.valueOf(o).length() + 21).append(iv).append(" ").append((String)o).toString();
                                                                        append4.println((String)o);
                                                                    }
                                                                    return;
                                                                }
                                                                break Label_0834;
                                                            }
                                                            case 2: {
                                                                break;
                                                            }
                                                            case 3: {
                                                                break Label_0730;
                                                            }
                                                            case 4: {
                                                                break Label_0744;
                                                            }
                                                            case 1: {
                                                                break Label_0758;
                                                            }
                                                        }
                                                    }
                                                    printWriter.print("CONNECTING");
                                                    continue Label_0147_Outer;
                                                }
                                                printWriter.print("CONNECTED");
                                                continue Label_0147_Outer;
                                            }
                                            printWriter.print("DISCONNECTING");
                                            continue Label_0147_Outer;
                                        }
                                        printWriter.print("DISCONNECTED");
                                        continue Label_0147_Outer;
                                    }
                                    printWriter.println("null");
                                    continue Label_0195_Outer;
                                }
                                n = 0;
                                continue Label_0340_Outer;
                            }
                            n2 = 0;
                            continue Label_0416_Outer;
                        }
                        printWriter.append("CAUSE_SERVICE_DISCONNECTED");
                        continue Label_0552_Outer;
                    }
                    printWriter.append("CAUSE_NETWORK_LOST");
                    continue Label_0552_Outer;
                }
                n3 = 0;
                continue;
            }
        }
    }
    
    public boolean gG() {
        return false;
    }
    
    public boolean gH() {
        synchronized (this.iU) {
            return this.jc == 2;
        }
    }
    
    public void gI(final zzq p0, final Set p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokevirtual   com/google/android/gms/common/internal/x.lc:()Landroid/os/Bundle;
        //     4: astore_3       
        //     5: new             Lcom/google/android/gms/common/internal/GetServiceRequest;
        //     8: astore          4
        //    10: aload_0        
        //    11: getfield        com/google/android/gms/common/internal/x.ji:I
        //    14: istore          5
        //    16: aload           4
        //    18: iload           5
        //    20: invokespecial   com/google/android/gms/common/internal/GetServiceRequest.<init>:(I)V
        //    23: aload_0        
        //    24: getfield        com/google/android/gms/common/internal/x.mContext:Landroid/content/Context;
        //    27: astore          6
        //    29: aload           6
        //    31: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
        //    34: astore          6
        //    36: aload           4
        //    38: aload           6
        //    40: invokevirtual   com/google/android/gms/common/internal/GetServiceRequest.ju:(Ljava/lang/String;)Lcom/google/android/gms/common/internal/GetServiceRequest;
        //    43: astore          4
        //    45: aload           4
        //    47: aload_3        
        //    48: invokevirtual   com/google/android/gms/common/internal/GetServiceRequest.jr:(Landroid/os/Bundle;)Lcom/google/android/gms/common/internal/GetServiceRequest;
        //    51: astore_3       
        //    52: aload_2        
        //    53: ifnonnull       117
        //    56: aload_0        
        //    57: invokevirtual   com/google/android/gms/common/internal/x.gG:()Z
        //    60: istore          7
        //    62: iload           7
        //    64: ifne            154
        //    67: aload_0        
        //    68: invokevirtual   com/google/android/gms/common/internal/x.kK:()Z
        //    71: istore          7
        //    73: iload           7
        //    75: ifne            200
        //    78: aload_0        
        //    79: getfield        com/google/android/gms/common/internal/x.iZ:Ljava/lang/Object;
        //    82: astore          4
        //    84: aload           4
        //    86: monitorenter   
        //    87: aload_0        
        //    88: getfield        com/google/android/gms/common/internal/x.ja:Lcom/google/android/gms/common/internal/zzu;
        //    91: astore          6
        //    93: aload           6
        //    95: ifnonnull       216
        //    98: ldc             "GmsClient"
        //   100: astore_3       
        //   101: ldc_w           "mServiceBroker is null, client disconnected"
        //   104: astore          6
        //   106: aload_3        
        //   107: aload           6
        //   109: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //   112: pop            
        //   113: aload           4
        //   115: monitorexit    
        //   116: return         
        //   117: aload_3        
        //   118: aload_2        
        //   119: invokevirtual   com/google/android/gms/common/internal/GetServiceRequest.jv:(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/GetServiceRequest;
        //   122: pop            
        //   123: goto            56
        //   126: astore_3       
        //   127: ldc             "GmsClient"
        //   129: astore_3       
        //   130: ldc_w           "service died"
        //   133: astore          4
        //   135: aload_3        
        //   136: aload           4
        //   138: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //   141: pop            
        //   142: iconst_1       
        //   143: istore          8
        //   145: aload_0        
        //   146: iload           8
        //   148: invokevirtual   com/google/android/gms/common/internal/x.kQ:(I)V
        //   151: goto            116
        //   154: aload_0        
        //   155: invokevirtual   com/google/android/gms/common/internal/x.kL:()Landroid/accounts/Account;
        //   158: astore          4
        //   160: aload_3        
        //   161: aload           4
        //   163: invokevirtual   com/google/android/gms/common/internal/GetServiceRequest.js:(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/GetServiceRequest;
        //   166: astore          4
        //   168: aload           4
        //   170: aload_1        
        //   171: invokevirtual   com/google/android/gms/common/internal/GetServiceRequest.jq:(Lcom/google/android/gms/common/internal/zzq;)Lcom/google/android/gms/common/internal/GetServiceRequest;
        //   174: pop            
        //   175: goto            78
        //   178: astore_3       
        //   179: ldc             "GmsClient"
        //   181: astore          4
        //   183: ldc_w           "Remote exception occurred"
        //   186: astore          6
        //   188: aload           4
        //   190: aload           6
        //   192: aload_3        
        //   193: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   196: pop            
        //   197: goto            116
        //   200: aload_0        
        //   201: invokevirtual   com/google/android/gms/common/internal/x.getAccount:()Landroid/accounts/Account;
        //   204: astore          4
        //   206: aload_3        
        //   207: aload           4
        //   209: invokevirtual   com/google/android/gms/common/internal/GetServiceRequest.js:(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/GetServiceRequest;
        //   212: pop            
        //   213: goto            78
        //   216: aload_0        
        //   217: getfield        com/google/android/gms/common/internal/x.ja:Lcom/google/android/gms/common/internal/zzu;
        //   220: astore          6
        //   222: new             Lcom/google/android/gms/common/internal/zzd$zzg;
        //   225: astore          9
        //   227: aload_0        
        //   228: getfield        com/google/android/gms/common/internal/x.je:Ljava/util/concurrent/atomic/AtomicInteger;
        //   231: astore          10
        //   233: aload           10
        //   235: invokevirtual   java/util/concurrent/atomic/AtomicInteger.get:()I
        //   238: istore          11
        //   240: aload           9
        //   242: aload_0        
        //   243: iload           11
        //   245: invokespecial   com/google/android/gms/common/internal/zzd$zzg.<init>:(Lcom/google/android/gms/common/internal/x;I)V
        //   248: aload           6
        //   250: aload           9
        //   252: aload_3        
        //   253: invokeinterface com/google/android/gms/common/internal/zzu.zza:(Lcom/google/android/gms/common/internal/zzt;Lcom/google/android/gms/common/internal/GetServiceRequest;)V
        //   258: goto            113
        //   261: astore_3       
        //   262: aload           4
        //   264: monitorexit    
        //   265: aload_3        
        //   266: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                            
        //  -----  -----  -----  -----  --------------------------------
        //  0      4      126    154    Landroid/os/DeadObjectException;
        //  0      4      178    200    Landroid/os/RemoteException;
        //  5      8      126    154    Landroid/os/DeadObjectException;
        //  5      8      178    200    Landroid/os/RemoteException;
        //  10     14     126    154    Landroid/os/DeadObjectException;
        //  10     14     178    200    Landroid/os/RemoteException;
        //  18     23     126    154    Landroid/os/DeadObjectException;
        //  18     23     178    200    Landroid/os/RemoteException;
        //  23     27     126    154    Landroid/os/DeadObjectException;
        //  23     27     178    200    Landroid/os/RemoteException;
        //  29     34     126    154    Landroid/os/DeadObjectException;
        //  29     34     178    200    Landroid/os/RemoteException;
        //  38     43     126    154    Landroid/os/DeadObjectException;
        //  38     43     178    200    Landroid/os/RemoteException;
        //  47     51     126    154    Landroid/os/DeadObjectException;
        //  47     51     178    200    Landroid/os/RemoteException;
        //  56     60     126    154    Landroid/os/DeadObjectException;
        //  56     60     178    200    Landroid/os/RemoteException;
        //  67     71     126    154    Landroid/os/DeadObjectException;
        //  67     71     178    200    Landroid/os/RemoteException;
        //  78     82     126    154    Landroid/os/DeadObjectException;
        //  78     82     178    200    Landroid/os/RemoteException;
        //  84     87     126    154    Landroid/os/DeadObjectException;
        //  84     87     178    200    Landroid/os/RemoteException;
        //  87     91     261    267    Any
        //  107    113    261    267    Any
        //  113    116    261    267    Any
        //  118    123    126    154    Landroid/os/DeadObjectException;
        //  118    123    178    200    Landroid/os/RemoteException;
        //  154    158    126    154    Landroid/os/DeadObjectException;
        //  154    158    178    200    Landroid/os/RemoteException;
        //  161    166    126    154    Landroid/os/DeadObjectException;
        //  161    166    178    200    Landroid/os/RemoteException;
        //  170    175    126    154    Landroid/os/DeadObjectException;
        //  170    175    178    200    Landroid/os/RemoteException;
        //  200    204    126    154    Landroid/os/DeadObjectException;
        //  200    204    178    200    Landroid/os/RemoteException;
        //  207    213    126    154    Landroid/os/DeadObjectException;
        //  207    213    178    200    Landroid/os/RemoteException;
        //  216    220    261    267    Any
        //  222    225    261    267    Any
        //  227    231    261    267    Any
        //  233    238    261    267    Any
        //  243    248    261    267    Any
        //  252    258    261    267    Any
        //  262    265    261    267    Any
        //  265    267    126    154    Landroid/os/DeadObjectException;
        //  265    267    178    200    Landroid/os/RemoteException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0113:
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
    
    public void gJ() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/google/android/gms/common/internal/x.je:Ljava/util/concurrent/atomic/AtomicInteger;
        //     4: astore_1       
        //     5: aload_1        
        //     6: invokevirtual   java/util/concurrent/atomic/AtomicInteger.incrementAndGet:()I
        //     9: pop            
        //    10: aload_0        
        //    11: getfield        com/google/android/gms/common/internal/x.jf:Ljava/util/ArrayList;
        //    14: astore_2       
        //    15: aload_2        
        //    16: monitorenter   
        //    17: aload_0        
        //    18: getfield        com/google/android/gms/common/internal/x.jf:Ljava/util/ArrayList;
        //    21: astore_1       
        //    22: aload_1        
        //    23: invokevirtual   java/util/ArrayList.size:()I
        //    26: istore_3       
        //    27: iconst_0       
        //    28: istore          4
        //    30: aconst_null    
        //    31: astore_1       
        //    32: iconst_0       
        //    33: istore          5
        //    35: aconst_null    
        //    36: astore          6
        //    38: iload           5
        //    40: iload_3        
        //    41: if_icmplt       84
        //    44: aload_0        
        //    45: getfield        com/google/android/gms/common/internal/x.jf:Ljava/util/ArrayList;
        //    48: astore_1       
        //    49: aload_1        
        //    50: invokevirtual   java/util/ArrayList.clear:()V
        //    53: aload_2        
        //    54: monitorexit    
        //    55: aload_0        
        //    56: getfield        com/google/android/gms/common/internal/x.iZ:Ljava/lang/Object;
        //    59: astore          6
        //    61: aload           6
        //    63: monitorenter   
        //    64: iconst_0       
        //    65: istore          4
        //    67: aconst_null    
        //    68: astore_1       
        //    69: aload_0        
        //    70: aconst_null    
        //    71: putfield        com/google/android/gms/common/internal/x.ja:Lcom/google/android/gms/common/internal/zzu;
        //    74: aload           6
        //    76: monitorexit    
        //    77: aload_0        
        //    78: iconst_1       
        //    79: aconst_null    
        //    80: invokespecial   com/google/android/gms/common/internal/x.kV:(ILandroid/os/IInterface;)V
        //    83: return         
        //    84: aload_0        
        //    85: getfield        com/google/android/gms/common/internal/x.jf:Ljava/util/ArrayList;
        //    88: astore_1       
        //    89: aload_1        
        //    90: iload           5
        //    92: invokevirtual   java/util/ArrayList.get:(I)Ljava/lang/Object;
        //    95: astore_1       
        //    96: aload_1        
        //    97: checkcast       Lcom/google/android/gms/common/internal/F;
        //   100: astore_1       
        //   101: aload_1        
        //   102: invokevirtual   com/google/android/gms/common/internal/F.ln:()V
        //   105: iload           5
        //   107: iconst_1       
        //   108: iadd           
        //   109: istore          4
        //   111: iload           4
        //   113: istore          5
        //   115: goto            38
        //   118: astore_1       
        //   119: aload_2        
        //   120: monitorexit    
        //   121: aload_1        
        //   122: athrow         
        //   123: astore_1       
        //   124: aload           6
        //   126: monitorexit    
        //   127: aload_1        
        //   128: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  17     21     118    123    Any
        //  22     26     118    123    Any
        //  44     48     118    123    Any
        //  49     53     118    123    Any
        //  53     55     118    123    Any
        //  70     74     123    129    Any
        //  74     77     123    129    Any
        //  84     88     118    123    Any
        //  90     95     118    123    Any
        //  96     100    118    123    Any
        //  101    105    118    123    Any
        //  119    121    118    123    Any
        //  124    127    123    129    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0084:
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
    
    public IBinder gK() {
        synchronized (this.iZ) {
            if (this.ja != null) {
                return this.ja.asBinder();
            }
            return null;
        }
    }
    
    public void gL(final c c) {
        this.jj = (c)l.kc(c, "Connection progress callbacks cannot be null.");
        this.kV(2, null);
    }
    
    public Intent gM() {
        throw new UnsupportedOperationException("Not a sign in API");
    }
    
    public boolean gN() {
        synchronized (this.iU) {
            return this.jc == 3;
        }
    }
    
    public boolean gO() {
        return false;
    }
    
    public boolean gP() {
        return true;
    }
    
    public Account getAccount() {
        return null;
    }
    
    public final Context getContext() {
        return this.mContext;
    }
    
    protected abstract String jk();
    
    protected abstract String jl();
    
    protected abstract IInterface jn(final IBinder p0);
    
    void jo(final int n, final IInterface interface1) {
    }
    
    protected final String kD() {
        String s;
        if (this.jh != null) {
            s = this.jh;
        }
        else {
            s = this.mContext.getClass().getName();
        }
        return s;
    }
    
    protected void kG(final int n, final Bundle bundle, final int n2) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(5, n2, -1, (Object)new com.google.android.gms.common.internal.A(this, n, bundle)));
    }
    
    protected void kI(final int n, final IBinder binder, final Bundle bundle, final int n2) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(1, n2, -1, (Object)new s(this, n, binder, bundle)));
    }
    
    protected void kJ(final ConnectionResult connectionResult) {
        this.iR = connectionResult.qh();
        this.iV = System.currentTimeMillis();
    }
    
    public boolean kK() {
        return false;
    }
    
    public final Account kL() {
        Account account;
        if (this.getAccount() == null) {
            account = new Account("<<default account>>", "com.google");
        }
        else {
            account = this.getAccount();
        }
        return account;
    }
    
    public final IInterface kM() {
        while (true) {
            while (true) {
                synchronized (this.iU) {
                    if (this.jc == 4) {
                        throw new DeadObjectException();
                    }
                    this.kY();
                    if (this.jb == null) {
                        final boolean b = false;
                        l.kj(b, "Client is connected but service is null");
                        return this.jb;
                    }
                }
                final boolean b = true;
                continue;
            }
        }
    }
    
    public void kQ(final int n) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(4, this.je.get(), n));
    }
    
    protected void kS(final IInterface interface1) {
        this.iQ = System.currentTimeMillis();
    }
    
    public Bundle kU() {
        return null;
    }
    
    protected void kX(final int it) {
        this.iT = it;
        this.iP = System.currentTimeMillis();
    }
    
    protected final void kY() {
        if (this.gN()) {
            return;
        }
        throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }
    
    protected Set la() {
        return Collections.EMPTY_SET;
    }
    
    protected String lb() {
        return "com.google.android.gms";
    }
    
    protected Bundle lc() {
        return new Bundle();
    }
}

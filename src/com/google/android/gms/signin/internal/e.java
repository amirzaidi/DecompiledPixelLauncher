// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.signin.internal;

import com.google.android.gms.common.internal.zzq;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.c;
import com.google.android.gms.common.internal.x;
import com.google.android.gms.common.internal.w;
import android.os.IInterface;
import android.os.IBinder;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import android.accounts.Account;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.internal.cd;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.g;
import android.os.Looper;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.internal.bm;
import com.google.android.gms.common.internal.R;

public class e extends R implements bm
{
    private final boolean JU;
    private Integer JV;
    private final a JW;
    private final Bundle JX;
    
    public e(final Context context, final Looper looper, final boolean ju, final a jw, final Bundle jx, final g g, final f f) {
        super(context, looper, 44, jw, g, f);
        this.JU = ju;
        this.JW = jw;
        this.JX = jx;
        this.JV = jw.gt();
    }
    
    public e(final Context context, final Looper looper, final boolean b, final a a, final cd cd, final g g, final f f) {
        this(context, looper, b, a, Qb(a), g, f);
    }
    
    private ResolveAccountRequest Qa() {
        final Account gr = this.JW.gr();
        GoogleSignInAccount pg = null;
        if ("<<default account>>".equals(gr.name)) {
            pg = com.google.android.gms.auth.api.signin.a.a.Ph(this.getContext()).Pg();
        }
        return new ResolveAccountRequest(gr, this.JV, pg);
    }
    
    public static Bundle Qb(final a a) {
        final cd gu = a.gu();
        final Integer gt = a.gt();
        final Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", (Parcelable)a.getAccount());
        if (gt != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", (int)gt);
        }
        if (gu != null) {
            bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", gu.BL());
            bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", gu.BO());
            bundle.putString("com.google.android.gms.signin.internal.serverClientId", gu.BK());
            bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
            bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", gu.BP());
            bundle.putString("com.google.android.gms.signin.internal.hostedDomain", gu.BN());
            bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", gu.BI());
            if (gu.BM() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.authApiSignInModuleVersion", (long)gu.BM());
            }
            if (gu.BJ() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.realClientLibraryVersion", (long)gu.BJ());
            }
        }
        return bundle;
    }
    
    protected zze PZ(final IBinder binder) {
        return zze$zza.zzqy(binder);
    }
    
    public boolean dZ() {
        return this.JU;
    }
    
    protected String gw() {
        return "com.google.android.gms.signin.service.START";
    }
    
    protected String gx() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }
    
    protected Bundle io() {
        if (!this.getContext().getPackageName().equals(this.JW.go())) {
            this.JX.putString("com.google.android.gms.signin.internal.realClientPackageName", this.JW.go());
        }
        return this.JX;
    }
    
    public void yu() {
        this.ee(new w(this));
    }
    
    public void yv() {
        try {
            final IInterface hy = this.hY();
            try {
                final zze zze = (zze)hy;
                try {
                    final Integer jv = this.JV;
                    try {
                        zze.zzajw(jv);
                    }
                    catch (RemoteException ex) {
                        Log.w("SignInClientImpl", "Remote service probably died when clearAccountFromSessionStore is called");
                    }
                }
                catch (RemoteException ex2) {}
            }
            catch (RemoteException ex3) {}
        }
        catch (RemoteException ex4) {}
    }
    
    public void yw(final zzq zzq, final boolean b) {
        try {
            final IInterface hy = this.hY();
            try {
                final zze zze = (zze)hy;
                try {
                    final Integer jv = this.JV;
                    try {
                        zze.zza(zzq, jv, b);
                    }
                    catch (RemoteException ex) {
                        Log.w("SignInClientImpl", "Remote service probably died when saveDefaultAccount is called");
                    }
                }
                catch (RemoteException ex2) {}
            }
            catch (RemoteException ex3) {}
        }
        catch (RemoteException ex4) {}
    }
    
    public void yx(final zzd p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc             "Expecting a valid ISignInCallbacks"
        //     2: astore_2       
        //     3: aload_1        
        //     4: aload_2        
        //     5: invokestatic    com/google/android/gms/common/internal/l.ho:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //     8: pop            
        //     9: aload_0        
        //    10: invokespecial   com/google/android/gms/signin/internal/e.Qa:()Lcom/google/android/gms/common/internal/ResolveAccountRequest;
        //    13: astore_3       
        //    14: aload_0        
        //    15: invokevirtual   com/google/android/gms/signin/internal/e.hY:()Landroid/os/IInterface;
        //    18: astore_2       
        //    19: aload_2        
        //    20: checkcast       Lcom/google/android/gms/signin/internal/zze;
        //    23: astore_2       
        //    24: new             Lcom/google/android/gms/signin/internal/SignInRequest;
        //    27: astore          4
        //    29: aload           4
        //    31: aload_3        
        //    32: invokespecial   com/google/android/gms/signin/internal/SignInRequest.<init>:(Lcom/google/android/gms/common/internal/ResolveAccountRequest;)V
        //    35: aload_2        
        //    36: aload           4
        //    38: aload_1        
        //    39: invokeinterface com/google/android/gms/signin/internal/zze.zza:(Lcom/google/android/gms/signin/internal/SignInRequest;Lcom/google/android/gms/signin/internal/zzd;)V
        //    44: return         
        //    45: astore_2       
        //    46: ldc             "SignInClientImpl"
        //    48: astore_3       
        //    49: ldc             "Remote service probably died when signIn is called"
        //    51: astore          4
        //    53: aload_3        
        //    54: aload           4
        //    56: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //    59: pop            
        //    60: new             Lcom/google/android/gms/signin/internal/SignInResponse;
        //    63: astore_3       
        //    64: bipush          8
        //    66: istore          5
        //    68: aload_3        
        //    69: iload           5
        //    71: invokespecial   com/google/android/gms/signin/internal/SignInResponse.<init>:(I)V
        //    74: aload_1        
        //    75: aload_3        
        //    76: invokeinterface com/google/android/gms/signin/internal/zzd.zzb:(Lcom/google/android/gms/signin/internal/SignInResponse;)V
        //    81: goto            44
        //    84: astore_3       
        //    85: ldc             "SignInClientImpl"
        //    87: astore_3       
        //    88: ldc_w           "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."
        //    91: astore          4
        //    93: aload_3        
        //    94: aload           4
        //    96: aload_2        
        //    97: invokestatic    android/util/Log.wtf:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   100: pop            
        //   101: goto            44
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                        
        //  -----  -----  -----  -----  ----------------------------
        //  9      13     45     104    Landroid/os/RemoteException;
        //  14     18     45     104    Landroid/os/RemoteException;
        //  19     23     45     104    Landroid/os/RemoteException;
        //  24     27     45     104    Landroid/os/RemoteException;
        //  31     35     45     104    Landroid/os/RemoteException;
        //  38     44     45     104    Landroid/os/RemoteException;
        //  60     63     84     104    Landroid/os/RemoteException;
        //  69     74     84     104    Landroid/os/RemoteException;
        //  75     81     84     104    Landroid/os/RemoteException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 56, Size: 56
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

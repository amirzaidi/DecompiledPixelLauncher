// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.signin.internal;

import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.AuthAccountRequest;
import android.accounts.Account;
import android.os.IInterface;

public interface zze extends IInterface
{
    void zza(final int p0, final Account p1, final zzd p2);
    
    void zza(final AuthAccountRequest p0, final zzd p1);
    
    void zza(final ResolveAccountRequest p0, final zzw p1);
    
    void zza(final zzq p0, final int p1, final boolean p2);
    
    void zza(final CheckServerAuthResult p0);
    
    void zza(final RecordConsentRequest p0, final zzd p1);
    
    void zza(final SignInRequest p0, final zzd p1);
    
    void zzajw(final int p0);
    
    void zzb(final zzd p0);
    
    void zzdg(final boolean p0);
}

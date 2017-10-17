// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.util.Log;
import android.os.Bundle;

public final class zzd$zzg extends zzt$zza
{
    private x Jl;
    private final int Jm;
    
    public zzd$zzg(final x jl, final int jm) {
        this.Jl = jl;
        this.Jm = jm;
    }
    
    private void zzawh() {
        this.Jl = null;
    }
    
    public void zza(final int n, final Bundle bundle) {
        Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", (Throwable)new Exception());
    }
    
    public void zza(final int n, final IBinder binder, final Bundle bundle) {
        l.kc(this.Jl, "onPostInitComplete can be called only once per call to getRemoteService");
        this.Jl.kI(n, binder, bundle, this.Jm);
        this.zzawh();
    }
}

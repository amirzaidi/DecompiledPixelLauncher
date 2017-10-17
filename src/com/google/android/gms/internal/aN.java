// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.clearcut.LogEventParcelable;
import android.os.IInterface;
import android.os.IBinder;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.internal.a;
import android.os.Looper;
import android.content.Context;
import com.google.android.gms.common.internal.R;

public class an extends R
{
    public an(final Context context, final Looper looper, final a a, final d d, final c c) {
        super(context, looper, 40, a, d, c);
    }
    
    protected String jk() {
        return "com.google.android.gms.clearcut.service.START";
    }
    
    protected String jl() {
        return "com.google.android.gms.clearcut.internal.IClearcutLoggerService";
    }
    
    protected zzqd uh(final IBinder binder) {
        return zzqd$zza.zzgo(binder);
    }
    
    public void zza(final zzqc zzqc, final LogEventParcelable logEventParcelable) {
        ((zzqd)this.kM()).zza(zzqc, logEventParcelable);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.IBinder;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.d;
import android.os.Looper;
import android.content.Context;
import com.google.android.gms.common.internal.R;

public class i extends R
{
    private final String Co;
    protected final r Cp;
    
    public i(final Context context, final Looper looper, final d d, final c c, final String co, final a a) {
        super(context, looper, 23, a, d, c);
        this.Cp = new q(this);
        this.Co = co;
    }
    
    protected zzi Gf(final IBinder binder) {
        return zzi$zza.zzle(binder);
    }
    
    protected String jk() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }
    
    protected String jl() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }
    
    protected Bundle lc() {
        final Bundle bundle = new Bundle();
        bundle.putString("client_name", this.Co);
        return bundle;
    }
}

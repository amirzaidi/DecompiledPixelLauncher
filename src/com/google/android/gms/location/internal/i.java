// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.IBinder;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.g;
import android.os.Looper;
import android.content.Context;
import com.google.android.gms.common.internal.R;

public class i extends R
{
    private final String AJ;
    protected final r AK;
    
    public i(final Context context, final Looper looper, final g g, final f f, final String aj, final a a) {
        super(context, looper, 23, a, g, f);
        this.AK = new q(this);
        this.AJ = aj;
    }
    
    protected zzi Fm(final IBinder binder) {
        return zzi$zza.zzle(binder);
    }
    
    protected String gw() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }
    
    protected String gx() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }
    
    protected Bundle io() {
        final Bundle bundle = new Bundle();
        bundle.putString("client_name", this.AJ);
        return bundle;
    }
}

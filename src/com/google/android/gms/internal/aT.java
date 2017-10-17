// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.clearcut.LogEventParcelable;
import android.os.IInterface;
import android.os.IBinder;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.internal.a;
import android.os.Looper;
import android.content.Context;
import com.google.android.gms.common.internal.R;

public class at extends R
{
    public at(final Context context, final Looper looper, final a a, final g g, final f f) {
        super(context, looper, 40, a, g, f);
    }
    
    protected String gw() {
        return "com.google.android.gms.clearcut.service.START";
    }
    
    protected String gx() {
        return "com.google.android.gms.clearcut.internal.IClearcutLoggerService";
    }
    
    protected zzqd ui(final IBinder binder) {
        return zzqd$zza.zzgo(binder);
    }
    
    public void zza(final zzqc zzqc, final LogEventParcelable logEventParcelable) {
        ((zzqd)this.hY()).zza(zzqc, logEventParcelable);
    }
}

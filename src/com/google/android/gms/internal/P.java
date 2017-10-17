// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.IBinder;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.internal.a;
import android.os.Looper;
import android.content.Context;
import com.google.android.gms.common.internal.R;

public class p extends R
{
    public p(final Context context, final Looper looper, final a a, final g g, final f f) {
        super(context, looper, 51, a, g, f);
    }
    
    protected String gw() {
        return "com.google.android.gms.phenotype.service.START";
    }
    
    protected String gx() {
        return "com.google.android.gms.phenotype.internal.IPhenotypeService";
    }
    
    protected zzzb su(final IBinder binder) {
        return zzzb$zza.zzpe(binder);
    }
}

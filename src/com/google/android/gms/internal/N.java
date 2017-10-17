// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.IBinder;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.internal.a;
import android.os.Looper;
import android.content.Context;
import com.google.android.gms.common.internal.R;

public class n extends R
{
    public n(final Context context, final Looper looper, final a a, final d d, final c c) {
        super(context, looper, 51, a, d, c);
    }
    
    protected String jk() {
        return "com.google.android.gms.phenotype.service.START";
    }
    
    protected String jl() {
        return "com.google.android.gms.phenotype.internal.IPhenotypeService";
    }
    
    protected zzzb su(final IBinder binder) {
        return zzzb$zza.zzpe(binder);
    }
}

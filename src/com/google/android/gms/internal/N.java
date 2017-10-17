// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.o;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.d;

class n extends q
{
    final /* synthetic */ String oC;
    final /* synthetic */ int oD;
    final /* synthetic */ String[] oE;
    final /* synthetic */ byte[] oF;
    final /* synthetic */ k oG;
    
    n(final k og, final d d, final String oc, final int od, final String[] oe, final byte[] of) {
        this.oG = og;
        this.oC = oc;
        this.oD = od;
        this.oE = oe;
        this.oF = of;
        super(d);
    }
    
    public Status sq(final Status status) {
        return status;
    }
    
    protected void sr(final p p) {
        ((zzzb)p.hY()).zza(new x(this), this.oC, this.oD, this.oE, this.oF);
    }
}

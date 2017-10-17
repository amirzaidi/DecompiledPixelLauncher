// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.phenotype.Configurations;
import com.google.android.gms.common.api.o;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.d;

class s extends q
{
    final /* synthetic */ String oK;
    final /* synthetic */ int oL;
    final /* synthetic */ String[] oM;
    final /* synthetic */ byte[] oN;
    final /* synthetic */ k oO;
    final /* synthetic */ String oP;
    final /* synthetic */ String oQ;
    
    s(final k oo, final d d, final String ok, final int ol, final String[] om, final byte[] on, final String oq, final String op) {
        this.oO = oo;
        this.oK = ok;
        this.oL = ol;
        this.oM = om;
        this.oN = on;
        this.oQ = oq;
        this.oP = op;
        super(d);
    }
    
    protected void sv(final p p) {
        ((zzzb)p.hY()).zza(new u(this), this.oK, this.oL, this.oM, this.oN, this.oQ, this.oP);
    }
    
    public com.google.android.gms.phenotype.b sw(final Status status) {
        return new z(status, null);
    }
}

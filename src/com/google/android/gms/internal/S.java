// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.phenotype.Configurations;
import com.google.android.gms.phenotype.r;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;

class s extends o
{
    final /* synthetic */ String pd;
    final /* synthetic */ k pe;
    final /* synthetic */ String pf;
    final /* synthetic */ String pg;
    
    s(final k pe, final a a, final String pd, final String pg, final String pf) {
        this.pe = pe;
        this.pd = pd;
        this.pg = pg;
        this.pf = pf;
        super(a);
    }
    
    protected void sv(final com.google.android.gms.internal.n n) {
        ((zzzb)n.kM()).zza(new q(this), this.pd, this.pg, this.pf);
    }
    
    public r sw(final Status status) {
        return new t(status, null);
    }
}

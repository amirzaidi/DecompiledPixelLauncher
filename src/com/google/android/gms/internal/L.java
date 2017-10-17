// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.o;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.d;

class l extends q
{
    final /* synthetic */ k oA;
    final /* synthetic */ String ov;
    final /* synthetic */ int ow;
    final /* synthetic */ String[] ox;
    final /* synthetic */ byte[] oy;
    final /* synthetic */ int[] oz;
    
    l(final k oa, final d d, final String ov, final int ow, final String[] ox, final int[] oz, final byte[] oy) {
        this.oA = oa;
        this.ov = ov;
        this.ow = ow;
        this.ox = ox;
        this.oz = oz;
        this.oy = oy;
        super(d);
    }
    
    public Status so(final Status status) {
        return status;
    }
    
    protected void sp(final p p) {
        ((zzzb)p.hY()).zza(new r(this), this.ov, this.ow, this.ox, this.oz, this.oy);
    }
}

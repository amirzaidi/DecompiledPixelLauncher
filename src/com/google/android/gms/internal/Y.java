// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.phenotype.Configurations;
import com.google.android.gms.common.api.o;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.d;

class y extends q
{
    final /* synthetic */ String oW;
    final /* synthetic */ k oX;
    final /* synthetic */ String oY;
    final /* synthetic */ String oZ;
    
    y(final k ox, final d d, final String ow, final String oz, final String oy) {
        this.oX = ox;
        this.oW = ow;
        this.oZ = oz;
        this.oY = oy;
        super(d);
    }
    
    protected void sx(final p p) {
        ((zzzb)p.hY()).zza(new v(this), this.oW, this.oZ, this.oY);
    }
    
    public com.google.android.gms.phenotype.b sy(final Status status) {
        return new z(status, null);
    }
}

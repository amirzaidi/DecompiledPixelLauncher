// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.api;

public final class e
{
    private final q hb;
    private final j hc;
    private final String hd;
    private final l he;
    private final p hf;
    
    public e(final String hd, final j hc, final q hb) {
        com.google.android.gms.common.internal.l.kc(hc, "Cannot construct an Api with a null ClientBuilder");
        com.google.android.gms.common.internal.l.kc(hb, "Cannot construct an Api with a null ClientKey");
        this.hd = hd;
        this.hc = hc;
        this.he = null;
        this.hb = hb;
        this.hf = null;
    }
    
    public boolean gA() {
        return false;
    }
    
    public j gB() {
        com.google.android.gms.common.internal.l.kj(this.hc != null, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
        return this.hc;
    }
    
    public l gC() {
        com.google.android.gms.common.internal.l.kj(false, "This API was constructed with a ClientBuilder. Use getClientBuilder");
        return null;
    }
    
    public r gD() {
        j hc;
        if (!this.gA()) {
            hc = this.hc;
        }
        else {
            hc = null;
        }
        return hc;
    }
    
    public String gE() {
        return this.hd;
    }
    
    public h gz() {
        if (this.hb == null) {
            throw new IllegalStateException("This API was constructed with null client keys. This should not be possible.");
        }
        return this.hb;
    }
}

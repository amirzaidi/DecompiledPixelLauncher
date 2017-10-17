// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.api;

public final class h
{
    private final r et;
    private final l eu;
    private final String ev;
    private final n ew;
    private final q ex;
    
    public h(final String ev, final l eu, final r et) {
        com.google.android.gms.common.internal.l.ho(eu, "Cannot construct an Api with a null ClientBuilder");
        com.google.android.gms.common.internal.l.ho(et, "Cannot construct an Api with a null ClientKey");
        this.ev = ev;
        this.eu = eu;
        this.ew = null;
        this.et = et;
        this.ex = null;
    }
    
    public j dT() {
        if (this.et == null) {
            throw new IllegalStateException("This API was constructed with null client keys. This should not be possible.");
        }
        return this.et;
    }
    
    public boolean dU() {
        return false;
    }
    
    public l dV() {
        com.google.android.gms.common.internal.l.hv(this.eu != null, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
        return this.eu;
    }
    
    public n dW() {
        com.google.android.gms.common.internal.l.hv(false, "This API was constructed with a ClientBuilder. Use getClientBuilder");
        return null;
    }
    
    public s dX() {
        l eu;
        if (!this.dU()) {
            eu = this.eu;
        }
        else {
            eu = null;
        }
        return eu;
    }
    
    public String dY() {
        return this.ev;
    }
}

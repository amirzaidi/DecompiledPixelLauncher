// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.m;

public final class cd implements m
{
    public static final cd wl;
    private final boolean wm;
    private final Long wn;
    private final boolean wo;
    private final boolean wp;
    private final String wq;
    private final Long wr;
    private final String ws;
    private final boolean wt;
    
    static {
        wl = new bO().Bo();
    }
    
    private cd(final boolean wt, final boolean wp, final String wq, final boolean wo, final String ws, final boolean wm, final Long wn, final Long wr) {
        this.wt = wt;
        this.wp = wp;
        this.wq = wq;
        this.wo = wo;
        this.wm = wm;
        this.ws = ws;
        this.wn = wn;
        this.wr = wr;
    }
    
    public boolean BI() {
        return this.wm;
    }
    
    public Long BJ() {
        return this.wr;
    }
    
    public String BK() {
        return this.wq;
    }
    
    public boolean BL() {
        return this.wt;
    }
    
    public Long BM() {
        return this.wn;
    }
    
    public String BN() {
        return this.ws;
    }
    
    public boolean BO() {
        return this.wp;
    }
    
    public boolean BP() {
        return this.wo;
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

public final class ac extends ba
{
    public String rs;
    public long rt;
    public long ru;
    public int rv;
    public String rw;
    
    public ac() {
        this.tL();
    }
    
    protected int computeSerializedSize() {
        final long n = 0L;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.rt != n) {
            computeSerializedSize += aV.wv(1, this.rt);
        }
        if (this.ru != n) {
            computeSerializedSize += aV.wv(2, this.ru);
        }
        if (this.rv != 0) {
            computeSerializedSize += aV.wn(3, this.rv);
        }
        if (!this.rs.equals("")) {
            computeSerializedSize += aV.wl(4, this.rs);
        }
        if (!this.rw.equals("")) {
            computeSerializedSize += aV.wl(5, this.rw);
        }
        return computeSerializedSize;
    }
    
    public void sa(final aV av) {
        final long n = 0L;
        if (this.rt != n) {
            av.vY(1, this.rt);
        }
        if (this.ru != n) {
            av.vY(2, this.ru);
        }
        if (this.rv != 0) {
            av.vX(3, this.rv);
        }
        if (!this.rs.equals("")) {
            av.vU(4, this.rs);
        }
        if (!this.rw.equals("")) {
            av.vU(5, this.rw);
        }
        super.sa(av);
    }
    
    public ac tK(final be be) {
        while (true) {
            final int xg = be.xG();
            switch (xg) {
                default: {
                    if (!super.xt(be, xg)) {
                        return this;
                    }
                    continue;
                }
                case 0: {
                    return this;
                }
                case 8: {
                    this.rt = be.xX();
                    continue;
                }
                case 16: {
                    this.ru = be.xX();
                    continue;
                }
                case 24: {
                    this.rv = be.xF();
                    continue;
                }
                case 34: {
                    this.rs = be.ya();
                    continue;
                }
                case 42: {
                    this.rw = be.ya();
                    continue;
                }
            }
        }
    }
    
    public ac tL() {
        final long n = 0L;
        this.rt = n;
        this.ru = n;
        this.rv = 0;
        this.rs = "";
        this.rw = "";
        this.tt = null;
        this.sB = -1;
        return this;
    }
}

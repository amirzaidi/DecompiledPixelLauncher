// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

public final class ad extends ba
{
    public long rx;
    public long ry;
    public int type;
    
    public ad() {
        this.tM();
    }
    
    protected int computeSerializedSize() {
        final long n = 0L;
        final int n2 = 3;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.type != n2) {
            computeSerializedSize += aV.wn(1, this.type);
        }
        if (this.ry != n) {
            computeSerializedSize += aV.wv(2, this.ry);
        }
        if (this.rx != n) {
            computeSerializedSize += aV.wv(n2, this.rx);
        }
        return computeSerializedSize;
    }
    
    public void sa(final aV av) {
        final long n = 0L;
        final int n2 = 3;
        if (this.type != n2) {
            av.vX(1, this.type);
        }
        if (this.ry != n) {
            av.vY(2, this.ry);
        }
        if (this.rx != n) {
            av.vY(n2, this.rx);
        }
        super.sa(av);
    }
    
    public ad tM() {
        final long n = 0L;
        this.type = 3;
        this.ry = n;
        this.rx = n;
        this.tt = null;
        this.sB = -1;
        return this;
    }
    
    public ad tN(final be be) {
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
                    final int xf = be.xF();
                    switch (xf) {
                        default: {
                            continue;
                        }
                        case 1:
                        case 2:
                        case 3: {
                            this.type = xf;
                            continue;
                        }
                    }
                    break;
                }
                case 16: {
                    this.ry = be.xX();
                    continue;
                }
                case 24: {
                    this.rx = be.xX();
                    continue;
                }
            }
        }
    }
}

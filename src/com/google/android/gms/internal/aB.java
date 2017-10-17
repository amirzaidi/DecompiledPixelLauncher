// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

public final class ab extends aI
{
    public long rp;
    public int rq;
    public int rr;
    
    public ab() {
        this.tJ();
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.rr != 0) {
            computeSerializedSize += aV.wn(1, this.rr);
        }
        if (this.rp != 0L) {
            computeSerializedSize += aV.wv(2, this.rp);
        }
        if (this.rq != 0) {
            computeSerializedSize += aV.wn(3, this.rq);
        }
        return computeSerializedSize;
    }
    
    public boolean equals(final Object o) {
        final boolean b = true;
        if (o == this) {
            return b;
        }
        if (o instanceof ab) {
            final ab ab = (ab)o;
            return this.rr == ab.rr && this.rp == ab.rp && this.rq == ab.rq && b;
        }
        return false;
    }
    
    public int hashCode() {
        return (((this.getClass().getName().hashCode() + 527) * 31 + this.rr) * 31 + (int)(this.rp ^ this.rp >>> 32)) * 31 + this.rq;
    }
    
    public void sa(final aV av) {
        if (this.rr != 0) {
            av.vX(1, this.rr);
        }
        if (this.rp != 0L) {
            av.vY(2, this.rp);
        }
        if (this.rq != 0) {
            av.vX(3, this.rq);
        }
        super.sa(av);
    }
    
    public ab tI(final be be) {
        while (true) {
            final int xg = be.xG();
            switch (xg) {
                default: {
                    if (!aN.vn(be, xg)) {
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
                        case 0:
                        case 1:
                        case 2:
                        case 3: {
                            this.rr = xf;
                            continue;
                        }
                    }
                    break;
                }
                case 16: {
                    this.rp = be.xX();
                    continue;
                }
                case 24: {
                    final int xf2 = be.xF();
                    switch (xf2) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2: {
                            this.rq = xf2;
                            continue;
                        }
                    }
                    break;
                }
            }
        }
    }
    
    public ab tJ() {
        this.rr = 0;
        this.rp = 0L;
        this.rq = 0;
        this.sB = -1;
        return this;
    }
}

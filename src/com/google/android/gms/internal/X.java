// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

public final class x extends aC
{
    public long po;
    public z[] pp;
    public int pq;
    
    public x() {
        this.sF();
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.pq != 0) {
            computeSerializedSize += aP.wm(1, this.pq);
        }
        if (this.po != 0L) {
            computeSerializedSize += aP.wu(3, this.po);
        }
        if (this.pp != null && this.pp.length > 0) {
            int n = computeSerializedSize;
            for (int i = 0; i < this.pp.length; ++i) {
                final z z = this.pp[i];
                if (z != null) {
                    n += aP.wK(4, z);
                }
            }
            computeSerializedSize = n;
        }
        return computeSerializedSize;
    }
    
    public boolean equals(final Object o) {
        final boolean b = true;
        if (o == this) {
            return b;
        }
        if (o instanceof x) {
            final x x = (x)o;
            return this.pq == x.pq && this.po == x.po && aR.wW(this.pp, x.pp) && b;
        }
        return false;
    }
    
    public int hashCode() {
        return (((this.getClass().getName().hashCode() + 527) * 31 + this.pq) * 31 + (int)(this.po ^ this.po >>> 32)) * 31 + aR.xe(this.pp);
    }
    
    public x sE(final aY ay) {
        while (true) {
            final int xf = ay.xF();
            switch (xf) {
                default: {
                    if (!aH.vm(ay, xf)) {
                        return this;
                    }
                    continue;
                }
                case 0: {
                    return this;
                }
                case 8: {
                    final int xe = ay.xE();
                    switch (xe) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2:
                        case 3: {
                            this.pq = xe;
                            continue;
                        }
                    }
                    break;
                }
                case 24: {
                    this.po = ay.xW();
                    continue;
                }
                case 34: {
                    final int vj = aH.vj(ay, 34);
                    int i;
                    if (this.pp != null) {
                        i = this.pp.length;
                    }
                    else {
                        i = 0;
                    }
                    final z[] pp = new z[vj + i];
                    if (i != 0) {
                        System.arraycopy(this.pp, 0, pp, 0, i);
                    }
                    while (i < pp.length - 1) {
                        ay.xP(pp[i] = new z());
                        ay.xF();
                        ++i;
                    }
                    ay.xP(pp[i] = new z());
                    this.pp = pp;
                    continue;
                }
            }
        }
    }
    
    public x sF() {
        this.pq = 0;
        this.po = 0L;
        this.pp = z.sH();
        this.sH = -1;
        return this;
    }
    
    public void sc(final aP ap) {
        int i = 0;
        if (this.pq != 0) {
            ap.vW(1, this.pq);
        }
        if (this.po != 0L) {
            ap.vX(3, this.po);
        }
        if (this.pp != null && this.pp.length > 0) {
            while (i < this.pp.length) {
                final z z = this.pp[i];
                if (z != null) {
                    ap.wP(4, z);
                }
                ++i;
            }
        }
        super.sc(ap);
    }
}

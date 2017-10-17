// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

public final class ae extends ba
{
    public int count;
    public long rz;
    public int type;
    
    public ae() {
        this.tO();
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.type != 0) {
            computeSerializedSize += aV.wn(1, this.type);
        }
        if (this.rz != 0L) {
            computeSerializedSize += aV.wv(2, this.rz);
        }
        if (this.count != 0) {
            computeSerializedSize += aV.wn(3, this.count);
        }
        return computeSerializedSize;
    }
    
    public boolean equals(final Object o) {
        final boolean b = true;
        boolean b2 = false;
        if (o == this) {
            return b;
        }
        if (!(o instanceof ae)) {
            return false;
        }
        final ae ae = (ae)o;
        if (this.type != ae.type) {
            return false;
        }
        if (this.rz != ae.rz) {
            return false;
        }
        if (this.count != ae.count) {
            return false;
        }
        if (this.tt != null && !this.tt.isEmpty()) {
            return this.tt.equals(ae.tt);
        }
        if (ae.tt == null || ae.tt.isEmpty()) {
            b2 = b;
        }
        return b2;
    }
    
    public int hashCode() {
        int hashCode = 0;
        final int n = ((((this.getClass().getName().hashCode() + 527) * 31 + this.type) * 31 + (int)(this.rz ^ this.rz >>> 32)) * 31 + this.count) * 31;
        if (this.tt != null && !this.tt.isEmpty()) {
            hashCode = this.tt.hashCode();
        }
        return hashCode + n;
    }
    
    public void sa(final aV av) {
        if (this.type != 0) {
            av.vX(1, this.type);
        }
        if (this.rz != 0L) {
            av.vY(2, this.rz);
        }
        if (this.count != 0) {
            av.vX(3, this.count);
        }
        super.sa(av);
    }
    
    public ae tO() {
        this.type = 0;
        this.rz = 0L;
        this.count = 0;
        this.tt = null;
        this.sB = -1;
        return this;
    }
    
    public ae tP(final be be) {
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
                        case 0:
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
                    this.rz = be.xX();
                    continue;
                }
                case 24: {
                    this.count = be.xF();
                    continue;
                }
            }
        }
    }
}

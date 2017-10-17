// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

public final class v extends aU
{
    public long pj;
    public int type;
    
    public v() {
        this.sB();
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.type != 0) {
            computeSerializedSize += aP.wm(1, this.type);
        }
        if (this.pj != 0L) {
            computeSerializedSize += aP.wu(2, this.pj);
        }
        return computeSerializedSize;
    }
    
    public boolean equals(final Object o) {
        final boolean b = true;
        boolean b2 = false;
        if (o == this) {
            return b;
        }
        if (!(o instanceof v)) {
            return false;
        }
        final v v = (v)o;
        if (this.type != v.type) {
            return false;
        }
        if (this.pj != v.pj) {
            return false;
        }
        if (this.tz != null && !this.tz.isEmpty()) {
            return this.tz.equals(v.tz);
        }
        if (v.tz == null || v.tz.isEmpty()) {
            b2 = b;
        }
        return b2;
    }
    
    public int hashCode() {
        int hashCode = 0;
        final int n = (((this.getClass().getName().hashCode() + 527) * 31 + this.type) * 31 + (int)(this.pj ^ this.pj >>> 32)) * 31;
        if (this.tz != null && !this.tz.isEmpty()) {
            hashCode = this.tz.hashCode();
        }
        return hashCode + n;
    }
    
    public v sA(final aY ay) {
        while (true) {
            final int xf = ay.xF();
            switch (xf) {
                default: {
                    if (!super.xs(ay, xf)) {
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
                        case 3:
                        case 4: {
                            this.type = xe;
                            continue;
                        }
                    }
                    break;
                }
                case 16: {
                    this.pj = ay.xW();
                    continue;
                }
            }
        }
    }
    
    public v sB() {
        this.type = 0;
        this.pj = 0L;
        this.tz = null;
        this.sH = -1;
        return this;
    }
    
    public void sc(final aP ap) {
        if (this.type != 0) {
            ap.vW(1, this.type);
        }
        if (this.pj != 0L) {
            ap.vX(2, this.pj);
        }
        super.sc(ap);
    }
}

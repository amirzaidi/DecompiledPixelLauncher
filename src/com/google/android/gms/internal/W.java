// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

public final class w extends aC
{
    public float pk;
    public int pl;
    public long pm;
    public int pn;
    
    public w() {
        this.sD();
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.pl != 0) {
            computeSerializedSize += aP.wm(1, this.pl);
        }
        if (this.pm != 0L) {
            computeSerializedSize += aP.wu(2, this.pm);
        }
        if (Float.floatToIntBits(this.pk) != Float.floatToIntBits(0.0f)) {
            computeSerializedSize += aP.wc(3, this.pk);
        }
        if (this.pn != 0) {
            computeSerializedSize += aP.wm(4, this.pn);
        }
        return computeSerializedSize;
    }
    
    public boolean equals(final Object o) {
        final boolean b = true;
        if (o == this) {
            return b;
        }
        if (o instanceof w) {
            final w w = (w)o;
            return this.pl == w.pl && this.pm == w.pm && Float.floatToIntBits(this.pk) == Float.floatToIntBits(w.pk) && this.pn == w.pn && b;
        }
        return false;
    }
    
    public int hashCode() {
        return ((((this.getClass().getName().hashCode() + 527) * 31 + this.pl) * 31 + (int)(this.pm ^ this.pm >>> 32)) * 31 + Float.floatToIntBits(this.pk)) * 31 + this.pn;
    }
    
    public w sC(final aY ay) {
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
                            this.pl = xe;
                            continue;
                        }
                    }
                    break;
                }
                case 16: {
                    this.pm = ay.xW();
                    continue;
                }
                case 29: {
                    this.pk = ay.yc();
                    continue;
                }
                case 32: {
                    this.pn = ay.xE();
                    continue;
                }
            }
        }
    }
    
    public w sD() {
        this.pl = 0;
        this.pm = 0L;
        this.pk = 0.0f;
        this.pn = 0;
        this.sH = -1;
        return this;
    }
    
    public void sc(final aP ap) {
        if (this.pl != 0) {
            ap.vW(1, this.pl);
        }
        if (this.pm != 0L) {
            ap.vX(2, this.pm);
        }
        if (Float.floatToIntBits(this.pk) != Float.floatToIntBits(0.0f)) {
            ap.wq(3, this.pk);
        }
        if (this.pn != 0) {
            ap.vW(4, this.pn);
        }
        super.sc(ap);
    }
}

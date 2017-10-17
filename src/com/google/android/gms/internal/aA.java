// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

public final class aa extends aI
{
    public int rh;
    public int ri;
    public int rj;
    public long rk;
    public long rl;
    public double rm;
    public int rn;
    public double ro;
    
    public aa() {
        this.tH();
    }
    
    protected int computeSerializedSize() {
        final long n = 0L;
        final double n2 = 0.0;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.rj != 0) {
            computeSerializedSize += aV.wn(1, this.rj);
        }
        if (this.rn != 0) {
            computeSerializedSize += aV.wn(2, this.rn);
        }
        if (this.rl != n) {
            computeSerializedSize += aV.wv(3, this.rl);
        }
        if (this.ri != 0) {
            computeSerializedSize += aV.wn(4, this.ri);
        }
        if (this.rh != 0) {
            computeSerializedSize += aV.wn(5, this.rh);
        }
        if (Double.doubleToLongBits(this.rm) != Double.doubleToLongBits(n2)) {
            computeSerializedSize += aV.wN(6, this.rm);
        }
        if (Double.doubleToLongBits(this.ro) != Double.doubleToLongBits(n2)) {
            computeSerializedSize += aV.wN(7, this.ro);
        }
        if (this.rk != n) {
            computeSerializedSize += aV.wv(8, this.rk);
        }
        return computeSerializedSize;
    }
    
    public boolean equals(final Object o) {
        final boolean b = true;
        if (o == this) {
            return b;
        }
        if (o instanceof aa) {
            final aa aa = (aa)o;
            return this.rj == aa.rj && this.rn == aa.rn && this.rl == aa.rl && this.ri == aa.ri && this.rh == aa.rh && Double.doubleToLongBits(this.rm) == Double.doubleToLongBits(aa.rm) && Double.doubleToLongBits(this.ro) == Double.doubleToLongBits(aa.ro) && this.rk == aa.rk && b;
        }
        return false;
    }
    
    public int hashCode() {
        final int n = 32;
        final int n2 = (((((this.getClass().getName().hashCode() + 527) * 31 + this.rj) * 31 + this.rn) * 31 + (int)(this.rl ^ this.rl >>> n)) * 31 + this.ri) * 31 + this.rh;
        final long doubleToLongBits = Double.doubleToLongBits(this.rm);
        final int n3 = n2 * 31 + (int)(doubleToLongBits ^ doubleToLongBits >>> n);
        final long doubleToLongBits2 = Double.doubleToLongBits(this.ro);
        return (n3 * 31 + (int)(doubleToLongBits2 ^ doubleToLongBits2 >>> n)) * 31 + (int)(this.rk ^ this.rk >>> n);
    }
    
    public void sa(final aV av) {
        final long n = 0L;
        final double n2 = 0.0;
        if (this.rj != 0) {
            av.vX(1, this.rj);
        }
        if (this.rn != 0) {
            av.vX(2, this.rn);
        }
        if (this.rl != n) {
            av.vY(3, this.rl);
        }
        if (this.ri != 0) {
            av.vX(4, this.ri);
        }
        if (this.rh != 0) {
            av.vX(5, this.rh);
        }
        if (Double.doubleToLongBits(this.rm) != Double.doubleToLongBits(n2)) {
            av.wk(6, this.rm);
        }
        if (Double.doubleToLongBits(this.ro) != Double.doubleToLongBits(n2)) {
            av.wk(7, this.ro);
        }
        if (this.rk != n) {
            av.vY(8, this.rk);
        }
        super.sa(av);
    }
    
    public aa tG(final be be) {
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
                            this.rj = xf;
                            continue;
                        }
                    }
                    break;
                }
                case 16: {
                    final int xf2 = be.xF();
                    switch (xf2) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1: {
                            this.rn = xf2;
                            continue;
                        }
                    }
                    break;
                }
                case 24: {
                    this.rl = be.xX();
                    continue;
                }
                case 32: {
                    this.ri = be.xF();
                    continue;
                }
                case 40: {
                    this.rh = be.xF();
                    continue;
                }
                case 49: {
                    this.rm = be.xS();
                    continue;
                }
                case 57: {
                    this.ro = be.xS();
                    continue;
                }
                case 64: {
                    this.rk = be.xX();
                    continue;
                }
            }
        }
    }
    
    public aa tH() {
        final long n = 0L;
        final double n2 = 0.0;
        this.rj = 0;
        this.rn = 0;
        this.rl = n;
        this.ri = 0;
        this.rh = 0;
        this.rm = n2;
        this.ro = n2;
        this.rk = n;
        this.sB = -1;
        return this;
    }
}

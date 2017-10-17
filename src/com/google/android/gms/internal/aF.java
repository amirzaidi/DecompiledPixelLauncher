// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

public final class af extends aI
{
    public String[] rA;
    public int rB;
    public String[] rC;
    public long rD;
    public long rE;
    public String rF;
    public int[] rG;
    
    public af() {
        this.tQ();
    }
    
    protected int computeSerializedSize() {
        final long n = 0L;
        final int n2 = 1;
        int i = 0;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.rB != 0) {
            computeSerializedSize += aV.wn(n2, this.rB);
        }
        if (this.rE != n) {
            computeSerializedSize += aV.wv(2, this.rE);
        }
        if (this.rG != null && this.rG.length > 0) {
            int j = 0;
            int n3 = 0;
            while (j < this.rG.length) {
                n3 += aV.wh(this.rG[j]);
                ++j;
            }
            computeSerializedSize = computeSerializedSize + n3 + this.rG.length * 1;
        }
        if (this.rC != null && this.rC.length > 0) {
            int k = 0;
            int n4 = 0;
            int n5 = 0;
            while (k < this.rC.length) {
                final String s = this.rC[k];
                if (s != null) {
                    ++n5;
                    n4 += aV.wi(s);
                }
                ++k;
            }
            computeSerializedSize = computeSerializedSize + n4 + n5 * 1;
        }
        if (this.rD != n) {
            computeSerializedSize += aV.wv(5, this.rD);
        }
        if (this.rA != null && this.rA.length > 0) {
            int n6 = 0;
            int n7 = 0;
            while (i < this.rA.length) {
                final String s2 = this.rA[i];
                if (s2 != null) {
                    ++n7;
                    n6 += aV.wi(s2);
                }
                ++i;
            }
            computeSerializedSize = computeSerializedSize + n6 + n7 * 1;
        }
        if (!this.rF.equals("")) {
            computeSerializedSize += aV.wl(7, this.rF);
        }
        return computeSerializedSize;
    }
    
    public boolean equals(final Object o) {
        final boolean b = true;
        if (o == this) {
            return b;
        }
        if (!(o instanceof af)) {
            return false;
        }
        final af af = (af)o;
        if (this.rB != af.rB) {
            return false;
        }
        if (this.rE != af.rE) {
            return false;
        }
        if (!aX.xe(this.rG, af.rG)) {
            return false;
        }
        if (!aX.wX(this.rC, af.rC)) {
            return false;
        }
        if (this.rD != af.rD) {
            return false;
        }
        if (aX.wX(this.rA, af.rA)) {
            if (this.rF != null) {
                if (!this.rF.equals(af.rF)) {
                    return false;
                }
            }
            else if (af.rF != null) {
                return false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        final int n = 32;
        final int n2 = (((((((this.getClass().getName().hashCode() + 527) * 31 + this.rB) * 31 + (int)(this.rE ^ this.rE >>> n)) * 31 + aX.xb(this.rG)) * 31 + aX.xf(this.rC)) * 31 + (int)(this.rD ^ this.rD >>> n)) * 31 + aX.xf(this.rA)) * 31;
        int hashCode;
        if (this.rF != null) {
            hashCode = this.rF.hashCode();
        }
        else {
            hashCode = 0;
        }
        return hashCode + n2;
    }
    
    public void sa(final aV av) {
        final long n = 0L;
        int i = 0;
        if (this.rB != 0) {
            av.vX(1, this.rB);
        }
        if (this.rE != n) {
            av.vY(2, this.rE);
        }
        if (this.rG != null && this.rG.length > 0) {
            for (int j = 0; j < this.rG.length; ++j) {
                av.vX(3, this.rG[j]);
            }
        }
        if (this.rC != null && this.rC.length > 0) {
            for (int k = 0; k < this.rC.length; ++k) {
                final String s = this.rC[k];
                if (s != null) {
                    av.vU(4, s);
                }
            }
        }
        if (this.rD != n) {
            av.vY(5, this.rD);
        }
        if (this.rA != null && this.rA.length > 0) {
            while (i < this.rA.length) {
                final String s2 = this.rA[i];
                if (s2 != null) {
                    av.vU(6, s2);
                }
                ++i;
            }
        }
        if (!this.rF.equals("")) {
            av.vU(7, this.rF);
        }
        super.sa(av);
    }
    
    public af tQ() {
        final long n = 0L;
        this.rB = 0;
        this.rE = n;
        this.rG = aN.sO;
        this.rC = aN.sJ;
        this.rD = n;
        this.rA = aN.sJ;
        this.rF = "";
        this.sB = -1;
        return this;
    }
    
    public af tR(final be be) {
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
                        case 3:
                        case 4: {
                            this.rB = xf;
                            continue;
                        }
                    }
                    break;
                }
                case 16: {
                    this.rE = be.xX();
                    continue;
                }
                case 24: {
                    final int vk = aN.vk(be, 24);
                    int i;
                    if (this.rG != null) {
                        i = this.rG.length;
                    }
                    else {
                        i = 0;
                    }
                    final int[] rg = new int[vk + i];
                    if (i != 0) {
                        System.arraycopy(this.rG, 0, rg, 0, i);
                    }
                    while (i < rg.length - 1) {
                        rg[i] = be.xF();
                        be.xG();
                        ++i;
                    }
                    rg[i] = be.xF();
                    this.rG = rg;
                    continue;
                }
                case 26: {
                    final int yf = be.yf(be.yc());
                    final int xl = be.xL();
                    int n = 0;
                    while (be.xK() > 0) {
                        be.xF();
                        ++n;
                    }
                    be.xZ(xl);
                    int j;
                    if (this.rG != null) {
                        j = this.rG.length;
                    }
                    else {
                        j = 0;
                    }
                    final int[] rg2 = new int[n + j];
                    if (j != 0) {
                        System.arraycopy(this.rG, 0, rg2, 0, j);
                    }
                    while (j < rg2.length) {
                        rg2[j] = be.xF();
                        ++j;
                    }
                    this.rG = rg2;
                    be.xT(yf);
                    continue;
                }
                case 34: {
                    final int vk2 = aN.vk(be, 34);
                    int k;
                    if (this.rC != null) {
                        k = this.rC.length;
                    }
                    else {
                        k = 0;
                    }
                    final String[] rc = new String[vk2 + k];
                    if (k != 0) {
                        System.arraycopy(this.rC, 0, rc, 0, k);
                    }
                    while (k < rc.length - 1) {
                        rc[k] = be.ya();
                        be.xG();
                        ++k;
                    }
                    rc[k] = be.ya();
                    this.rC = rc;
                    continue;
                }
                case 40: {
                    this.rD = be.xX();
                    continue;
                }
                case 50: {
                    final int vk3 = aN.vk(be, 50);
                    int l;
                    if (this.rA != null) {
                        l = this.rA.length;
                    }
                    else {
                        l = 0;
                    }
                    final String[] ra = new String[vk3 + l];
                    if (l != 0) {
                        System.arraycopy(this.rA, 0, ra, 0, l);
                    }
                    while (l < ra.length - 1) {
                        ra[l] = be.ya();
                        be.xG();
                        ++l;
                    }
                    ra[l] = be.ya();
                    this.rA = ra;
                    continue;
                }
                case 58: {
                    this.rF = be.ya();
                    continue;
                }
            }
        }
    }
}

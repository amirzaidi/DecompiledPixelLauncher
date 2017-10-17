// 
// Decompiled by Procyon v0.5.30
// 

package com.google.protobuf.nano;

public final class h implements Cloneable
{
    private static final k PU;
    private int[] PV;
    private k[] PW;
    private boolean PX;
    private int mSize;
    
    static {
        PU = new k();
    }
    
    h() {
        this(10);
    }
    
    h(final int n) {
        this.PX = false;
        final int xa = this.Xa(n);
        this.PV = new int[xa];
        this.PW = new k[xa];
        this.mSize = 0;
    }
    
    private void WY() {
        final int mSize = this.mSize;
        final int[] pv = this.PV;
        final k[] pw = this.PW;
        int i = 0;
        int mSize2 = 0;
        while (i < mSize) {
            final k k = pw[i];
            if (k != h.PU) {
                if (i != mSize2) {
                    pv[mSize2] = pv[i];
                    pw[mSize2] = k;
                    pw[i] = null;
                }
                ++mSize2;
            }
            ++i;
        }
        this.PX = false;
        this.mSize = mSize2;
    }
    
    private int WZ(final int n) {
        final int n2 = 1;
        for (int i = 4; i < 32; ++i) {
            if (n <= (n2 << i) - 12) {
                return (n2 << i) - 12;
            }
        }
        return n;
    }
    
    private int Xa(final int n) {
        return this.WZ(n * 4) / 4;
    }
    
    private boolean Xc(final k[] array, final k[] array2, final int n) {
        for (int i = 0; i < n; ++i) {
            if (!array[i].equals(array2[i])) {
                return false;
            }
        }
        return true;
    }
    
    private boolean Xd(final int[] array, final int[] array2, final int n) {
        for (int i = 0; i < n; ++i) {
            if (array[i] != array2[i]) {
                return false;
            }
        }
        return true;
    }
    
    k Xb(final int n) {
        if (this.PX) {
            this.WY();
        }
        return this.PW[n];
    }
    
    public final h clone() {
        int i = 0;
        final int size = this.size();
        final h h = new h(size);
        System.arraycopy(this.PV, 0, h.PV, 0, size);
        while (i < size) {
            if (this.PW[i] != null) {
                h.PW[i] = this.PW[i].clone();
            }
            ++i;
        }
        h.mSize = size;
        return h;
    }
    
    public boolean equals(final Object o) {
        boolean xc = false;
        if (o == this) {
            return true;
        }
        if (!(o instanceof h)) {
            return false;
        }
        final h h = (h)o;
        if (this.size() != h.size()) {
            return false;
        }
        if (this.Xd(this.PV, h.PV, this.mSize)) {
            xc = this.Xc(this.PW, h.PW, this.mSize);
        }
        return xc;
    }
    
    public int hashCode() {
        if (this.PX) {
            this.WY();
        }
        int n = 17;
        for (int i = 0; i < this.mSize; ++i) {
            n = (n * 31 + this.PV[i]) * 31 + this.PW[i].hashCode();
        }
        return n;
    }
    
    int size() {
        if (this.PX) {
            this.WY();
        }
        return this.mSize;
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.protobuf.nano;

public final class h implements Cloneable
{
    private static final k Ln;
    private int[] Lo;
    private k[] Lp;
    private boolean Lq;
    private int mSize;
    
    static {
        Ln = new k();
    }
    
    h() {
        this(10);
    }
    
    h(final int n) {
        this.Lq = false;
        final int tf = this.Tf(n);
        this.Lo = new int[tf];
        this.Lp = new k[tf];
        this.mSize = 0;
    }
    
    private void Td() {
        final int mSize = this.mSize;
        final int[] lo = this.Lo;
        final k[] lp = this.Lp;
        int i = 0;
        int mSize2 = 0;
        while (i < mSize) {
            final k k = lp[i];
            if (k != h.Ln) {
                if (i != mSize2) {
                    lo[mSize2] = lo[i];
                    lp[mSize2] = k;
                    lp[i] = null;
                }
                ++mSize2;
            }
            ++i;
        }
        this.Lq = false;
        this.mSize = mSize2;
    }
    
    private int Te(final int n) {
        final int n2 = 1;
        for (int i = 4; i < 32; ++i) {
            if (n <= (n2 << i) - 12) {
                return (n2 << i) - 12;
            }
        }
        return n;
    }
    
    private int Tf(final int n) {
        return this.Te(n * 4) / 4;
    }
    
    private boolean Th(final k[] array, final k[] array2, final int n) {
        for (int i = 0; i < n; ++i) {
            if (!array[i].equals(array2[i])) {
                return false;
            }
        }
        return true;
    }
    
    private boolean Ti(final int[] array, final int[] array2, final int n) {
        for (int i = 0; i < n; ++i) {
            if (array[i] != array2[i]) {
                return false;
            }
        }
        return true;
    }
    
    k Tg(final int n) {
        if (this.Lq) {
            this.Td();
        }
        return this.Lp[n];
    }
    
    public final h clone() {
        int i = 0;
        final int size = this.size();
        final h h = new h(size);
        System.arraycopy(this.Lo, 0, h.Lo, 0, size);
        while (i < size) {
            if (this.Lp[i] != null) {
                h.Lp[i] = this.Lp[i].clone();
            }
            ++i;
        }
        h.mSize = size;
        return h;
    }
    
    public boolean equals(final Object o) {
        boolean th = false;
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
        if (this.Ti(this.Lo, h.Lo, this.mSize)) {
            th = this.Th(this.Lp, h.Lp, this.mSize);
        }
        return th;
    }
    
    public int hashCode() {
        if (this.Lq) {
            this.Td();
        }
        int n = 17;
        for (int i = 0; i < this.mSize; ++i) {
            n = (n * 31 + this.Lo[i]) * 31 + this.Lp[i].hashCode();
        }
        return n;
    }
    
    int size() {
        if (this.Lq) {
            this.Td();
        }
        return this.mSize;
    }
}

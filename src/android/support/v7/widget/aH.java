// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

class ah
{
    long TA;
    ah TB;
    
    ah() {
        this.TA = 0L;
    }
    
    private void acp() {
        if (this.TB == null) {
            this.TB = new ah();
        }
    }
    
    void acm(final int n) {
        if (n < 64) {
            this.TA &= ~(1L << n);
        }
        else if (this.TB != null) {
            this.TB.acm(n - 64);
        }
    }
    
    boolean acn(final int n) {
        final long n2 = 1L;
        final long n3 = -1;
        final int n4 = 1;
        if (n < 64) {
            final int n5 = (int)(n2 << n);
            boolean b;
            if ((this.TA & n5) != 0x0L) {
                b = (n4 != 0);
            }
            else {
                b = false;
            }
            this.TA &= (n5 ^ n3);
            final int n6 = (int)(n5 - n2);
            this.TA = (Long.rotateRight((n6 ^ n3) & this.TA, n4) | (this.TA & n6));
            if (this.TB != null) {
                if (this.TB.get(0)) {
                    this.acr(63);
                }
                this.TB.acn(0);
            }
            return b;
        }
        this.acp();
        return this.TB.acn(n - 64);
    }
    
    void aco(final int n, final boolean b) {
        final long n2 = 1L;
        final int n3 = 1;
        if (n < 64) {
            int n4;
            if ((this.TA & Long.MIN_VALUE) != 0x0L) {
                n4 = n3;
            }
            else {
                n4 = 0;
            }
            final long n5 = (n2 << n) - n2;
            this.TA = ((~n5 & this.TA) << n3 | (this.TA & n5));
            if (!b) {
                this.acm(n);
            }
            else {
                this.acr(n);
            }
            if (n4 != 0 || this.TB != null) {
                this.acp();
                this.TB.aco(0, n4 != 0);
            }
        }
        else {
            this.acp();
            this.TB.aco(n - 64, b);
        }
    }
    
    int acq(final int n) {
        final int n2 = 64;
        final long n3 = 1L;
        if (this.TB != null) {
            if (n >= n2) {
                return this.TB.acq(n - 64) + Long.bitCount(this.TA);
            }
            return Long.bitCount(this.TA & (n3 << n) - n3);
        }
        else {
            if (n < n2) {
                return Long.bitCount(this.TA & (n3 << n) - n3);
            }
            return Long.bitCount(this.TA);
        }
    }
    
    void acr(final int n) {
        if (n < 64) {
            this.TA |= 1L << n;
        }
        else {
            this.acp();
            this.TB.acr(n - 64);
        }
    }
    
    boolean get(final int n) {
        if (n < 64) {
            return (this.TA & 1L << n) != 0x0L;
        }
        this.acp();
        return this.TB.get(n - 64);
    }
    
    void reset() {
        this.TA = 0L;
        if (this.TB != null) {
            this.TB.reset();
        }
    }
    
    public String toString() {
        String s;
        if (this.TB != null) {
            s = this.TB.toString() + "xx" + Long.toBinaryString(this.TA);
        }
        else {
            s = Long.toBinaryString(this.TA);
        }
        return s;
    }
}

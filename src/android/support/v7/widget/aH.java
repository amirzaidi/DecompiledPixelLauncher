// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

class ah
{
    long RR;
    ah RS;
    
    ah() {
        this.RR = 0L;
    }
    
    private void abn() {
        if (this.RS == null) {
            this.RS = new ah();
        }
    }
    
    void abk(final int n) {
        if (n < 64) {
            this.RR &= ~(1L << n);
        }
        else if (this.RS != null) {
            this.RS.abk(n - 64);
        }
    }
    
    boolean abl(final int n) {
        final long n2 = 1L;
        final long n3 = -1;
        final int n4 = 1;
        if (n < 64) {
            final int n5 = (int)(n2 << n);
            boolean b;
            if ((this.RR & n5) != 0x0L) {
                b = (n4 != 0);
            }
            else {
                b = false;
            }
            this.RR &= (n5 ^ n3);
            final int n6 = (int)(n5 - n2);
            this.RR = (Long.rotateRight((n6 ^ n3) & this.RR, n4) | (this.RR & n6));
            if (this.RS != null) {
                if (this.RS.abo(0)) {
                    this.abq(63);
                }
                this.RS.abl(0);
            }
            return b;
        }
        this.abn();
        return this.RS.abl(n - 64);
    }
    
    void abm(final int n, final boolean b) {
        final long n2 = 1L;
        final int n3 = 1;
        if (n < 64) {
            int n4;
            if ((this.RR & Long.MIN_VALUE) != 0x0L) {
                n4 = n3;
            }
            else {
                n4 = 0;
            }
            final long n5 = (n2 << n) - n2;
            this.RR = ((~n5 & this.RR) << n3 | (this.RR & n5));
            if (!b) {
                this.abk(n);
            }
            else {
                this.abq(n);
            }
            if (n4 != 0 || this.RS != null) {
                this.abn();
                this.RS.abm(0, n4 != 0);
            }
        }
        else {
            this.abn();
            this.RS.abm(n - 64, b);
        }
    }
    
    boolean abo(final int n) {
        if (n < 64) {
            return (this.RR & 1L << n) != 0x0L;
        }
        this.abn();
        return this.RS.abo(n - 64);
    }
    
    int abp(final int n) {
        final int n2 = 64;
        final long n3 = 1L;
        if (this.RS != null) {
            if (n >= n2) {
                return this.RS.abp(n - 64) + Long.bitCount(this.RR);
            }
            return Long.bitCount(this.RR & (n3 << n) - n3);
        }
        else {
            if (n < n2) {
                return Long.bitCount(this.RR & (n3 << n) - n3);
            }
            return Long.bitCount(this.RR);
        }
    }
    
    void abq(final int n) {
        if (n < 64) {
            this.RR |= 1L << n;
        }
        else {
            this.abn();
            this.RS.abq(n - 64);
        }
    }
    
    void reset() {
        this.RR = 0L;
        if (this.RS != null) {
            this.RS.reset();
        }
    }
    
    public String toString() {
        String s;
        if (this.RS != null) {
            s = this.RS.toString() + "xx" + Long.toBinaryString(this.RR);
        }
        else {
            s = Long.toBinaryString(this.RR);
        }
        return s;
    }
}

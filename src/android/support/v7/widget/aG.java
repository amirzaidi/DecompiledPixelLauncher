// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

class ag
{
    int Tv;
    int Tw;
    int Tx;
    int Ty;
    int Tz;
    
    ag() {
        this.Tx = 0;
    }
    
    int acj(final int n, final int n2) {
        if (n > n2) {
            return 1;
        }
        if (n != n2) {
            return 4;
        }
        return 2;
    }
    
    void ack() {
        this.Tx = 0;
    }
    
    boolean acl() {
        return ((this.Tx & 0x7) == 0x0 || (this.Tx & this.acj(this.Tz, this.Tv) << 0) != 0x0) && ((this.Tx & 0x70) == 0x0 || (this.Tx & this.acj(this.Tz, this.Tw) << 4) != 0x0) && ((this.Tx & 0x700) == 0x0 || (this.Tx & this.acj(this.Ty, this.Tv) << 8) != 0x0) && ((this.Tx & 0x7000) == 0x0 || (this.Tx & this.acj(this.Ty, this.Tw) << 12) != 0x0);
    }
    
    void addFlags(final int n) {
        this.Tx |= n;
    }
    
    void setBounds(final int tv, final int tw, final int tz, final int ty) {
        this.Tv = tv;
        this.Tw = tw;
        this.Tz = tz;
        this.Ty = ty;
    }
}

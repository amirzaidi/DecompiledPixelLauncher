// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

class af
{
    int RH;
    int RI;
    int RJ;
    int RK;
    int RL;
    
    af() {
        this.RJ = 0;
    }
    
    int abh(final int n, final int n2) {
        if (n > n2) {
            return 1;
        }
        if (n != n2) {
            return 4;
        }
        return 2;
    }
    
    void abi() {
        this.RJ = 0;
    }
    
    boolean abj() {
        return ((this.RJ & 0x7) == 0x0 || (this.RJ & this.abh(this.RL, this.RH) << 0) != 0x0) && ((this.RJ & 0x70) == 0x0 || (this.RJ & this.abh(this.RL, this.RI) << 4) != 0x0) && ((this.RJ & 0x700) == 0x0 || (this.RJ & this.abh(this.RK, this.RH) << 8) != 0x0) && ((this.RJ & 0x7000) == 0x0 || (this.RJ & this.abh(this.RK, this.RI) << 12) != 0x0);
    }
    
    void addFlags(final int n) {
        this.RJ |= n;
    }
    
    void setBounds(final int rh, final int ri, final int rl, final int rk) {
        this.RH = rh;
        this.RI = ri;
        this.RL = rl;
        this.RK = rk;
    }
}

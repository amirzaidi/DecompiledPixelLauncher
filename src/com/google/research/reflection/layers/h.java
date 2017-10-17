// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

class h implements c
{
    final /* synthetic */ b NG;
    final /* synthetic */ b NH;
    final /* synthetic */ boolean NI;
    final /* synthetic */ boolean NJ;
    final /* synthetic */ b NK;
    
    h(final boolean ni, final b nk, final b nh, final b ng, final boolean nj) {
        this.NI = ni;
        this.NK = nk;
        this.NH = nh;
        this.NG = ng;
        this.NJ = nj;
    }
    
    private double Ue(final int n, final int n2) {
        final int tu = this.NH.TU(false);
        double n3 = 0.0;
        for (int i = 0; i < tu; ++i) {
            n3 += this.NH.TP(false, n, i) * this.NG.TP(this.NJ, i, n2);
        }
        return n3;
    }
    
    public Boolean Ub(final int n) {
        if (!this.NI) {
            this.NK.Nl[n] = this.Ue(n / this.NK.TU(false), n % this.NK.TU(false));
        }
        else {
            final double[] nl = this.NK.Nl;
            nl[n] += this.Ue(n / this.NK.TU(false), n % this.NK.TU(false));
        }
        return true;
    }
}

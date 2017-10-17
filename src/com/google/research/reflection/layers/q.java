// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

class q implements c
{
    final /* synthetic */ b OJ;
    final /* synthetic */ double OK;
    
    q(final b oj, final double ok) {
        this.OJ = oj;
        this.OK = ok;
    }
    
    public Boolean Ub(final int n) {
        if (this.OJ.Nl[n] != 0.0) {
            final double[] nl = this.OJ.Nl;
            nl[n] *= this.OK;
        }
        return true;
    }
}

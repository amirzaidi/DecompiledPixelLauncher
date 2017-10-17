// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

class q implements c
{
    final /* synthetic */ b NP;
    final /* synthetic */ double NQ;
    
    q(final b np, final double nq) {
        this.NP = np;
        this.NQ = nq;
    }
    
    public Boolean Vo(final int n) {
        if (this.NP.Mr[n] != 0.0) {
            final double[] mr = this.NP.Mr;
            mr[n] *= this.NQ;
        }
        return true;
    }
}

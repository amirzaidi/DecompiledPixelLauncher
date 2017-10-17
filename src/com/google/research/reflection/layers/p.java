// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

class p implements c
{
    final /* synthetic */ b NL;
    final /* synthetic */ b NM;
    final /* synthetic */ boolean NN;
    final /* synthetic */ b NO;
    
    p(final boolean nn, final b no, final b nm, final b nl) {
        this.NN = nn;
        this.NO = no;
        this.NM = nm;
        this.NL = nl;
    }
    
    public Boolean Vo(final int n) {
        if (!this.NN) {
            this.NO.Mr[n] = this.NM.Mr[n] + this.NL.Mr[n];
        }
        else {
            final double[] mr = this.NO.Mr;
            mr[n] += this.NM.Mr[n] + this.NL.Mr[n];
        }
        return true;
    }
}

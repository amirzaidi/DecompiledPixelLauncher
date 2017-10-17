// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

class g implements c
{
    final /* synthetic */ int ND;
    final /* synthetic */ b NE;
    final /* synthetic */ b NF;
    
    g(final int nd, final b nf, final b ne) {
        this.ND = nd;
        this.NF = nf;
        this.NE = ne;
    }
    
    public Boolean Ub(final int n) {
        final boolean b = true;
        if (this.ND != (b ? 1 : 0)) {
            this.NF.Nl[n] = k.Ut(this.NE.Nl[n]);
        }
        else {
            this.NF.Nl[n] = k.Uq(this.NE.Nl[n]);
        }
        return b;
    }
}

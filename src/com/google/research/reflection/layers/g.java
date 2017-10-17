// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

class g implements c
{
    final /* synthetic */ int MJ;
    final /* synthetic */ b MK;
    final /* synthetic */ b ML;
    
    g(final int mj, final b ml, final b mk) {
        this.MJ = mj;
        this.ML = ml;
        this.MK = mk;
    }
    
    public Boolean Vo(final int n) {
        final boolean b = true;
        if (this.MJ != (b ? 1 : 0)) {
            this.ML.Mr[n] = k.VH(this.MK.Mr[n]);
        }
        else {
            this.ML.Mr[n] = k.VE(this.MK.Mr[n]);
        }
        return b;
    }
}

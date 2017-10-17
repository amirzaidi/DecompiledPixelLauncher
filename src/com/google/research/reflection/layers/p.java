// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

class p implements c
{
    final /* synthetic */ b OF;
    final /* synthetic */ b OG;
    final /* synthetic */ boolean OH;
    final /* synthetic */ b OI;
    
    p(final boolean oh, final b oi, final b og, final b of) {
        this.OH = oh;
        this.OI = oi;
        this.OG = og;
        this.OF = of;
    }
    
    public Boolean Ub(final int n) {
        if (!this.OH) {
            this.OI.Nl[n] = this.OG.Nl[n] + this.OF.Nl[n];
        }
        else {
            final double[] nl = this.OI.Nl;
            nl[n] += this.OG.Nl[n] + this.OF.Nl[n];
        }
        return true;
    }
}

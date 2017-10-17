// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

class i implements c
{
    final /* synthetic */ b MR;
    final /* synthetic */ b MS;
    
    i(final b ms, final b mr) {
        this.MS = ms;
        this.MR = mr;
    }
    
    public Boolean Vo(final int n) {
        if (this.MR.Mr[n] != 0.0) {
            final double[] mr = this.MS.Mr;
            mr[n] += this.MR.Mr[n];
        }
        return true;
    }
}

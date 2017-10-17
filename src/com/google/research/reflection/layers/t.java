// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

class t implements c
{
    final /* synthetic */ int NV;
    final /* synthetic */ b NW;
    final /* synthetic */ b NX;
    
    t(final o o, final int nv, final b nw, final b nx) {
        this.NV = nv;
        this.NW = nw;
        this.NX = nx;
    }
    
    public Boolean Vo(final int n) {
        final boolean b = true;
        final double n2 = 0.0;
        if (this.NV != (b ? 1 : 0)) {
            if (this.NV != 0) {
                throw new RuntimeException(new StringBuilder(44).append("Unsupported activation function: ").append(this.NV).toString());
            }
            this.NX.Mr[n] *= this.NW.Mr[n] * (1.0 - this.NW.Mr[n]);
        }
        else if (this.NW.Mr[n] == n2) {
            this.NX.Mr[n] = n2;
        }
        return b;
    }
}

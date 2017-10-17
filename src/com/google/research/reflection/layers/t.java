// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

class t implements c
{
    final /* synthetic */ int OP;
    final /* synthetic */ b OQ;
    final /* synthetic */ b OR;
    
    t(final o o, final int op, final b oq, final b or) {
        this.OP = op;
        this.OQ = oq;
        this.OR = or;
    }
    
    public Boolean Ub(final int n) {
        final boolean b = true;
        final double n2 = 0.0;
        if (this.OP != (b ? 1 : 0)) {
            if (this.OP != 0) {
                throw new RuntimeException(new StringBuilder(44).append("Unsupported activation function: ").append(this.OP).toString());
            }
            this.OR.Nl[n] *= this.OQ.Nl[n] * (1.0 - this.OQ.Nl[n]);
        }
        else if (this.OQ.Nl[n] == n2) {
            this.OR.Nl[n] = n2;
        }
        return b;
    }
}

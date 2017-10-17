// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.io.DataInputStream;
import java.io.DataOutputStream;

class d implements c
{
    final /* synthetic */ b Mt;
    final /* synthetic */ m Mu;
    final /* synthetic */ int Mv;
    final /* synthetic */ b Mw;
    final /* synthetic */ b Mx;
    
    d(final m mu, final int mv, final b mx, final b mt, final b mw) {
        this.Mu = mu;
        this.Mv = mv;
        this.Mx = mx;
        this.Mt = mt;
        this.Mw = mw;
    }
    
    public Boolean Vo(final int n) {
        final boolean b = true;
        if (this.Mv != 0) {
            if (this.Mv != 2) {
                throw new RuntimeException("unsupported activation function for the output layer");
            }
            this.Mx.Mr[n] = this.Mt.Mr[n] - this.Mx.Mr[n];
        }
        else if (this.Mu.Nv != 0) {
            if (this.Mu.Nv == (b ? 1 : 0)) {
                this.Mx.Mr[n] = this.Mt.Mr[n] - this.Mx.Mr[n];
            }
        }
        else {
            this.Mx.Mr[n] = this.Mt.Mr[n] * (1.0 - this.Mt.Mr[n]) * (this.Mt.Mr[n] - this.Mx.Mr[n]);
        }
        if (this.Mw != null) {
            final double[] mr = this.Mx.Mr;
            mr[n] *= this.Mw.Mr[n];
        }
        return b;
    }
}

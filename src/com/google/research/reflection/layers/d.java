// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.io.DataInputStream;
import java.io.DataOutputStream;

class d implements c
{
    final /* synthetic */ b Nn;
    final /* synthetic */ m No;
    final /* synthetic */ int Np;
    final /* synthetic */ b Nq;
    final /* synthetic */ b Nr;
    
    d(final m no, final int np, final b nr, final b nn, final b nq) {
        this.No = no;
        this.Np = np;
        this.Nr = nr;
        this.Nn = nn;
        this.Nq = nq;
    }
    
    public Boolean Ub(final int n) {
        final boolean b = true;
        if (this.Np != 0) {
            if (this.Np != 2) {
                throw new RuntimeException("unsupported activation function for the output layer");
            }
            this.Nr.Nl[n] = this.Nn.Nl[n] - this.Nr.Nl[n];
        }
        else if (this.No.Op != 0) {
            if (this.No.Op == (b ? 1 : 0)) {
                this.Nr.Nl[n] = this.Nn.Nl[n] - this.Nr.Nl[n];
            }
        }
        else {
            this.Nr.Nl[n] = this.Nn.Nl[n] * (1.0 - this.Nn.Nl[n]) * (this.Nn.Nl[n] - this.Nr.Nl[n]);
        }
        if (this.Nq != null) {
            final double[] nl = this.Nr.Nl;
            nl[n] *= this.Nq.Nl[n];
        }
        return b;
    }
}

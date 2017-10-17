// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.util.ArrayList;

class l implements c
{
    final /* synthetic */ o Oo;
    
    l(final o oo) {
        this.Oo = oo;
    }
    
    public Boolean Ub(final int n) {
        int i = 0;
        for (int j = 0; j < this.Oo.Pe; ++j) {
            this.Oo.Ou.TX(this.Oo.Ox, j, n, -v.UV() * this.Oo.Ov.Nl[j * this.Oo.Pf + n]);
        }
        if (this.Oo.OW) {
            while (i < this.Oo.Pf) {
                final int n2 = this.Oo.Pf * i;
                final double[] nl = this.Oo.Oy.Nl;
                final int n3 = n2 + n;
                nl[n3] -= v.UV() * this.Oo.OD.Nl[n2 + n];
                ++i;
            }
        }
        if (!Double.isNaN(this.Oo.OA.Nl[n])) {
            final double[] nl2 = this.Oo.Oz.Nl;
            nl2[n] -= v.UV() * this.Oo.OA.Nl[n];
            return true;
        }
        throw new RuntimeException("NaN in bias gradients...");
    }
}

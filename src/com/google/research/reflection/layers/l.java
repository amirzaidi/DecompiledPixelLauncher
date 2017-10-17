// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.util.ArrayList;
import java.io.DataInputStream;
import java.io.DataOutputStream;

class l implements c
{
    final /* synthetic */ o Nu;
    
    l(final o nu) {
        this.Nu = nu;
    }
    
    public Boolean Vo(final int n) {
        int i = 0;
        for (int j = 0; j < this.Nu.Ok; ++j) {
            this.Nu.NA.Vk(this.Nu.ND, j, n, -v.Wj() * this.Nu.NB.Mr[j * this.Nu.Ol + n]);
        }
        if (this.Nu.Oc) {
            while (i < this.Nu.Ol) {
                final int n2 = this.Nu.Ol * i;
                final double[] mr = this.Nu.NE.Mr;
                final int n3 = n2 + n;
                mr[n3] -= v.Wj() * this.Nu.NJ.Mr[n2 + n];
                ++i;
            }
        }
        if (!Double.isNaN(this.Nu.NG.Mr[n])) {
            final double[] mr2 = this.Nu.NF.Mr;
            mr2[n] -= v.Wj() * this.Nu.NG.Mr[n];
            return true;
        }
        throw new RuntimeException("NaN in bias gradients...");
    }
}

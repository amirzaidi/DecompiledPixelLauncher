// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.util.Iterator;
import com.google.research.reflection.common.d;
import java.util.ArrayList;

class u implements c
{
    final /* synthetic */ b NY;
    final /* synthetic */ b NZ;
    final /* synthetic */ o Oa;
    final /* synthetic */ ArrayList[] Ob;
    
    u(final o oa, final ArrayList[] ob, final b nz, final b ny) {
        this.Oa = oa;
        this.Ob = ob;
        this.NZ = nz;
        this.NY = ny;
    }
    
    public Boolean Vo(final int n) {
        int i = 0;
        final int n2 = n / this.Oa.Ol;
        final int n3 = n % this.Oa.Ol;
        final double n4 = this.Oa.On.Mr[this.Oa.Ol * n2 + n3];
        if (!this.Oa.Oj) {
            for (int j = 0; j < this.Oa.Ok; ++j) {
                final double[] mr = this.Oa.NB.Mr;
                final int n5 = this.Oa.Ol * j + n3;
                mr[n5] += this.NZ.Mr[this.Oa.Ok * n2 + j] * n4;
            }
        }
        else {
            for (final d d : this.Ob[n2]) {
                final double[] mr2 = this.Oa.NB.Mr;
                final int n6 = d.Mb * this.Oa.Ol + n3;
                mr2[n6] += d.Mc * n4;
            }
        }
        if (this.Oa.Oc && this.NY != null) {
            while (i < this.Oa.Ol) {
                final double[] mr3 = this.Oa.NJ.Mr;
                final int n7 = this.Oa.Ol * i + n3;
                mr3[n7] += this.NY.Mr[this.Oa.Ol * n2 + i] * n4;
                ++i;
            }
        }
        final double[] mr4 = this.Oa.NG.Mr;
        mr4[n3] += n4;
        return true;
    }
}

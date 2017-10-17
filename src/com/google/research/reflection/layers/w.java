// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.util.ArrayList;

class w implements c
{
    final /* synthetic */ s Pi;
    final /* synthetic */ b Pj;
    final /* synthetic */ b Pk;
    final /* synthetic */ int Pl;
    final /* synthetic */ ArrayList[] Pm;
    
    w(final s pi, final int pl, final ArrayList[] pm, final b pk, final b pj) {
        this.Pi = pi;
        this.Pl = pl;
        this.Pm = pm;
        this.Pk = pk;
        this.Pj = pj;
    }
    
    public Boolean Ub(final int n) {
        final b b = new b(this.Pi.Pa, this.Pi.OO);
        final int n2 = n * this.Pi.OO;
        for (int i = 0; i < this.Pi.Pa; ++i) {
            for (int j = 0; j < this.Pi.OO; ++j) {
                b.TQ(false, i, j, this.Pi.Ph.TP(false, i, n2 + j));
            }
        }
        this.Pi.ON[n].Uf(this.Pl, this.Pm, this.Pk, this.Pj, b);
        return true;
    }
}

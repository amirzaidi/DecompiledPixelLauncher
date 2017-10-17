// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.util.ArrayList;

class f implements c
{
    final /* synthetic */ b NA;
    final /* synthetic */ b NB;
    final /* synthetic */ ArrayList[] NC;
    final /* synthetic */ s Ny;
    final /* synthetic */ b Nz;
    
    f(final s ny, final ArrayList[] nc, final b nb, final b nz, final b na) {
        this.Ny = ny;
        this.NC = nc;
        this.NB = nb;
        this.Nz = nz;
        this.NA = na;
    }
    
    public Boolean Ub(final int n) {
        final b b = new b(this.Ny.Pa, this.Ny.OO);
        this.Ny.ON[n].Uk(this.NC, this.NB, this.Nz, b);
        final int n2 = n * this.Ny.OO;
        for (int i = 0; i < this.Ny.Pa; ++i) {
            for (int j = 0; j < this.Ny.OO; ++j) {
                this.NA.TQ(false, i, n2 + j, b.TP(false, i, j));
            }
        }
        return true;
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.util.ArrayList;

class w implements c
{
    final /* synthetic */ s Oo;
    final /* synthetic */ b Op;
    final /* synthetic */ b Oq;
    final /* synthetic */ int Or;
    final /* synthetic */ ArrayList[] Os;
    
    w(final s oo, final int or, final ArrayList[] os, final b oq, final b op) {
        this.Oo = oo;
        this.Or = or;
        this.Os = os;
        this.Oq = oq;
        this.Op = op;
    }
    
    public Boolean Vo(final int n) {
        final b b = new b(this.Oo.Og, this.Oo.NU);
        final int n2 = n * this.Oo.NU;
        for (int i = 0; i < this.Oo.Og; ++i) {
            for (int j = 0; j < this.Oo.NU; ++j) {
                b.Vd(false, i, j, this.Oo.On.Vc(false, i, n2 + j));
            }
        }
        this.Oo.NT[n].Vt(this.Or, this.Os, this.Oq, this.Op, b);
        return true;
    }
}

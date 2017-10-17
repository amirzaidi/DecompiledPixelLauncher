// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.util.ArrayList;

class f implements c
{
    final /* synthetic */ s ME;
    final /* synthetic */ b MF;
    final /* synthetic */ b MG;
    final /* synthetic */ b MH;
    final /* synthetic */ ArrayList[] MI;
    
    f(final s me, final ArrayList[] mi, final b mh, final b mf, final b mg) {
        this.ME = me;
        this.MI = mi;
        this.MH = mh;
        this.MF = mf;
        this.MG = mg;
    }
    
    public Boolean Vo(final int n) {
        final b b = new b(this.ME.Og, this.ME.NU);
        this.ME.NT[n].Vy(this.MI, this.MH, this.MF, b);
        final int n2 = n * this.ME.NU;
        for (int i = 0; i < this.ME.Og; ++i) {
            for (int j = 0; j < this.ME.NU; ++j) {
                this.MG.Vd(false, i, n2 + j, b.Vc(false, i, j));
            }
        }
        return true;
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.util.Iterator;
import java.util.ArrayList;

class x implements c
{
    final /* synthetic */ b Pn;
    final /* synthetic */ b Po;
    final /* synthetic */ a Pp;
    final /* synthetic */ b Pq;
    final /* synthetic */ o Pr;
    final /* synthetic */ ArrayList[] Ps;
    
    x(final o pr, final a pp, final ArrayList[] ps, final b po, final b pn, final b pq) {
        this.Pr = pr;
        this.Pp = pp;
        this.Ps = ps;
        this.Po = po;
        this.Pn = pn;
        this.Pq = pq;
    }
    
    public Boolean Ub(final int n) {
        final int n2 = n / this.Pr.Pf;
        final int n3 = n % this.Pr.Pf;
        final b ue = this.Pr.UE(this.Pp);
        final int n4 = n2 * this.Pr.Pf;
        final double n5 = this.Pr.Oz.Nl[n3];
        double n6;
        if (!this.Pr.Pd) {
            n6 = n5;
            for (int i = 0; i < this.Pr.Pe; ++i) {
                n6 += this.Po.TP(false, n2, i) * ue.TP(this.Pr.Ox, i, n3);
            }
        }
        else {
            final Iterator iterator = this.Ps[n2].iterator();
            n6 = n5;
            while (iterator.hasNext()) {
                final com.google.research.reflection.common.c c = iterator.next();
                n6 += ue.TP(this.Pr.Ox, c.MV, n3) * c.MW;
            }
        }
        if (this.Pr.OW && this.Pn != null) {
            for (int j = 0; j < this.Pr.Pf; ++j) {
                n6 += this.Pn.TP(false, n2, j) * this.Pr.Oy.TP(false, j, n3);
            }
        }
        this.Pq.Nl[n4 + n3] = n6;
        return true;
    }
}

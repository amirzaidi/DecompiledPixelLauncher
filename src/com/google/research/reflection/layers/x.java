// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.util.Iterator;
import com.google.research.reflection.common.d;
import java.util.ArrayList;

class x implements c
{
    final /* synthetic */ b Ot;
    final /* synthetic */ b Ou;
    final /* synthetic */ a Ov;
    final /* synthetic */ b Ow;
    final /* synthetic */ o Ox;
    final /* synthetic */ ArrayList[] Oy;
    
    x(final o ox, final a ov, final ArrayList[] oy, final b ou, final b ot, final b ow) {
        this.Ox = ox;
        this.Ov = ov;
        this.Oy = oy;
        this.Ou = ou;
        this.Ot = ot;
        this.Ow = ow;
    }
    
    public Boolean Vo(final int n) {
        final int n2 = n / this.Ox.Ol;
        final int n3 = n % this.Ox.Ol;
        final b vs = this.Ox.VS(this.Ov);
        final int n4 = n2 * this.Ox.Ol;
        final double n5 = this.Ox.NF.Mr[n3];
        double n6;
        if (!this.Ox.Oj) {
            n6 = n5;
            for (int i = 0; i < this.Ox.Ok; ++i) {
                n6 += this.Ou.Vc(false, n2, i) * vs.Vc(this.Ox.ND, i, n3);
            }
        }
        else {
            final Iterator iterator = this.Oy[n2].iterator();
            n6 = n5;
            while (iterator.hasNext()) {
                final d d = iterator.next();
                n6 += vs.Vc(this.Ox.ND, d.Mb, n3) * d.Mc;
            }
        }
        if (this.Ox.Oc && this.Ot != null) {
            for (int j = 0; j < this.Ox.Ol; ++j) {
                n6 += this.Ot.Vc(false, n2, j) * this.Ox.NE.Vc(false, j, n3);
            }
        }
        this.Ow.Mr[n4 + n3] = n6;
        return true;
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.util.Iterator;
import com.google.research.reflection.common.d;
import java.util.ArrayList;
import com.google.research.reflection.common.a;

public class j
{
    private int MT;
    private b MU;
    private b MV;
    private b MW;
    private b MX;
    private b MY;
    private b MZ;
    private b[] Na;
    private b Nb;
    private b Nc;
    private int Nd;
    private b Ne;
    private a Nf;
    private a Ng;
    private b Nh;
    private int Ni;
    private b Nj;
    private a Nk;
    private b Nl;
    private int Nm;
    private b Nn;
    private a No;
    private a Np;
    private b Nq;
    private a Nr;
    private b Ns;
    private b Nt;
    
    private static void Vu(final boolean b, final b b2, final b b3, final int n, final ArrayList[] array, final b b4, final int n2, final int n3, final int n4) {
        for (int i = 0; i < n4; ++i) {
            final double vc = b3.Vc(false, i, n);
            if (!b) {
                if (array == null) {
                    if (b4 != null) {
                        for (int j = 0; j < n2; ++j) {
                            b2.Vk(false, j, n3, b4.Vc(false, i, j) * vc);
                        }
                    }
                }
                else {
                    for (final d d : array[i]) {
                        b2.Vk(false, d.Mb, n3, d.Mc * vc);
                    }
                }
            }
            else {
                b2.Vk(false, 0, n3, vc);
            }
        }
    }
    
    private void Vx(final boolean b, final b b2, final int n, final int n2, final b[] array, final ArrayList[] array2, final b b3) {
        Vu(b, b2, array[1], 0, array2, b3, n, 0, n2);
        Vu(b, b2, array[2], 0, array2, b3, n, 1, n2);
        Vu(b, b2, array[4], 0, array2, b3, n, 2, n2);
    }
    
    private double Vz(final int n, final ArrayList[] array, final b b, final b b2, final b b3, final int n2) {
        final double n3 = 0.0;
        double n4;
        if (array == null) {
            n4 = n3;
            for (int i = 0; i < this.Nd; ++i) {
                n4 += b.Vc(false, n, i) * this.MW.Vc(false, i, n2);
            }
        }
        else {
            final Iterator<d> iterator = array[n].iterator();
            n4 = n3;
            while (iterator.hasNext()) {
                final d d = iterator.next();
                n4 += this.MW.Vc(false, d.Mb, n2) * d.Mc;
            }
        }
        for (int n5 = 0; b2 != null && n5 < this.MT; ++n5) {
            n4 += b2.Vc(false, n, n5) * this.Nh.Vc(false, n5, n2);
        }
        for (int n6 = 0; b3 != null && n6 < this.Ni; ++n6) {
            n4 += b3.Vc(false, n, n6) * this.Nj.Vc(false, n6, n2);
        }
        return n4;
    }
    
    b VA() {
        return this.Ne;
    }
    
    public void VB() {
        this.Nk.clear();
        this.No.clear();
        this.Ng.clear();
        this.Np.clear();
        this.Nf.clear();
        this.Nr.clear();
    }
    
    public void Vt(final int n, final ArrayList[] array, final b b, final b b2, final b b3) {
        final b b4 = (b)this.No.Ug(n);
        final b b5 = new b(this.Nm, 1);
        for (int i = 0; i < this.Nm; ++i) {
            double n2 = 0.0;
            for (int j = 0; j < this.Ni; ++j) {
                n2 += b4.Vc(false, i, j) * b3.Vc(false, i, j);
            }
            final double vc = ((b)this.Np.Ug(n)).Vc(false, i, 0);
            b5.Vd(false, i, 0, n2 * (vc * (1.0 - vc)));
        }
        final b b6 = new b(this.Nm, this.Ni);
        final b b7 = (b)this.Nf.Ug(n + 1);
        final b b8 = (b)this.Nk.Ug(n);
        for (int k = 0; k < this.Nm; ++k) {
            final double vc2 = ((b)this.Np.Ug(n)).Vc(false, k, 0);
            double vc3;
            if (b7 == null) {
                vc3 = 0.0;
            }
            else {
                vc3 = b7.Vc(false, k, 0);
            }
            for (int l = 0; l < this.Ni; ++l) {
                final double vc4 = b4.Vc(false, k, l);
                double n3 = (1.0 - vc4 * vc4) * vc2 * b3.Vc(false, k, l);
                if (this.Na[0] != null) {
                    n3 = n3 + this.Na[0].Vc(false, k, l) * vc3 + this.Nj.Vc(false, l, 0) * this.Na[1].Vc(false, k, 0) + this.Nj.Vc(false, l, 1) * this.Na[2].Vc(false, k, 0);
                }
                b6.Vd(false, k, l, n3 + this.Nj.Vc(false, l, 2) * b5.Vc(false, k, 0));
            }
        }
        final b b9 = (b)this.Nr.Ug(n);
        final b b10 = (b)this.Ng.Ug(n);
        final b b11 = new b(this.Nm, this.Ni);
        for (int n4 = 0; n4 < this.Nm; ++n4) {
            final double vc5 = b9.Vc(false, n4, 0);
            for (int n5 = 0; n5 < this.Ni; ++n5) {
                final double vc6 = b10.Vc(false, n4, n5);
                b11.Vd(false, n4, n5, (1.0 - vc6 * vc6) * vc5 * b6.Vc(false, n4, n5));
            }
        }
        final b b12 = new b(this.Nm, 1);
        final b b13 = (b)this.Nf.Ug(n);
        final b b14 = (b)this.Nk.Ug(n - 1);
        for (int n6 = 0; n6 < this.Nm; ++n6) {
            final double vc7 = b13.Vc(false, n6, 0);
            final double n7 = (1.0 - vc7) * vc7;
            double n8 = 0.0;
            for (int n9 = 0; b14 != null && n9 < this.Ni; ++n9) {
                n8 += b14.Vc(false, n6, n9) * b6.Vc(false, n6, n9);
            }
            b12.Vd(false, n6, 0, n8 * n7);
        }
        final b b15 = new b(this.Nm, 1);
        final b b16 = (b)this.Nr.Ug(n);
        for (int n10 = 0; n10 < this.Nm; ++n10) {
            final double vc8 = b16.Vc(false, n10, 0);
            final double n11 = (1.0 - vc8) * vc8;
            double n12 = 0.0;
            for (int n13 = 0; n13 < this.Ni; ++n13) {
                n12 += b10.Vc(false, n10, n13) * b6.Vc(false, n10, n13);
            }
            b15.Vd(false, n10, 0, n12 * n11);
        }
        this.Na = new b[] { b6, b15, b12, b11, b5 };
        final b vi = b.Vi(b.Vi(b.Vi(b15, b12), b5), b11);
        b.Vb(vi, b.Vi(this.MW, this.MX), true, this.MZ, false);
        b.Vb(vi, b.Vi(this.Nh, this.Ns), true, this.Ne, false);
        this.Vx(false, this.Nt, this.Nd, this.Nm, this.Na, array, b);
        this.Vx(false, this.MY, this.MT, this.Nm, this.Na, null, b2);
        Vu(false, this.MU, this.Na[1], 0, null, b14, this.Ni, 0, this.Nm);
        Vu(false, this.MU, this.Na[2], 0, null, b14, this.Ni, 1, this.Nm);
        Vu(false, this.MU, this.Na[4], 0, null, b8, this.Ni, 2, this.Nm);
        this.Vx(true, this.Nb, 1, this.Nm, this.Na, null, null);
        for (int n14 = 0; n14 < this.Ni; ++n14) {
            Vu(false, this.Nc, this.Na[3], n14, array, b, this.Nd, n14, this.Nm);
            Vu(false, this.Nn, this.Na[3], n14, null, b2, this.MT, n14, this.Nm);
            Vu(true, this.Nl, this.Na[3], n14, null, null, 1, n14, this.Nm);
        }
    }
    
    b Vv() {
        return this.MZ;
    }
    
    public void Vw() {
        this.Na = new b[5];
        k.VD(this.Nl.Mr);
        k.VD(this.Nn.Mr);
        k.VD(this.Nc.Mr);
        k.VD(this.MU.Mr);
        k.VD(this.MY.Mr);
        k.VD(this.Nt.Mr);
        k.VD(this.Nb.Mr);
    }
    
    public void Vy(final ArrayList[] array, final b b, final b b2, final b b3) {
        b b4 = (b)this.Np.Uf();
        if (b4 == null) {
            b4 = new b(this.Nm, 1);
        }
        final b b5 = (b)this.Np.add(b4);
        b b6 = (b)this.Nf.Uf();
        if (b6 == null) {
            b6 = new b(this.Nm, 1);
        }
        final b b7 = (b)this.Nf.add(b6);
        b b8 = (b)this.Nr.Uf();
        if (b8 == null) {
            b8 = new b(this.Nm, 1);
        }
        final b b9 = (b)this.Nr.add(b8);
        final b b10 = (b)this.Nk.Uh();
        b b11 = (b)this.No.Uf();
        if (b11 == null) {
            b11 = new b(this.Nm, this.Ni);
        }
        final b b12 = (b)this.No.add(b11);
        b b13 = (b)this.Nk.Uf();
        if (b13 == null) {
            b13 = new b(this.Nm, this.Ni);
        }
        final b b14 = (b)this.Nk.add(b13);
        b b15 = (b)this.Ng.Uf();
        if (b15 == null) {
            b15 = new b(this.Nm, this.Ni);
        }
        final b b16 = (b)this.Ng.add(b15);
        for (int i = 0; i < this.Nm; ++i) {
            final double vh = k.VH(this.Vz(i, array, b, b2, b10, 0) + this.Nq.Mr[0]);
            b9.Vd(false, i, 0, vh);
            final double vh2 = k.VH(this.Vz(i, array, b, b2, b10, 1) + this.Nq.Mr[1]);
            b7.Vd(false, i, 0, vh2);
            for (int j = 0; j < this.Ni; ++j) {
                double n = this.MV.Mr[j];
                if (array == null) {
                    for (int k = 0; k < this.Nd; ++k) {
                        n += b.Vc(false, i, k) * this.MX.Vc(false, k, j);
                    }
                }
                else {
                    for (final d d : array[i]) {
                        n += d.Mc * this.MX.Vc(false, d.Mb, j);
                    }
                }
                for (int n2 = 0; b2 != null && n2 < this.MT; ++n2) {
                    n += b2.Vc(false, i, n2) * this.Ns.Vc(false, n2, j);
                }
                final double tanh = Math.tanh(n);
                b16.Vd(false, i, j, tanh);
                double n3 = vh * tanh;
                if (b10 != null) {
                    n3 += b10.Vc(false, i, j) * vh2;
                }
                b14.Vd(false, i, j, n3);
                if (Double.isNaN(n3)) {
                    throw new InvalidValueException(new StringBuilder(78).append(vh).append(" x ").append(tanh).append(" + ").append(vh2).toString());
                }
            }
            final double vh3 = k.VH(this.Vz(i, array, b, b2, b14, 2) + this.Nq.Mr[2]);
            b5.Vd(false, i, 0, vh3);
            for (int l = 0; l < this.Ni; ++l) {
                final double tanh2 = Math.tanh(b14.Vc(false, i, l));
                b12.Vd(false, i, l, tanh2);
                b3.Vd(false, i, l, vh3 * tanh2);
                if (Double.isNaN(vh3 * tanh2)) {
                    throw new InvalidValueException(new StringBuilder(82).append(vh3).append(" x ").append(tanh2).append("=tanh(").append(b14.Vc(false, i, l)).append(")").toString());
                }
            }
        }
    }
    
    void update() {
        this.MW.Ve(this.Nt.Vn(-v.Wj()));
        this.Nh.Ve(this.MY.Vn(-v.Wj()));
        this.Nj.Ve(this.MU.Vn(-v.Wj()));
        this.Nq.Ve(this.Nb.Vn(-v.Wj()));
        this.Ns.Ve(this.Nn.Vn(-v.Wj()));
        this.MX.Ve(this.Nc.Vn(-v.Wj()));
        this.MV.Ve(this.Nl.Vn(-v.Wj()));
    }
}

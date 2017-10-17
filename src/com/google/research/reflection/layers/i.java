// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.util.Iterator;
import com.google.research.reflection.common.c;
import java.util.ArrayList;
import com.google.research.reflection.common.a;

public class i
{
    private int NL;
    private b NM;
    private b NN;
    private b NO;
    private b NP;
    private b NQ;
    private b NR;
    private b[] NS;
    private b NT;
    private b NU;
    private int NV;
    private b NW;
    private a NX;
    private a NY;
    private b NZ;
    private int Oa;
    private b Ob;
    private a Oc;
    private b Od;
    private int Oe;
    private b Of;
    private a Og;
    private a Oh;
    private b Oi;
    private a Oj;
    private b Ok;
    private b Ol;
    
    private static void Ug(final boolean b, final b b2, final b b3, final int n, final ArrayList[] array, final b b4, final int n2, final int n3, final int n4) {
        for (int i = 0; i < n4; ++i) {
            final double tp = b3.TP(false, i, n);
            if (!b) {
                if (array == null) {
                    if (b4 != null) {
                        for (int j = 0; j < n2; ++j) {
                            b2.TX(false, j, n3, b4.TP(false, i, j) * tp);
                        }
                    }
                }
                else {
                    for (final c c : array[i]) {
                        b2.TX(false, c.MV, n3, c.MW * tp);
                    }
                }
            }
            else {
                b2.TX(false, 0, n3, tp);
            }
        }
    }
    
    private void Uj(final boolean b, final b b2, final int n, final int n2, final b[] array, final ArrayList[] array2, final b b3) {
        Ug(b, b2, array[1], 0, array2, b3, n, 0, n2);
        Ug(b, b2, array[2], 0, array2, b3, n, 1, n2);
        Ug(b, b2, array[4], 0, array2, b3, n, 2, n2);
    }
    
    private double Ul(final int n, final ArrayList[] array, final b b, final b b2, final b b3, final int n2) {
        final double n3 = 0.0;
        double n4;
        if (array == null) {
            n4 = n3;
            for (int i = 0; i < this.NV; ++i) {
                n4 += b.TP(false, n, i) * this.NO.TP(false, i, n2);
            }
        }
        else {
            final Iterator<c> iterator = array[n].iterator();
            n4 = n3;
            while (iterator.hasNext()) {
                final c c = iterator.next();
                n4 += this.NO.TP(false, c.MV, n2) * c.MW;
            }
        }
        for (int n5 = 0; b2 != null && n5 < this.NL; ++n5) {
            n4 += b2.TP(false, n, n5) * this.NZ.TP(false, n5, n2);
        }
        for (int n6 = 0; b3 != null && n6 < this.Oa; ++n6) {
            n4 += b3.TP(false, n, n6) * this.Ob.TP(false, n6, n2);
        }
        return n4;
    }
    
    public void Uf(final int n, final ArrayList[] array, final b b, final b b2, final b b3) {
        final b b4 = (b)this.Og.ST(n);
        final b b5 = new b(this.Oe, 1);
        for (int i = 0; i < this.Oe; ++i) {
            double n2 = 0.0;
            for (int j = 0; j < this.Oa; ++j) {
                n2 += b4.TP(false, i, j) * b3.TP(false, i, j);
            }
            final double tp = ((b)this.Oh.ST(n)).TP(false, i, 0);
            b5.TQ(false, i, 0, n2 * (tp * (1.0 - tp)));
        }
        final b b6 = new b(this.Oe, this.Oa);
        final b b7 = (b)this.NX.ST(n + 1);
        final b b8 = (b)this.Oc.ST(n);
        for (int k = 0; k < this.Oe; ++k) {
            final double tp2 = ((b)this.Oh.ST(n)).TP(false, k, 0);
            double tp3;
            if (b7 == null) {
                tp3 = 0.0;
            }
            else {
                tp3 = b7.TP(false, k, 0);
            }
            for (int l = 0; l < this.Oa; ++l) {
                final double tp4 = b4.TP(false, k, l);
                double n3 = (1.0 - tp4 * tp4) * tp2 * b3.TP(false, k, l);
                if (this.NS[0] != null) {
                    n3 = n3 + this.NS[0].TP(false, k, l) * tp3 + this.Ob.TP(false, l, 0) * this.NS[1].TP(false, k, 0) + this.Ob.TP(false, l, 1) * this.NS[2].TP(false, k, 0);
                }
                b6.TQ(false, k, l, n3 + this.Ob.TP(false, l, 2) * b5.TP(false, k, 0));
            }
        }
        final b b9 = (b)this.Oj.ST(n);
        final b b10 = (b)this.NY.ST(n);
        final b b11 = new b(this.Oe, this.Oa);
        for (int n4 = 0; n4 < this.Oe; ++n4) {
            final double tp5 = b9.TP(false, n4, 0);
            for (int n5 = 0; n5 < this.Oa; ++n5) {
                final double tp6 = b10.TP(false, n4, n5);
                b11.TQ(false, n4, n5, (1.0 - tp6 * tp6) * tp5 * b6.TP(false, n4, n5));
            }
        }
        final b b12 = new b(this.Oe, 1);
        final b b13 = (b)this.NX.ST(n);
        final b b14 = (b)this.Oc.ST(n - 1);
        for (int n6 = 0; n6 < this.Oe; ++n6) {
            final double tp7 = b13.TP(false, n6, 0);
            final double n7 = (1.0 - tp7) * tp7;
            double n8 = 0.0;
            for (int n9 = 0; b14 != null && n9 < this.Oa; ++n9) {
                n8 += b14.TP(false, n6, n9) * b6.TP(false, n6, n9);
            }
            b12.TQ(false, n6, 0, n8 * n7);
        }
        final b b15 = new b(this.Oe, 1);
        final b b16 = (b)this.Oj.ST(n);
        for (int n10 = 0; n10 < this.Oe; ++n10) {
            final double tp8 = b16.TP(false, n10, 0);
            final double n11 = (1.0 - tp8) * tp8;
            double n12 = 0.0;
            for (int n13 = 0; n13 < this.Oa; ++n13) {
                n12 += b10.TP(false, n10, n13) * b6.TP(false, n10, n13);
            }
            b15.TQ(false, n10, 0, n12 * n11);
        }
        this.NS = new b[] { b6, b15, b12, b11, b5 };
        final b tv = b.TV(b.TV(b.TV(b15, b12), b5), b11);
        b.TO(tv, b.TV(this.NO, this.NP), true, this.NR, false);
        b.TO(tv, b.TV(this.NZ, this.Ok), true, this.NW, false);
        this.Uj(false, this.Ol, this.NV, this.Oe, this.NS, array, b);
        this.Uj(false, this.NQ, this.NL, this.Oe, this.NS, null, b2);
        Ug(false, this.NM, this.NS[1], 0, null, b14, this.Oa, 0, this.Oe);
        Ug(false, this.NM, this.NS[2], 0, null, b14, this.Oa, 1, this.Oe);
        Ug(false, this.NM, this.NS[4], 0, null, b8, this.Oa, 2, this.Oe);
        this.Uj(true, this.NT, 1, this.Oe, this.NS, null, null);
        for (int n14 = 0; n14 < this.Oa; ++n14) {
            Ug(false, this.NU, this.NS[3], n14, array, b, this.NV, n14, this.Oe);
            Ug(false, this.Of, this.NS[3], n14, null, b2, this.NL, n14, this.Oe);
            Ug(true, this.Od, this.NS[3], n14, null, null, 1, n14, this.Oe);
        }
    }
    
    b Uh() {
        return this.NR;
    }
    
    public void Ui() {
        this.NS = new b[5];
        k.Up(this.Od.Nl);
        k.Up(this.Of.Nl);
        k.Up(this.NU.Nl);
        k.Up(this.NM.Nl);
        k.Up(this.NQ.Nl);
        k.Up(this.Ol.Nl);
        k.Up(this.NT.Nl);
    }
    
    public void Uk(final ArrayList[] array, final b b, final b b2, final b b3) {
        b b4 = (b)this.Oh.SS();
        if (b4 == null) {
            b4 = new b(this.Oe, 1);
        }
        final b b5 = (b)this.Oh.add(b4);
        b b6 = (b)this.NX.SS();
        if (b6 == null) {
            b6 = new b(this.Oe, 1);
        }
        final b b7 = (b)this.NX.add(b6);
        b b8 = (b)this.Oj.SS();
        if (b8 == null) {
            b8 = new b(this.Oe, 1);
        }
        final b b9 = (b)this.Oj.add(b8);
        final b b10 = (b)this.Oc.SU();
        b b11 = (b)this.Og.SS();
        if (b11 == null) {
            b11 = new b(this.Oe, this.Oa);
        }
        final b b12 = (b)this.Og.add(b11);
        b b13 = (b)this.Oc.SS();
        if (b13 == null) {
            b13 = new b(this.Oe, this.Oa);
        }
        final b b14 = (b)this.Oc.add(b13);
        b b15 = (b)this.NY.SS();
        if (b15 == null) {
            b15 = new b(this.Oe, this.Oa);
        }
        final b b16 = (b)this.NY.add(b15);
        for (int i = 0; i < this.Oe; ++i) {
            final double ut = k.Ut(this.Ul(i, array, b, b2, b10, 0) + this.Oi.Nl[0]);
            b9.TQ(false, i, 0, ut);
            final double ut2 = k.Ut(this.Ul(i, array, b, b2, b10, 1) + this.Oi.Nl[1]);
            b7.TQ(false, i, 0, ut2);
            for (int j = 0; j < this.Oa; ++j) {
                double n = this.NN.Nl[j];
                if (array == null) {
                    for (int k = 0; k < this.NV; ++k) {
                        n += b.TP(false, i, k) * this.NP.TP(false, k, j);
                    }
                }
                else {
                    for (final c c : array[i]) {
                        n += c.MW * this.NP.TP(false, c.MV, j);
                    }
                }
                for (int n2 = 0; b2 != null && n2 < this.NL; ++n2) {
                    n += b2.TP(false, i, n2) * this.Ok.TP(false, n2, j);
                }
                final double tanh = Math.tanh(n);
                b16.TQ(false, i, j, tanh);
                double n3 = ut * tanh;
                if (b10 != null) {
                    n3 += b10.TP(false, i, j) * ut2;
                }
                b14.TQ(false, i, j, n3);
                if (Double.isNaN(n3)) {
                    throw new InvalidValueException(new StringBuilder(78).append(ut).append(" x ").append(tanh).append(" + ").append(ut2).toString());
                }
            }
            final double ut3 = k.Ut(this.Ul(i, array, b, b2, b14, 2) + this.Oi.Nl[2]);
            b5.TQ(false, i, 0, ut3);
            for (int l = 0; l < this.Oa; ++l) {
                final double tanh2 = Math.tanh(b14.TP(false, i, l));
                b12.TQ(false, i, l, tanh2);
                b3.TQ(false, i, l, ut3 * tanh2);
                if (Double.isNaN(ut3 * tanh2)) {
                    throw new InvalidValueException(new StringBuilder(82).append(ut3).append(" x ").append(tanh2).append("=tanh(").append(b14.TP(false, i, l)).append(")").toString());
                }
            }
        }
    }
    
    b Um() {
        return this.NW;
    }
    
    public void Un() {
        this.Oc.clear();
        this.Og.clear();
        this.NY.clear();
        this.Oh.clear();
        this.NX.clear();
        this.Oj.clear();
    }
    
    void update() {
        this.NO.TR(this.Ol.Ua(-v.UV()));
        this.NZ.TR(this.NQ.Ua(-v.UV()));
        this.Ob.TR(this.NM.Ua(-v.UV()));
        this.Oi.TR(this.NT.Ua(-v.UV()));
        this.Ok.TR(this.Of.Ua(-v.UV()));
        this.NP.TR(this.NU.Ua(-v.UV()));
        this.NN.TR(this.Od.Ua(-v.UV()));
    }
}

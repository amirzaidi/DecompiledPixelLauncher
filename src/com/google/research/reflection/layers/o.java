// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.util.ArrayList;
import java.io.DataInputStream;
import java.io.DataOutputStream;

public class o extends v
{
    private b NA;
    private b NB;
    int NC;
    private boolean ND;
    private b NE;
    private b NF;
    private b NG;
    private float NH;
    private int NI;
    private b NJ;
    private int NK;
    
    public o() {
    }
    
    public o(final boolean b, final int n, final int nc, final int n2, final int n3, final int n4, final int nk, final int ni, final boolean nd, final boolean b2, final float nh) {
        super(b, n, n2, n3, n4);
        this.NK = nk;
        this.NH = nh;
        this.NF = new b(1, n4);
        this.NC = nc;
        this.NB = new b(n3, n4);
        this.NJ = new b(n4, n4);
        this.NG = new b(1, n4);
        this.ND = nd;
        if (nk < 0) {
            k.VC(this.NA = new b(n3, n4), b2);
            k.VD(this.NF.Mr);
        }
        this.NI = ni;
        k.VC(this.NE = new b(n4, n4), b2);
    }
    
    private static void VU(final int n, final b b, final b b2) {
        if (n != 1 && n != 0) {
            if (n != 2) {
                throw new RuntimeException(new StringBuilder(44).append("Unsupported activation function: ").append(n).toString());
            }
            e.Vq().Vp(b.Vj(false), new r(b, b2));
        }
        else {
            e.Vq().Vp(b.Mr.length, new g(n, b2, b));
        }
    }
    
    public String VI() {
        return "LinearLayer";
    }
    
    public void VJ(final DataOutputStream dataOutputStream) {
        super.VJ(dataOutputStream);
        dataOutputStream.writeInt(this.NC);
        dataOutputStream.writeBoolean(this.ND);
        this.NE.Vl(dataOutputStream);
        this.NF.Vl(dataOutputStream);
        dataOutputStream.writeInt(this.NK);
        if (this.NK < 0) {
            this.NA.Vl(dataOutputStream);
        }
        dataOutputStream.writeInt(this.NI);
        this.We(dataOutputStream);
    }
    
    public void VK(final DataInputStream dataInputStream) {
        super.VK(dataInputStream);
        this.NC = dataInputStream.readInt();
        this.ND = dataInputStream.readBoolean();
        (this.NE = new b()).Vm(dataInputStream);
        (this.NF = new b()).Vm(dataInputStream);
        this.NK = dataInputStream.readInt();
        if (this.NK < 0) {
            (this.NA = new b()).Vm(dataInputStream);
        }
        this.NB = new b(this.Ok, this.Ol);
        this.NJ = new b(this.Ol, this.Ol);
        this.NG = new b(1, this.Ol);
        this.NI = dataInputStream.readInt();
        this.Wd(dataInputStream);
    }
    
    void VL(final int n, final b b, final b b2, final b b3) {
        e.Vq().Vp(b.Mr.length, new t(this, n, b2, b));
    }
    
    public void VN(final o o) {
        super.Wk(o);
        o.ND = this.ND;
        o.NC = this.NC;
        o.NA = this.NA.clone();
        o.NB = this.NB.clone();
        o.NE = this.NE.clone();
        o.NJ = this.NJ.clone();
        o.NF = this.NF.clone();
        o.NG = this.NG.clone();
        o.NK = this.NK;
        o.NI = this.NI;
    }
    
    public int VO() {
        return this.NK;
    }
    
    public b VP(final boolean b, final a a, final ArrayList[] array, final b b2) {
        b b3 = null;
        final int oj = 1;
        int i = 0;
        if (array == null) {
            this.Oj = false;
            this.Oh.add(b2);
            if (b2.Vh(false) != this.Wh() || b2.Vj(false) != this.Wf()) {
                throw new RuntimeException("Inconsistent input matrix");
            }
        }
        else {
            this.Oj = (oj != 0);
            this.Oi.add(array);
        }
        if (this.Om.Uk() > oj) {
            b3 = (b)this.Om.Uh();
        }
        final b b4 = new b(this.Og, this.Ol);
        e.Vq().Vp(this.Og * this.Ol, new x(this, a, array, b2, b3, b4));
        final b b5 = (b)this.Om.add(new b(this.Og, this.Ol));
        VU(this.NC, b4, b5);
        if (this.NH > 0.0f) {
            if (!b) {
                while (i < b5.Mr.length) {
                    final double[] mr = b5.Mr;
                    mr[i] *= 1.0f - this.NH;
                    ++i;
                }
            }
            else {
                for (int j = 0; j < b5.Mr.length; ++j) {
                    if (Math.random() < this.NH) {
                        b5.Mr[j] = 0.0;
                    }
                }
            }
        }
        return b5;
    }
    
    void VQ() {
        super.VQ();
        k.VD(this.NB.Mr);
        k.VD(this.NJ.Mr);
        k.VD(this.NG.Mr);
    }
    
    public void VR(final a a, final int n, final b b, final b b2, final b b3) {
        final boolean b4 = true;
        b.Vg(b, b2, this.On, false);
        this.VL(this.NC, this.On, (b)this.Om.Ug(n), b3);
        b.Vb(this.On, this.VS(a), !this.ND && b4, this.Oe, false);
        if (this.Oc) {
            b.Vb(this.On, this.NE, b4, this.Of, false);
        }
        e.Vq().Vp(this.Og * this.Ol, new u(this, (ArrayList[])this.Oi.Ug(n), (b)this.Oh.Ug(n), (b)this.Om.Ug(n - 1)));
    }
    
    public b VS(final a a) {
        if (this.NK < 0) {
            return this.NA;
        }
        return a.US().get(this.NK).NA;
    }
    
    public b Wb() {
        return this.NF;
    }
    
    public o clone() {
        final o o = new o();
        super.Wk(o);
        o.ND = this.ND;
        o.NC = this.NC;
        o.NA = this.NA.clone();
        o.NB = this.NB.clone();
        o.NE = this.NE.clone();
        o.NJ = this.NJ.clone();
        o.NF = this.NF.clone();
        o.NG = this.NG.clone();
        o.NK = this.NK;
        o.NI = this.NI;
        return o;
    }
    
    public void update() {
        e.Vq().Vp(this.Ol, new l(this));
    }
}

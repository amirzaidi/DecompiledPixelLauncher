// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.util.ArrayList;

public class o extends v
{
    private b OA;
    private float OB;
    private int OC;
    private b OD;
    private int OE;
    private b Ou;
    private b Ov;
    int Ow;
    private boolean Ox;
    private b Oy;
    private b Oz;
    
    public o() {
    }
    
    public o(final boolean b, final int n, final int ow, final int n2, final int n3, final int n4, final int oe, final int oc, final boolean ox, final boolean b2, final float ob) {
        super(b, n, n2, n3, n4);
        this.OE = oe;
        this.OB = ob;
        this.Oz = new b(1, n4);
        this.Ow = ow;
        this.Ov = new b(n3, n4);
        this.OD = new b(n4, n4);
        this.OA = new b(1, n4);
        this.Ox = ox;
        if (oe < 0) {
            k.Uo(this.Ou = new b(n3, n4), b2);
            k.Up(this.Oz.Nl);
        }
        this.OC = oc;
        k.Uo(this.Oy = new b(n4, n4), b2);
    }
    
    private static void UG(final int n, final b b, final b b2) {
        if (n != 1 && n != 0) {
            if (n != 2) {
                throw new RuntimeException(new StringBuilder(44).append("Unsupported activation function: ").append(n).toString());
            }
            e.getInstance().Uc(b.TW(false), new r(b, b2));
        }
        else {
            e.getInstance().Uc(b.Nl.length, new g(n, b2, b));
        }
    }
    
    public int UA() {
        return this.OE;
    }
    
    public b UB(final boolean b, final a a, final ArrayList[] array, final b b2) {
        b b3 = null;
        final int pd = 1;
        int i = 0;
        if (array == null) {
            this.Pd = false;
            this.Pb.add(b2);
            if (b2.TU(false) != this.UT() || b2.TW(false) != this.UR()) {
                throw new RuntimeException("Inconsistent input matrix");
            }
        }
        else {
            this.Pd = (pd != 0);
            this.Pc.add(array);
        }
        if (this.Pg.SX() > pd) {
            b3 = (b)this.Pg.SU();
        }
        final b b4 = new b(this.Pa, this.Pf);
        e.getInstance().Uc(this.Pa * this.Pf, new x(this, a, array, b2, b3, b4));
        final b b5 = (b)this.Pg.add(new b(this.Pa, this.Pf));
        UG(this.Ow, b4, b5);
        if (this.OB > 0.0f) {
            if (!b) {
                while (i < b5.Nl.length) {
                    final double[] nl = b5.Nl;
                    nl[i] *= 1.0f - this.OB;
                    ++i;
                }
            }
            else {
                for (int j = 0; j < b5.Nl.length; ++j) {
                    if (Math.random() < this.OB) {
                        b5.Nl[j] = 0.0;
                    }
                }
            }
        }
        return b5;
    }
    
    void UC() {
        super.UC();
        k.Up(this.Ov.Nl);
        k.Up(this.OD.Nl);
        k.Up(this.OA.Nl);
    }
    
    public void UD(final a a, final int n, final b b, final b b2, final b b3) {
        final boolean b4 = true;
        b.TT(b, b2, this.Ph, false);
        this.Ux(this.Ow, this.Ph, (b)this.Pg.ST(n), b3);
        b.TO(this.Ph, this.UE(a), !this.Ox && b4, this.OY, false);
        if (this.OW) {
            b.TO(this.Ph, this.Oy, b4, this.OZ, false);
        }
        e.getInstance().Uc(this.Pa * this.Pf, new u(this, (ArrayList[])this.Pc.ST(n), (b)this.Pb.ST(n), (b)this.Pg.ST(n - 1)));
    }
    
    public b UE(final a a) {
        if (this.OE < 0) {
            return this.Ou;
        }
        return a.TF().get(this.OE).Ou;
    }
    
    public b UN() {
        return this.Oz;
    }
    
    public String Uu() {
        return "LinearLayer";
    }
    
    public void Uv(final DataOutputStream dataOutputStream) {
        super.Uv(dataOutputStream);
        dataOutputStream.writeInt(this.Ow);
        dataOutputStream.writeBoolean(this.Ox);
        this.Oy.TY(dataOutputStream);
        this.Oz.TY(dataOutputStream);
        dataOutputStream.writeInt(this.OE);
        if (this.OE < 0) {
            this.Ou.TY(dataOutputStream);
        }
        dataOutputStream.writeInt(this.OC);
        this.UQ(dataOutputStream);
    }
    
    public void Uw(final DataInputStream dataInputStream) {
        super.Uw(dataInputStream);
        this.Ow = dataInputStream.readInt();
        this.Ox = dataInputStream.readBoolean();
        (this.Oy = new b()).TZ(dataInputStream);
        (this.Oz = new b()).TZ(dataInputStream);
        this.OE = dataInputStream.readInt();
        if (this.OE < 0) {
            (this.Ou = new b()).TZ(dataInputStream);
        }
        this.Ov = new b(this.Pe, this.Pf);
        this.OD = new b(this.Pf, this.Pf);
        this.OA = new b(1, this.Pf);
        this.OC = dataInputStream.readInt();
        this.UP(dataInputStream);
    }
    
    void Ux(final int n, final b b, final b b2, final b b3) {
        e.getInstance().Uc(b.Nl.length, new t(this, n, b2, b));
    }
    
    public void Uz(final o o) {
        super.UW(o);
        o.Ox = this.Ox;
        o.Ow = this.Ow;
        o.Ou = this.Ou.clone();
        o.Ov = this.Ov.clone();
        o.Oy = this.Oy.clone();
        o.OD = this.OD.clone();
        o.Oz = this.Oz.clone();
        o.OA = this.OA.clone();
        o.OE = this.OE;
        o.OC = this.OC;
    }
    
    public o clone() {
        final o o = new o();
        super.UW(o);
        o.Ox = this.Ox;
        o.Ow = this.Ow;
        o.Ou = this.Ou.clone();
        o.Ov = this.Ov.clone();
        o.Oy = this.Oy.clone();
        o.OD = this.OD.clone();
        o.Oz = this.Oz.clone();
        o.OA = this.OA.clone();
        o.OE = this.OE;
        o.OC = this.OC;
        return o;
    }
    
    public void update() {
        e.getInstance().Uc(this.Pf, new l(this));
    }
}

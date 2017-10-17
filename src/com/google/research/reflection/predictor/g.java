// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.predictor;

import java.io.IOException;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import com.google.research.reflection.layers.InvalidValueException;
import java.util.ArrayList;
import java.util.List;
import java.util.Arrays;
import com.google.research.reflection.b.k;
import com.google.research.reflection.b.i;
import com.google.research.reflection.b.j;
import com.google.research.reflection.b.f;
import com.google.research.reflection.b.d;
import com.google.research.reflection.b.c;
import com.google.research.reflection.layers.m;
import com.google.research.reflection.layers.v;
import com.google.research.reflection.layers.o;
import com.google.research.reflection.layers.e;
import com.google.research.reflection.b.a;

public class g extends b implements a
{
    protected com.google.research.reflection.b.b LS;
    protected com.google.research.reflection.layers.a LT;
    protected a LU;
    protected com.google.research.reflection.layers.b LV;
    
    public g() {
        this.Uc(100, Ud());
    }
    
    private void Uc(final int n, final com.google.research.reflection.b.b ls) {
        e.MA = false;
        this.LV = new com.google.research.reflection.layers.b(1, n);
        (this.LS = ls).UD(this);
        (this.LT = new com.google.research.reflection.layers.a(1)).UX(new o(false, 1, 1, 1, ls.UF(), n, -1, -1, false, false, 0.0f));
        this.LT.UX(new m(1, 1, 2, 1, n, n, -1, -1, false));
    }
    
    public static c Ud() {
        final c c = new c();
        c.UM(new d());
        c.UM(new f());
        c.UM(new com.google.research.reflection.b.e());
        c.UM(new j());
        c.UM(new i());
        c.UM(new com.google.research.reflection.b.g());
        c.UM(new k());
        return c;
    }
    
    public void TB(final String s, final String s2) {
        this.LS.UH(Arrays.asList(".*", s));
    }
    
    public com.google.research.reflection.predictor.e TD(final com.google.research.reflection.a.b b) {
        final Integer value = this.TK().Tv(b);
        final com.google.research.reflection.predictor.e e = new com.google.research.reflection.predictor.e();
        try {
            final com.google.research.reflection.b.b ls = this.LS;
            try {
                final com.google.research.reflection.predictor.a tk = this.TK();
                try {
                    final com.google.research.reflection.predictor.d tq = tk.Tq();
                    try {
                        final com.google.research.reflection.layers.b ug = ls.UG(tq.TR(), b);
                        try {
                            final com.google.research.reflection.layers.a lt = this.LT;
                            try {
                                lt.UR();
                                this.LT.UW(true, null, ug, true);
                                final com.google.research.reflection.layers.b lv = this.LV;
                                try {
                                    final double[] mr = lv.Mr;
                                    try {
                                        com.google.research.reflection.layers.k.VD(mr);
                                        final com.google.research.reflection.layers.b lv2 = this.LV;
                                        try {
                                            lv2.Vd(false, 0, value, 1.0);
                                            final com.google.research.reflection.layers.a lt2 = this.LT;
                                            try {
                                                lt2.UU(this.LV, null, 1, true);
                                                final com.google.research.reflection.layers.a lt3 = this.LT;
                                                try {
                                                    lt3.update();
                                                    e.TY(ug.Mr);
                                                    return e;
                                                }
                                                catch (InvalidValueException ex) {
                                                    ex.printStackTrace();
                                                }
                                            }
                                            catch (InvalidValueException ex2) {}
                                        }
                                        catch (InvalidValueException ex3) {}
                                    }
                                    catch (InvalidValueException ex4) {}
                                }
                                catch (InvalidValueException ex5) {}
                            }
                            catch (InvalidValueException ex6) {}
                        }
                        catch (InvalidValueException ex7) {}
                    }
                    catch (InvalidValueException ex8) {}
                }
                catch (InvalidValueException ex9) {}
            }
            catch (InvalidValueException ex10) {}
        }
        catch (InvalidValueException ex11) {}
    }
    
    public void TF(final Integer n, final Integer n2, final String s) {
        final double n3 = 0.0;
        int i = 0;
        final m m = (m)this.LT.Va();
        final com.google.research.reflection.layers.b vs = m.VS(this.LT);
        final int vh = vs.Vh(false);
        for (int j = 0; j < vs.Vj(false); ++j) {
            int k = 0;
            double n4 = n3;
            while (k < vh) {
                n4 += vs.Vc(false, j, k);
                ++k;
            }
            final double n5 = n4 / vh;
            if (!n.equals(n2)) {
                vs.Vd(false, j, n, vs.Vc(false, j, n2));
            }
            vs.Vd(false, j, n2, n5);
        }
        final com.google.research.reflection.layers.b wb = m.Wb();
        double n6 = n3;
        while (i < vh) {
            n6 += wb.Mr[i];
            ++i;
        }
        final double n7 = n6 / vh;
        if (!n.equals(n2)) {
            wb.Mr[n] = wb.Mr[n2];
        }
        wb.Mr[n2] = n7;
    }
    
    public void TH(final DataOutputStream dataOutputStream) {
        dataOutputStream.writeUTF(com.google.research.reflection.b.b.UE(this.LS));
        this.LS.UJ(dataOutputStream);
        this.LT.UY(dataOutputStream);
    }
    
    public com.google.research.reflection.predictor.e TI(final float[] array, final com.google.research.reflection.a.b b) {
        final int n = 1;
        final com.google.research.reflection.layers.b ug = this.LS.UG(this.TK().Tq().TR(), b);
        if (this.TK().TA().size() != n) {
            if (this.TK().TA().size() > n) {
                while (true) {
                    try {
                        final com.google.research.reflection.layers.b uw = this.LT.UW(false, null, ug, true);
                        for (int i = 0; i < array.length; ++i) {
                            array[i] = (float)uw.Vc(false, 0, i);
                        }
                    }
                    catch (InvalidValueException ex) {
                        ex.printStackTrace();
                        final com.google.research.reflection.layers.b uw = null;
                        continue;
                    }
                    break;
                }
            }
        }
        else {
            array[0] = 1.0f;
        }
        final com.google.research.reflection.predictor.e e = new com.google.research.reflection.predictor.e();
        e.TY(ug.Mr);
        e.TZ(array);
        return e;
    }
    
    public void TJ(final DataInputStream dataInputStream) {
        final String utf = dataInputStream.readUTF();
        final com.google.research.reflection.b.b uc = com.google.research.reflection.b.b.UC(utf);
        if (uc == null) {
            final String value = String.valueOf(utf);
            final int length = value.length();
            final String s = "Cannot find extractor with ";
            String concat;
            if (length == 0) {
                concat = new String(s);
            }
            else {
                concat = s.concat(value);
            }
            throw new IOException(concat);
        }
        uc.UI(dataInputStream);
        uc.UD(this);
        (this.LT = new com.google.research.reflection.layers.a(1)).UZ(dataInputStream);
        if (this.LT.UV() != uc.UF()) {
            throw new IOException(new StringBuilder(76).append("Model to be loaded has an inconsistent input size:").append(this.LT.UV()).append(" != ").append(uc.UF()).toString());
        }
        if (this.LT.Va().Wl() == this.TK().Tx()) {
            return;
        }
        throw new IOException(new StringBuilder(57).append("Inconsistent model output size...").append(this.LT.Va().Wl()).append("!=").append(this.TK().Tx()).toString());
    }
    
    public void Ue(final com.google.research.reflection.b.b b, final int n) {
        if (this.LU != null) {
            this.LU.Ue(b, n);
        }
        final com.google.research.reflection.layers.b vs = this.LT.US().get(0).VS(this.LT);
        final int vj = vs.Vj(false);
        for (int i = 0; i < vs.Vh(false); ++i) {
            double n2 = 0.0;
            for (int j = 0; j < vj; ++j) {
                n2 += vs.Vc(false, j, i);
            }
            vs.Vd(false, n, i, n2 / vj);
        }
    }
    
    public g clone() {
        final g g = new g();
        g.TE(this.TK());
        g.LT = this.LT.clone();
        g.LV = this.LV.clone();
        g.LS = this.LS.clone();
        return g;
    }
}

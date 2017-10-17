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
    protected com.google.research.reflection.b.b MM;
    protected com.google.research.reflection.layers.a MN;
    protected a MO;
    protected com.google.research.reflection.layers.b MP;
    
    public g() {
        this.SP(100, SQ());
    }
    
    private void SP(final int n, final com.google.research.reflection.b.b mm) {
        e.Nu = false;
        this.MP = new com.google.research.reflection.layers.b(1, n);
        (this.MM = mm).Tq(this);
        (this.MN = new com.google.research.reflection.layers.a(1)).TK(new o(false, 1, 1, 1, mm.Ts(), n, -1, -1, false, false, 0.0f));
        this.MN.TK(new m(1, 1, 2, 1, n, n, -1, -1, false));
    }
    
    public static c SQ() {
        final c c = new c();
        c.Tz(new d());
        c.Tz(new f());
        c.Tz(new com.google.research.reflection.b.e());
        c.Tz(new j());
        c.Tz(new i());
        c.Tz(new com.google.research.reflection.b.g());
        c.Tz(new k());
        return c;
    }
    
    public void SR(final com.google.research.reflection.b.b b, final int n) {
        if (this.MO != null) {
            this.MO.SR(b, n);
        }
        final com.google.research.reflection.layers.b ue = this.MN.TF().get(0).UE(this.MN);
        final int tw = ue.TW(false);
        for (int i = 0; i < ue.TU(false); ++i) {
            double n2 = 0.0;
            for (int j = 0; j < tw; ++j) {
                n2 += ue.TP(false, j, i);
            }
            ue.TQ(false, n, i, n2 / tw);
        }
    }
    
    public void So(final String s, final String s2) {
        this.MM.Tu(Arrays.asList(".*", s));
    }
    
    public com.google.research.reflection.predictor.e Sq(final com.google.research.reflection.a.b b) {
        final Integer value = this.Sx().Si(b);
        final com.google.research.reflection.predictor.e e = new com.google.research.reflection.predictor.e();
        try {
            final com.google.research.reflection.b.b mm = this.MM;
            try {
                final com.google.research.reflection.predictor.a sx = this.Sx();
                try {
                    final com.google.research.reflection.predictor.d sd = sx.Sd();
                    try {
                        final com.google.research.reflection.layers.b tt = mm.Tt(sd.SE(), b);
                        try {
                            final com.google.research.reflection.layers.a mn = this.MN;
                            try {
                                mn.TE();
                                this.MN.TJ(true, null, tt, true);
                                final com.google.research.reflection.layers.b mp = this.MP;
                                try {
                                    final double[] nl = mp.Nl;
                                    try {
                                        com.google.research.reflection.layers.k.Up(nl);
                                        final com.google.research.reflection.layers.b mp2 = this.MP;
                                        try {
                                            mp2.TQ(false, 0, value, 1.0);
                                            final com.google.research.reflection.layers.a mn2 = this.MN;
                                            try {
                                                mn2.TH(this.MP, null, 1, true);
                                                final com.google.research.reflection.layers.a mn3 = this.MN;
                                                try {
                                                    mn3.update();
                                                    e.SL(tt.Nl);
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
    
    public void Ss(final Integer n, final Integer n2, final String s) {
        final double n3 = 0.0;
        int i = 0;
        final m m = (m)this.MN.TN();
        final com.google.research.reflection.layers.b ue = m.UE(this.MN);
        final int tu = ue.TU(false);
        for (int j = 0; j < ue.TW(false); ++j) {
            int k = 0;
            double n4 = n3;
            while (k < tu) {
                n4 += ue.TP(false, j, k);
                ++k;
            }
            final double n5 = n4 / tu;
            if (!n.equals(n2)) {
                ue.TQ(false, j, n, ue.TP(false, j, n2));
            }
            ue.TQ(false, j, n2, n5);
        }
        final com.google.research.reflection.layers.b un = m.UN();
        double n6 = n3;
        while (i < tu) {
            n6 += un.Nl[i];
            ++i;
        }
        final double n7 = n6 / tu;
        if (!n.equals(n2)) {
            un.Nl[n] = un.Nl[n2];
        }
        un.Nl[n2] = n7;
    }
    
    public void Su(final DataOutputStream dataOutputStream) {
        dataOutputStream.writeUTF(com.google.research.reflection.b.b.Tr(this.MM));
        this.MM.Tw(dataOutputStream);
        this.MN.TL(dataOutputStream);
    }
    
    public com.google.research.reflection.predictor.e Sv(final float[] array, final com.google.research.reflection.a.b b) {
        final int n = 1;
        final com.google.research.reflection.layers.b tt = this.MM.Tt(this.Sx().Sd().SE(), b);
        if (this.Sx().Sn().size() != n) {
            if (this.Sx().Sn().size() > n) {
                while (true) {
                    try {
                        final com.google.research.reflection.layers.b tj = this.MN.TJ(false, null, tt, true);
                        for (int i = 0; i < array.length; ++i) {
                            array[i] = (float)tj.TP(false, 0, i);
                        }
                    }
                    catch (InvalidValueException ex) {
                        ex.printStackTrace();
                        final com.google.research.reflection.layers.b tj = null;
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
        e.SL(tt.Nl);
        e.SM(array);
        return e;
    }
    
    public void Sw(final DataInputStream dataInputStream) {
        final String utf = dataInputStream.readUTF();
        final com.google.research.reflection.b.b tp = com.google.research.reflection.b.b.Tp(utf);
        if (tp == null) {
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
        tp.Tv(dataInputStream);
        tp.Tq(this);
        (this.MN = new com.google.research.reflection.layers.a(1)).TM(dataInputStream);
        if (this.MN.TI() != tp.Ts()) {
            throw new IOException(new StringBuilder(76).append("Model to be loaded has an inconsistent input size:").append(this.MN.TI()).append(" != ").append(tp.Ts()).toString());
        }
        if (this.MN.TN().UX() == this.Sx().Sk()) {
            return;
        }
        throw new IOException(new StringBuilder(57).append("Inconsistent model output size...").append(this.MN.TN().UX()).append("!=").append(this.Sx().Sk()).toString());
    }
    
    public g clone() {
        final g g = new g();
        g.Sr(this.Sx());
        g.MN = this.MN.clone();
        g.MP = this.MP.clone();
        g.MM = this.MM.clone();
        return g;
    }
}

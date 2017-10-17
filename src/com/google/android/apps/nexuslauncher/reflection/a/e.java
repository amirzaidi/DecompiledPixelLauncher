// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.a;

import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.f;
import com.google.protobuf.nano.d;
import com.google.protobuf.nano.a;

public final class e extends a
{
    private static volatile e[] aH;
    public double[] aI;
    public String aJ;
    public long[] aK;
    public String[] aL;
    public long aM;
    public String aN;
    
    public e() {
        this.clear();
    }
    
    public static e ao(final byte[] array) {
        return (e)a.mergeFrom(new e(), array);
    }
    
    public static e[] emptyArray() {
        Label_0035: {
            if (e.aH != null) {
                break Label_0035;
            }
            synchronized (d.La) {
                if (e.aH == null) {
                    e.aH = new e[0];
                }
                return e.aH;
            }
        }
    }
    
    public e clear() {
        this.aJ = "";
        this.aN = "";
        this.aM = 0L;
        this.aL = f.Lg;
        this.aI = f.Lj;
        this.aK = f.Lc;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        final int n = 1;
        int i = 0;
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.aJ.equals("")) {
            computeSerializedSize += b.Sb(n, this.aJ);
        }
        if (!this.aN.equals("")) {
            computeSerializedSize += b.Sb(2, this.aN);
        }
        if (this.aM != 0L) {
            computeSerializedSize += b.RE(3, this.aM);
        }
        if (this.aL != null && this.aL.length > 0) {
            int j = 0;
            int n2 = 0;
            int n3 = 0;
            while (j < this.aL.length) {
                final String s = this.aL[j];
                if (s != null) {
                    ++n3;
                    n2 += b.Rv(s);
                }
                ++j;
            }
            computeSerializedSize = computeSerializedSize + n2 + n3 * 1;
        }
        if (this.aI != null && this.aI.length > 0) {
            computeSerializedSize = computeSerializedSize + this.aI.length * 8 + this.aI.length * 1;
        }
        if (this.aK != null && this.aK.length > 0) {
            int n4 = 0;
            while (i < this.aK.length) {
                n4 += b.RH(this.aK[i]);
                ++i;
            }
            computeSerializedSize = computeSerializedSize + n4 + this.aK.length * 1;
        }
        return computeSerializedSize;
    }
    
    public e mergeFrom(final c c) {
        while (true) {
            final int sx = c.Sx();
            switch (sx) {
                default: {
                    if (!f.SW(c, sx)) {
                        return this;
                    }
                    continue;
                }
                case 0: {
                    return this;
                }
                case 10: {
                    this.aJ = c.SG();
                    continue;
                }
                case 18: {
                    this.aN = c.SG();
                    continue;
                }
                case 24: {
                    this.aM = c.SE();
                    continue;
                }
                case 34: {
                    final int ss = f.SS(c, 34);
                    int i;
                    if (this.aL == null) {
                        i = 0;
                    }
                    else {
                        i = this.aL.length;
                    }
                    final String[] al = new String[ss + i];
                    if (i != 0) {
                        System.arraycopy(this.aL, 0, al, 0, i);
                    }
                    while (i < al.length - 1) {
                        al[i] = c.SG();
                        c.Sx();
                        ++i;
                    }
                    al[i] = c.SG();
                    this.aL = al;
                    continue;
                }
                case 41: {
                    final int ss2 = f.SS(c, 41);
                    int j;
                    if (this.aI == null) {
                        j = 0;
                    }
                    else {
                        j = this.aI.length;
                    }
                    final double[] ai = new double[ss2 + j];
                    if (j != 0) {
                        System.arraycopy(this.aI, 0, ai, 0, j);
                    }
                    while (j < ai.length - 1) {
                        ai[j] = c.SA();
                        c.Sx();
                        ++j;
                    }
                    ai[j] = c.SA();
                    this.aI = ai;
                    continue;
                }
                case 42: {
                    final int sw = c.Sw();
                    final int st = c.St(sw);
                    final int n = sw / 8;
                    int k;
                    if (this.aI == null) {
                        k = 0;
                    }
                    else {
                        k = this.aI.length;
                    }
                    final double[] ai2 = new double[n + k];
                    if (k != 0) {
                        System.arraycopy(this.aI, 0, ai2, 0, k);
                    }
                    while (k < ai2.length) {
                        ai2[k] = c.SA();
                        ++k;
                    }
                    this.aI = ai2;
                    c.Sq(st);
                    continue;
                }
                case 48: {
                    final int ss3 = f.SS(c, 48);
                    int l;
                    if (this.aK == null) {
                        l = 0;
                    }
                    else {
                        l = this.aK.length;
                    }
                    final long[] ak = new long[ss3 + l];
                    if (l != 0) {
                        System.arraycopy(this.aK, 0, ak, 0, l);
                    }
                    while (l < ak.length - 1) {
                        ak[l] = c.SE();
                        c.Sx();
                        ++l;
                    }
                    ak[l] = c.SE();
                    this.aK = ak;
                    continue;
                }
                case 50: {
                    final int st2 = c.St(c.Sw());
                    final int ss4 = c.Ss();
                    int n2 = 0;
                    while (c.Sv() > 0) {
                        c.SE();
                        ++n2;
                    }
                    c.SJ(ss4);
                    int length;
                    if (this.aK == null) {
                        length = 0;
                    }
                    else {
                        length = this.aK.length;
                    }
                    final long[] ak2 = new long[n2 + length];
                    if (length != 0) {
                        System.arraycopy(this.aK, 0, ak2, 0, length);
                    }
                    while (length < ak2.length) {
                        ak2[length] = c.SE();
                        ++length;
                    }
                    this.aK = ak2;
                    c.Sq(st2);
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        int i = 0;
        if (!this.aJ.equals("")) {
            b.RY(1, this.aJ);
        }
        if (!this.aN.equals("")) {
            b.RY(2, this.aN);
        }
        if (this.aM != 0L) {
            b.Sh(3, this.aM);
        }
        if (this.aL != null && this.aL.length > 0) {
            for (int j = 0; j < this.aL.length; ++j) {
                final String s = this.aL[j];
                if (s != null) {
                    b.RY(4, s);
                }
            }
        }
        if (this.aI != null && this.aI.length > 0) {
            for (int k = 0; k < this.aI.length; ++k) {
                b.Rp(5, this.aI[k]);
            }
        }
        if (this.aK != null && this.aK.length > 0) {
            while (i < this.aK.length) {
                b.Sh(6, this.aK[i]);
                ++i;
            }
        }
        super.writeTo(b);
    }
}

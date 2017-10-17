// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.d;

import java.util.Arrays;
import com.google.protobuf.nano.f;
import com.google.protobuf.nano.a;

public final class b extends a
{
    private static volatile b[] T;
    public String U;
    public d[] V;
    public d[] W;
    public d[] X;
    public int Y;
    public byte[] Z;
    public String aa;
    public c[] ab;
    public int ac;
    
    public b() {
        this.clear();
    }
    
    public static b[] emptyArray() {
        Label_0035: {
            if (b.T != null) {
                break Label_0035;
            }
            synchronized (com.google.protobuf.nano.d.PH) {
                if (b.T == null) {
                    b.T = new b[0];
                }
                return b.T;
            }
        }
    }
    
    public b clear() {
        this.U = "";
        this.aa = "";
        this.Z = f.PP;
        this.Y = 0;
        this.ac = 0;
        this.ab = c.emptyArray();
        this.V = d.emptyArray();
        this.X = d.emptyArray();
        this.W = d.emptyArray();
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int i = 0;
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.U.equals("")) {
            computeSerializedSize += com.google.protobuf.nano.b.VW(1, this.U);
        }
        if (!this.aa.equals("")) {
            computeSerializedSize += com.google.protobuf.nano.b.VW(2, this.aa);
        }
        if (!Arrays.equals(this.Z, f.PP)) {
            computeSerializedSize += com.google.protobuf.nano.b.Va(3, this.Z);
        }
        if (this.ac != 0) {
            computeSerializedSize += com.google.protobuf.nano.b.VA(4, this.ac);
        }
        if (this.ab != null && this.ab.length > 0) {
            int n = computeSerializedSize;
            for (int j = 0; j < this.ab.length; ++j) {
                final c c = this.ab[j];
                if (c != null) {
                    n += com.google.protobuf.nano.b.Vo(5, c);
                }
            }
            computeSerializedSize = n;
        }
        if (this.V != null && this.V.length > 0) {
            int n2 = computeSerializedSize;
            for (int k = 0; k < this.V.length; ++k) {
                final d d = this.V[k];
                if (d != null) {
                    n2 += com.google.protobuf.nano.b.Vo(6, d);
                }
            }
            computeSerializedSize = n2;
        }
        if (this.X != null && this.X.length > 0) {
            int n3 = computeSerializedSize;
            for (int l = 0; l < this.X.length; ++l) {
                final d d2 = this.X[l];
                if (d2 != null) {
                    n3 += com.google.protobuf.nano.b.Vo(7, d2);
                }
            }
            computeSerializedSize = n3;
        }
        if (this.W != null && this.W.length > 0) {
            while (i < this.W.length) {
                final d d3 = this.W[i];
                if (d3 != null) {
                    computeSerializedSize += com.google.protobuf.nano.b.Vo(8, d3);
                }
                ++i;
            }
        }
        if (this.Y != 0) {
            computeSerializedSize += com.google.protobuf.nano.b.VA(9, this.Y);
        }
        return computeSerializedSize;
    }
    
    public b mergeFrom(final com.google.protobuf.nano.c c) {
        while (true) {
            final int ws = c.Ws();
            switch (ws) {
                default: {
                    if (!f.WR(c, ws)) {
                        return this;
                    }
                    continue;
                }
                case 0: {
                    return this;
                }
                case 10: {
                    this.U = c.WB();
                    continue;
                }
                case 18: {
                    this.aa = c.WB();
                    continue;
                }
                case 26: {
                    this.Z = c.Wp();
                    continue;
                }
                case 32: {
                    this.ac = c.WF();
                    continue;
                }
                case 42: {
                    final int wn = f.WN(c, 42);
                    int i;
                    if (this.ab == null) {
                        i = 0;
                    }
                    else {
                        i = this.ab.length;
                    }
                    final c[] ab = new c[wn + i];
                    if (i != 0) {
                        System.arraycopy(this.ab, 0, ab, 0, i);
                    }
                    while (i < ab.length - 1) {
                        c.Ww(ab[i] = new c());
                        c.Ws();
                        ++i;
                    }
                    c.Ww(ab[i] = new c());
                    this.ab = ab;
                    continue;
                }
                case 50: {
                    final int wn2 = f.WN(c, 50);
                    int j;
                    if (this.V == null) {
                        j = 0;
                    }
                    else {
                        j = this.V.length;
                    }
                    final d[] v = new d[wn2 + j];
                    if (j != 0) {
                        System.arraycopy(this.V, 0, v, 0, j);
                    }
                    while (j < v.length - 1) {
                        c.Ww(v[j] = new d());
                        c.Ws();
                        ++j;
                    }
                    c.Ww(v[j] = new d());
                    this.V = v;
                    continue;
                }
                case 58: {
                    final int wn3 = f.WN(c, 58);
                    int k;
                    if (this.X == null) {
                        k = 0;
                    }
                    else {
                        k = this.X.length;
                    }
                    final d[] x = new d[wn3 + k];
                    if (k != 0) {
                        System.arraycopy(this.X, 0, x, 0, k);
                    }
                    while (k < x.length - 1) {
                        c.Ww(x[k] = new d());
                        c.Ws();
                        ++k;
                    }
                    c.Ww(x[k] = new d());
                    this.X = x;
                    continue;
                }
                case 66: {
                    final int wn4 = f.WN(c, 66);
                    int l;
                    if (this.W == null) {
                        l = 0;
                    }
                    else {
                        l = this.W.length;
                    }
                    final d[] w = new d[wn4 + l];
                    if (l != 0) {
                        System.arraycopy(this.W, 0, w, 0, l);
                    }
                    while (l < w.length - 1) {
                        c.Ww(w[l] = new d());
                        c.Ws();
                        ++l;
                    }
                    c.Ww(w[l] = new d());
                    this.W = w;
                    continue;
                }
                case 72: {
                    this.Y = c.WF();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final com.google.protobuf.nano.b b) {
        int i = 0;
        if (!this.U.equals("")) {
            b.VT(1, this.U);
        }
        if (!this.aa.equals("")) {
            b.VT(2, this.aa);
        }
        if (!Arrays.equals(this.Z, f.PP)) {
            b.Vj(3, this.Z);
        }
        if (this.ac != 0) {
            b.Vv(4, this.ac);
        }
        if (this.ab != null && this.ab.length > 0) {
            for (int j = 0; j < this.ab.length; ++j) {
                final c c = this.ab[j];
                if (c != null) {
                    b.VK(5, c);
                }
            }
        }
        if (this.V != null && this.V.length > 0) {
            for (int k = 0; k < this.V.length; ++k) {
                final d d = this.V[k];
                if (d != null) {
                    b.VK(6, d);
                }
            }
        }
        if (this.X != null && this.X.length > 0) {
            for (int l = 0; l < this.X.length; ++l) {
                final d d2 = this.X[l];
                if (d2 != null) {
                    b.VK(7, d2);
                }
            }
        }
        if (this.W != null && this.W.length > 0) {
            while (i < this.W.length) {
                final d d3 = this.W[i];
                if (d3 != null) {
                    b.VK(8, d3);
                }
                ++i;
            }
        }
        if (this.Y != 0) {
            b.Vv(9, this.Y);
        }
        super.writeTo(b);
    }
}

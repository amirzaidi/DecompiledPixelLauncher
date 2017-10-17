// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.a;

import com.google.protobuf.nano.f;

public final class a extends com.google.protobuf.nano.a
{
    public long am;
    public String an;
    public String ao;
    public long ap;
    public String[] aq;
    public c ar;
    public String as;
    public d at;
    public b au;
    public e[] av;
    public long aw;
    public long ax;
    public String ay;
    public String az;
    public long duration;
    
    public a() {
        this.clear();
    }
    
    public static a am(final byte[] array) {
        return (a)com.google.protobuf.nano.a.mergeFrom(new a(), array);
    }
    
    public static a an(final com.google.protobuf.nano.c c) {
        return new a().mergeFrom(c);
    }
    
    public a clear() {
        final long duration = 0L;
        this.as = "";
        this.az = "";
        this.an = "";
        this.ao = "";
        this.aw = duration;
        this.am = duration;
        this.ap = duration;
        this.ay = "";
        this.ax = duration;
        this.duration = duration;
        this.av = e.emptyArray();
        this.aq = f.Lg;
        this.au = null;
        this.ar = null;
        this.at = null;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        final int n = 1;
        final long n2 = 0L;
        int i = 0;
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.as.equals("")) {
            computeSerializedSize += com.google.protobuf.nano.b.Sb(n, this.as);
        }
        if (!this.az.equals("")) {
            computeSerializedSize += com.google.protobuf.nano.b.Sb(2, this.az);
        }
        if (!this.an.equals("")) {
            computeSerializedSize += com.google.protobuf.nano.b.Sb(3, this.an);
        }
        if (!this.ao.equals("")) {
            computeSerializedSize += com.google.protobuf.nano.b.Sb(4, this.ao);
        }
        if (this.aw != n2) {
            computeSerializedSize += com.google.protobuf.nano.b.RE(5, this.aw);
        }
        if (this.am != n2) {
            computeSerializedSize += com.google.protobuf.nano.b.RE(6, this.am);
        }
        if (this.ap != n2) {
            computeSerializedSize += com.google.protobuf.nano.b.RE(7, this.ap);
        }
        if (!this.ay.equals("")) {
            computeSerializedSize += com.google.protobuf.nano.b.Sb(8, this.ay);
        }
        if (this.ax != n2) {
            computeSerializedSize += com.google.protobuf.nano.b.RE(9, this.ax);
        }
        if (this.duration != n2) {
            computeSerializedSize += com.google.protobuf.nano.b.RE(10, this.duration);
        }
        if (this.av != null && this.av.length > 0) {
            int n3 = computeSerializedSize;
            for (int j = 0; j < this.av.length; ++j) {
                final e e = this.av[j];
                if (e != null) {
                    n3 += com.google.protobuf.nano.b.Rt(11, e);
                }
            }
            computeSerializedSize = n3;
        }
        if (this.aq != null && this.aq.length > 0) {
            int n4 = 0;
            int n5 = 0;
            while (i < this.aq.length) {
                final String s = this.aq[i];
                if (s != null) {
                    ++n5;
                    n4 += com.google.protobuf.nano.b.Rv(s);
                }
                ++i;
            }
            computeSerializedSize = computeSerializedSize + n4 + n5 * 1;
        }
        if (this.au != null) {
            computeSerializedSize += com.google.protobuf.nano.b.Rt(13, this.au);
        }
        if (this.ar != null) {
            computeSerializedSize += com.google.protobuf.nano.b.Rt(14, this.ar);
        }
        if (this.at != null) {
            computeSerializedSize += com.google.protobuf.nano.b.Rt(15, this.at);
        }
        return computeSerializedSize;
    }
    
    public a mergeFrom(final com.google.protobuf.nano.c c) {
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
                    this.as = c.SG();
                    continue;
                }
                case 18: {
                    this.az = c.SG();
                    continue;
                }
                case 26: {
                    this.an = c.SG();
                    continue;
                }
                case 34: {
                    this.ao = c.SG();
                    continue;
                }
                case 40: {
                    this.aw = c.SE();
                    continue;
                }
                case 48: {
                    this.am = c.SE();
                    continue;
                }
                case 56: {
                    this.ap = c.SE();
                    continue;
                }
                case 66: {
                    this.ay = c.SG();
                    continue;
                }
                case 72: {
                    this.ax = c.SE();
                    continue;
                }
                case 80: {
                    this.duration = c.SE();
                    continue;
                }
                case 90: {
                    final int ss = f.SS(c, 90);
                    int i;
                    if (this.av == null) {
                        i = 0;
                    }
                    else {
                        i = this.av.length;
                    }
                    final e[] av = new e[ss + i];
                    if (i != 0) {
                        System.arraycopy(this.av, 0, av, 0, i);
                    }
                    while (i < av.length - 1) {
                        c.SB(av[i] = new e());
                        c.Sx();
                        ++i;
                    }
                    c.SB(av[i] = new e());
                    this.av = av;
                    continue;
                }
                case 98: {
                    final int ss2 = f.SS(c, 98);
                    int j;
                    if (this.aq == null) {
                        j = 0;
                    }
                    else {
                        j = this.aq.length;
                    }
                    final String[] aq = new String[ss2 + j];
                    if (j != 0) {
                        System.arraycopy(this.aq, 0, aq, 0, j);
                    }
                    while (j < aq.length - 1) {
                        aq[j] = c.SG();
                        c.Sx();
                        ++j;
                    }
                    aq[j] = c.SG();
                    this.aq = aq;
                    continue;
                }
                case 106: {
                    if (this.au == null) {
                        this.au = new b();
                    }
                    c.SB(this.au);
                    continue;
                }
                case 114: {
                    if (this.ar == null) {
                        this.ar = new c();
                    }
                    c.SB(this.ar);
                    continue;
                }
                case 122: {
                    if (this.at == null) {
                        this.at = new d();
                    }
                    c.SB(this.at);
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final com.google.protobuf.nano.b b) {
        int i = 0;
        final long n = 0L;
        if (!this.as.equals("")) {
            b.RY(1, this.as);
        }
        if (!this.az.equals("")) {
            b.RY(2, this.az);
        }
        if (!this.an.equals("")) {
            b.RY(3, this.an);
        }
        if (!this.ao.equals("")) {
            b.RY(4, this.ao);
        }
        if (this.aw != n) {
            b.Sh(5, this.aw);
        }
        if (this.am != n) {
            b.Sh(6, this.am);
        }
        if (this.ap != n) {
            b.Sh(7, this.ap);
        }
        if (!this.ay.equals("")) {
            b.RY(8, this.ay);
        }
        if (this.ax != n) {
            b.Sh(9, this.ax);
        }
        if (this.duration != n) {
            b.Sh(10, this.duration);
        }
        if (this.av != null && this.av.length > 0) {
            for (int j = 0; j < this.av.length; ++j) {
                final e e = this.av[j];
                if (e != null) {
                    b.RP(11, e);
                }
            }
        }
        if (this.aq != null && this.aq.length > 0) {
            while (i < this.aq.length) {
                final String s = this.aq[i];
                if (s != null) {
                    b.RY(12, s);
                }
                ++i;
            }
        }
        if (this.au != null) {
            b.RP(13, this.au);
        }
        if (this.ar != null) {
            b.RP(14, this.ar);
        }
        if (this.at != null) {
            b.RP(15, this.at);
        }
        super.writeTo(b);
    }
}

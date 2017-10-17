// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.d;

import com.google.protobuf.nano.b;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.a;

public final class e extends a
{
    public long ah;
    public String ai;
    public long aj;
    public long ak;
    public long al;
    public String am;
    public String an;
    public String[] ao;
    public String ap;
    public String aq;
    public g ar;
    public h as;
    public f at;
    public i[] au;
    public long duration;
    
    public e() {
        this.clear();
    }
    
    public static e ae(final byte[] array) {
        return (e)a.mergeFrom(new e(), array);
    }
    
    public static e af(final c c) {
        return new e().mergeFrom(c);
    }
    
    public e clear() {
        final long duration = 0L;
        this.am = "";
        this.ap = "";
        this.an = "";
        this.aq = "";
        this.ah = duration;
        this.ak = duration;
        this.al = duration;
        this.ai = "";
        this.aj = duration;
        this.duration = duration;
        this.au = i.emptyArray();
        this.ao = com.google.protobuf.nano.f.PN;
        this.at = null;
        this.ar = null;
        this.as = null;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        final int n = 1;
        final long n2 = 0L;
        int i = 0;
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.am.equals("")) {
            computeSerializedSize += b.VW(n, this.am);
        }
        if (!this.ap.equals("")) {
            computeSerializedSize += b.VW(2, this.ap);
        }
        if (!this.an.equals("")) {
            computeSerializedSize += b.VW(3, this.an);
        }
        if (!this.aq.equals("")) {
            computeSerializedSize += b.VW(4, this.aq);
        }
        if (this.ah != n2) {
            computeSerializedSize += b.Vz(5, this.ah);
        }
        if (this.ak != n2) {
            computeSerializedSize += b.Vz(6, this.ak);
        }
        if (this.al != n2) {
            computeSerializedSize += b.Vz(7, this.al);
        }
        if (!this.ai.equals("")) {
            computeSerializedSize += b.VW(8, this.ai);
        }
        if (this.aj != n2) {
            computeSerializedSize += b.Vz(9, this.aj);
        }
        if (this.duration != n2) {
            computeSerializedSize += b.Vz(10, this.duration);
        }
        if (this.au != null && this.au.length > 0) {
            int n3 = computeSerializedSize;
            for (int j = 0; j < this.au.length; ++j) {
                final i k = this.au[j];
                if (k != null) {
                    n3 += b.Vo(11, k);
                }
            }
            computeSerializedSize = n3;
        }
        if (this.ao != null && this.ao.length > 0) {
            int n4 = 0;
            int n5 = 0;
            while (i < this.ao.length) {
                final String s = this.ao[i];
                if (s != null) {
                    ++n5;
                    n4 += b.Vq(s);
                }
                ++i;
            }
            computeSerializedSize = computeSerializedSize + n4 + n5 * 1;
        }
        if (this.at != null) {
            computeSerializedSize += b.Vo(13, this.at);
        }
        if (this.ar != null) {
            computeSerializedSize += b.Vo(14, this.ar);
        }
        if (this.as != null) {
            computeSerializedSize += b.Vo(15, this.as);
        }
        return computeSerializedSize;
    }
    
    public e mergeFrom(final c c) {
        while (true) {
            final int ws = c.Ws();
            switch (ws) {
                default: {
                    if (!com.google.protobuf.nano.f.WR(c, ws)) {
                        return this;
                    }
                    continue;
                }
                case 0: {
                    return this;
                }
                case 10: {
                    this.am = c.WB();
                    continue;
                }
                case 18: {
                    this.ap = c.WB();
                    continue;
                }
                case 26: {
                    this.an = c.WB();
                    continue;
                }
                case 34: {
                    this.aq = c.WB();
                    continue;
                }
                case 40: {
                    this.ah = c.Wz();
                    continue;
                }
                case 48: {
                    this.ak = c.Wz();
                    continue;
                }
                case 56: {
                    this.al = c.Wz();
                    continue;
                }
                case 66: {
                    this.ai = c.WB();
                    continue;
                }
                case 72: {
                    this.aj = c.Wz();
                    continue;
                }
                case 80: {
                    this.duration = c.Wz();
                    continue;
                }
                case 90: {
                    final int wn = com.google.protobuf.nano.f.WN(c, 90);
                    int i;
                    if (this.au == null) {
                        i = 0;
                    }
                    else {
                        i = this.au.length;
                    }
                    final i[] au = new i[wn + i];
                    if (i != 0) {
                        System.arraycopy(this.au, 0, au, 0, i);
                    }
                    while (i < au.length - 1) {
                        c.Ww(au[i] = new i());
                        c.Ws();
                        ++i;
                    }
                    c.Ww(au[i] = new i());
                    this.au = au;
                    continue;
                }
                case 98: {
                    final int wn2 = com.google.protobuf.nano.f.WN(c, 98);
                    int j;
                    if (this.ao == null) {
                        j = 0;
                    }
                    else {
                        j = this.ao.length;
                    }
                    final String[] ao = new String[wn2 + j];
                    if (j != 0) {
                        System.arraycopy(this.ao, 0, ao, 0, j);
                    }
                    while (j < ao.length - 1) {
                        ao[j] = c.WB();
                        c.Ws();
                        ++j;
                    }
                    ao[j] = c.WB();
                    this.ao = ao;
                    continue;
                }
                case 106: {
                    if (this.at == null) {
                        this.at = new f();
                    }
                    c.Ww(this.at);
                    continue;
                }
                case 114: {
                    if (this.ar == null) {
                        this.ar = new g();
                    }
                    c.Ww(this.ar);
                    continue;
                }
                case 122: {
                    if (this.as == null) {
                        this.as = new h();
                    }
                    c.Ww(this.as);
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        int i = 0;
        final long n = 0L;
        if (!this.am.equals("")) {
            b.VT(1, this.am);
        }
        if (!this.ap.equals("")) {
            b.VT(2, this.ap);
        }
        if (!this.an.equals("")) {
            b.VT(3, this.an);
        }
        if (!this.aq.equals("")) {
            b.VT(4, this.aq);
        }
        if (this.ah != n) {
            b.Wc(5, this.ah);
        }
        if (this.ak != n) {
            b.Wc(6, this.ak);
        }
        if (this.al != n) {
            b.Wc(7, this.al);
        }
        if (!this.ai.equals("")) {
            b.VT(8, this.ai);
        }
        if (this.aj != n) {
            b.Wc(9, this.aj);
        }
        if (this.duration != n) {
            b.Wc(10, this.duration);
        }
        if (this.au != null && this.au.length > 0) {
            for (int j = 0; j < this.au.length; ++j) {
                final i k = this.au[j];
                if (k != null) {
                    b.VK(11, k);
                }
            }
        }
        if (this.ao != null && this.ao.length > 0) {
            while (i < this.ao.length) {
                final String s = this.ao[i];
                if (s != null) {
                    b.VT(12, s);
                }
                ++i;
            }
        }
        if (this.at != null) {
            b.VK(13, this.at);
        }
        if (this.ar != null) {
            b.VK(14, this.ar);
        }
        if (this.as != null) {
            b.VK(15, this.as);
        }
        super.writeTo(b);
    }
}

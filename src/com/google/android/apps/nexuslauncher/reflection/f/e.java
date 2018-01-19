// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.f;

import com.google.protobuf.nano.b;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.a;

public final class e extends a
{
    public String aA;
    public long aB;
    public g aC;
    public h aD;
    public f aE;
    public long aq;
    public String ar;
    public String as;
    public String at;
    public String[] au;
    public i[] av;
    public String aw;
    public long ax;
    public long ay;
    public long az;
    
    public e() {
        this.clear();
    }
    
    public static e aC(final byte[] array) {
        return (e)a.mergeFrom(new e(), array);
    }
    
    public static e aD(final c c) {
        return new e().mergeFrom(c);
    }
    
    public e clear() {
        final long ab = 0L;
        this.at = "";
        this.as = "";
        this.ar = "";
        this.aA = "";
        this.aq = ab;
        this.ay = ab;
        this.az = ab;
        this.aw = "";
        this.ax = ab;
        this.aB = ab;
        this.av = i.emptyArray();
        this.au = com.google.protobuf.nano.f.Os;
        this.aE = null;
        this.aC = null;
        this.aD = null;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        final int n = 1;
        final long n2 = 0L;
        int i = 0;
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.at.equals("")) {
            computeSerializedSize += b.Fs(n, this.at);
        }
        if (!this.as.equals("")) {
            computeSerializedSize += b.Fs(2, this.as);
        }
        if (!this.ar.equals("")) {
            computeSerializedSize += b.Fs(3, this.ar);
        }
        if (!this.aA.equals("")) {
            computeSerializedSize += b.Fs(4, this.aA);
        }
        if (this.aq != n2) {
            computeSerializedSize += b.EV(5, this.aq);
        }
        if (this.ay != n2) {
            computeSerializedSize += b.EV(6, this.ay);
        }
        if (this.az != n2) {
            computeSerializedSize += b.EV(7, this.az);
        }
        if (!this.aw.equals("")) {
            computeSerializedSize += b.Fs(8, this.aw);
        }
        if (this.ax != n2) {
            computeSerializedSize += b.EV(9, this.ax);
        }
        if (this.aB != n2) {
            computeSerializedSize += b.EV(10, this.aB);
        }
        if (this.av != null && this.av.length > 0) {
            int n3 = computeSerializedSize;
            for (int j = 0; j < this.av.length; ++j) {
                final i k = this.av[j];
                if (k != null) {
                    n3 += b.EK(11, k);
                }
            }
            computeSerializedSize = n3;
        }
        if (this.au != null && this.au.length > 0) {
            int n4 = 0;
            int n5 = 0;
            while (i < this.au.length) {
                final String s = this.au[i];
                if (s != null) {
                    ++n5;
                    n4 += b.EM(s);
                }
                ++i;
            }
            computeSerializedSize = computeSerializedSize + n4 + n5 * 1;
        }
        if (this.aE != null) {
            computeSerializedSize += b.EK(13, this.aE);
        }
        if (this.aC != null) {
            computeSerializedSize += b.EK(14, this.aC);
        }
        if (this.aD != null) {
            computeSerializedSize += b.EK(15, this.aD);
        }
        return computeSerializedSize;
    }
    
    public e mergeFrom(final c c) {
        while (true) {
            final int fo = c.FO();
            switch (fo) {
                default: {
                    if (!com.google.protobuf.nano.f.Gn(c, fo)) {
                        return this;
                    }
                    continue;
                }
                case 0: {
                    return this;
                }
                case 10: {
                    this.at = c.FX();
                    continue;
                }
                case 18: {
                    this.as = c.FX();
                    continue;
                }
                case 26: {
                    this.ar = c.FX();
                    continue;
                }
                case 34: {
                    this.aA = c.FX();
                    continue;
                }
                case 40: {
                    this.aq = c.FV();
                    continue;
                }
                case 48: {
                    this.ay = c.FV();
                    continue;
                }
                case 56: {
                    this.az = c.FV();
                    continue;
                }
                case 66: {
                    this.aw = c.FX();
                    continue;
                }
                case 72: {
                    this.ax = c.FV();
                    continue;
                }
                case 80: {
                    this.aB = c.FV();
                    continue;
                }
                case 90: {
                    final int gj = com.google.protobuf.nano.f.Gj(c, 90);
                    int i;
                    if (this.av == null) {
                        i = 0;
                    }
                    else {
                        i = this.av.length;
                    }
                    final i[] av = new i[gj + i];
                    if (i != 0) {
                        System.arraycopy(this.av, 0, av, 0, i);
                    }
                    while (i < av.length - 1) {
                        c.FS(av[i] = new i());
                        c.FO();
                        ++i;
                    }
                    c.FS(av[i] = new i());
                    this.av = av;
                    continue;
                }
                case 98: {
                    final int gj2 = com.google.protobuf.nano.f.Gj(c, 98);
                    int j;
                    if (this.au == null) {
                        j = 0;
                    }
                    else {
                        j = this.au.length;
                    }
                    final String[] au = new String[gj2 + j];
                    if (j != 0) {
                        System.arraycopy(this.au, 0, au, 0, j);
                    }
                    while (j < au.length - 1) {
                        au[j] = c.FX();
                        c.FO();
                        ++j;
                    }
                    au[j] = c.FX();
                    this.au = au;
                    continue;
                }
                case 106: {
                    if (this.aE == null) {
                        this.aE = new f();
                    }
                    c.FS(this.aE);
                    continue;
                }
                case 114: {
                    if (this.aC == null) {
                        this.aC = new g();
                    }
                    c.FS(this.aC);
                    continue;
                }
                case 122: {
                    if (this.aD == null) {
                        this.aD = new h();
                    }
                    c.FS(this.aD);
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        int i = 0;
        final long n = 0L;
        if (!this.at.equals("")) {
            b.Fp(1, this.at);
        }
        if (!this.as.equals("")) {
            b.Fp(2, this.as);
        }
        if (!this.ar.equals("")) {
            b.Fp(3, this.ar);
        }
        if (!this.aA.equals("")) {
            b.Fp(4, this.aA);
        }
        if (this.aq != n) {
            b.Fy(5, this.aq);
        }
        if (this.ay != n) {
            b.Fy(6, this.ay);
        }
        if (this.az != n) {
            b.Fy(7, this.az);
        }
        if (!this.aw.equals("")) {
            b.Fp(8, this.aw);
        }
        if (this.ax != n) {
            b.Fy(9, this.ax);
        }
        if (this.aB != n) {
            b.Fy(10, this.aB);
        }
        if (this.av != null && this.av.length > 0) {
            for (int j = 0; j < this.av.length; ++j) {
                final i k = this.av[j];
                if (k != null) {
                    b.Fg(11, k);
                }
            }
        }
        if (this.au != null && this.au.length > 0) {
            while (i < this.au.length) {
                final String s = this.au[i];
                if (s != null) {
                    b.Fp(12, s);
                }
                ++i;
            }
        }
        if (this.aE != null) {
            b.Fg(13, this.aE);
        }
        if (this.aC != null) {
            b.Fg(14, this.aC);
        }
        if (this.aD != null) {
            b.Fg(15, this.aD);
        }
        super.writeTo(b);
    }
}

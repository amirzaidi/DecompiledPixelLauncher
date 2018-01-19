// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.f;

import java.util.Arrays;
import com.google.protobuf.nano.f;
import com.google.protobuf.nano.a;

public final class b extends a
{
    private static volatile b[] am;
    public int ad;
    public int ae;
    public String af;
    public byte[] ag;
    public c[] ah;
    public d[] ai;
    public d[] aj;
    public d[] ak;
    public String al;
    
    public b() {
        this.clear();
    }
    
    public static b[] emptyArray() {
        Label_0035: {
            if (b.am != null) {
                break Label_0035;
            }
            synchronized (com.google.protobuf.nano.d.Om) {
                if (b.am == null) {
                    b.am = new b[0];
                }
                return b.am;
            }
        }
    }
    
    public b clear() {
        this.al = "";
        this.af = "";
        this.ag = f.Ou;
        this.ae = 0;
        this.ad = 0;
        this.ah = c.emptyArray();
        this.ai = d.emptyArray();
        this.aj = d.emptyArray();
        this.ak = d.emptyArray();
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int i = 0;
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.al.equals("")) {
            computeSerializedSize += com.google.protobuf.nano.b.Fs(1, this.al);
        }
        if (!this.af.equals("")) {
            computeSerializedSize += com.google.protobuf.nano.b.Fs(2, this.af);
        }
        if (!Arrays.equals(this.ag, f.Ou)) {
            computeSerializedSize += com.google.protobuf.nano.b.Ew(3, this.ag);
        }
        if (this.ad != 0) {
            computeSerializedSize += com.google.protobuf.nano.b.EW(4, this.ad);
        }
        if (this.ah != null && this.ah.length > 0) {
            int n = computeSerializedSize;
            for (int j = 0; j < this.ah.length; ++j) {
                final c c = this.ah[j];
                if (c != null) {
                    n += com.google.protobuf.nano.b.EK(5, c);
                }
            }
            computeSerializedSize = n;
        }
        if (this.ai != null && this.ai.length > 0) {
            int n2 = computeSerializedSize;
            for (int k = 0; k < this.ai.length; ++k) {
                final d d = this.ai[k];
                if (d != null) {
                    n2 += com.google.protobuf.nano.b.EK(6, d);
                }
            }
            computeSerializedSize = n2;
        }
        if (this.aj != null && this.aj.length > 0) {
            int n3 = computeSerializedSize;
            for (int l = 0; l < this.aj.length; ++l) {
                final d d2 = this.aj[l];
                if (d2 != null) {
                    n3 += com.google.protobuf.nano.b.EK(7, d2);
                }
            }
            computeSerializedSize = n3;
        }
        if (this.ak != null && this.ak.length > 0) {
            while (i < this.ak.length) {
                final d d3 = this.ak[i];
                if (d3 != null) {
                    computeSerializedSize += com.google.protobuf.nano.b.EK(8, d3);
                }
                ++i;
            }
        }
        if (this.ae != 0) {
            computeSerializedSize += com.google.protobuf.nano.b.EW(9, this.ae);
        }
        return computeSerializedSize;
    }
    
    public b mergeFrom(final com.google.protobuf.nano.c c) {
        while (true) {
            final int fo = c.FO();
            switch (fo) {
                default: {
                    if (!f.Gn(c, fo)) {
                        return this;
                    }
                    continue;
                }
                case 0: {
                    return this;
                }
                case 10: {
                    this.al = c.FX();
                    continue;
                }
                case 18: {
                    this.af = c.FX();
                    continue;
                }
                case 26: {
                    this.ag = c.FL();
                    continue;
                }
                case 32: {
                    this.ad = c.Ga();
                    continue;
                }
                case 42: {
                    final int gj = f.Gj(c, 42);
                    int i;
                    if (this.ah == null) {
                        i = 0;
                    }
                    else {
                        i = this.ah.length;
                    }
                    final c[] ah = new c[gj + i];
                    if (i != 0) {
                        System.arraycopy(this.ah, 0, ah, 0, i);
                    }
                    while (i < ah.length - 1) {
                        c.FS(ah[i] = new c());
                        c.FO();
                        ++i;
                    }
                    c.FS(ah[i] = new c());
                    this.ah = ah;
                    continue;
                }
                case 50: {
                    final int gj2 = f.Gj(c, 50);
                    int j;
                    if (this.ai == null) {
                        j = 0;
                    }
                    else {
                        j = this.ai.length;
                    }
                    final d[] ai = new d[gj2 + j];
                    if (j != 0) {
                        System.arraycopy(this.ai, 0, ai, 0, j);
                    }
                    while (j < ai.length - 1) {
                        c.FS(ai[j] = new d());
                        c.FO();
                        ++j;
                    }
                    c.FS(ai[j] = new d());
                    this.ai = ai;
                    continue;
                }
                case 58: {
                    final int gj3 = f.Gj(c, 58);
                    int k;
                    if (this.aj == null) {
                        k = 0;
                    }
                    else {
                        k = this.aj.length;
                    }
                    final d[] aj = new d[gj3 + k];
                    if (k != 0) {
                        System.arraycopy(this.aj, 0, aj, 0, k);
                    }
                    while (k < aj.length - 1) {
                        c.FS(aj[k] = new d());
                        c.FO();
                        ++k;
                    }
                    c.FS(aj[k] = new d());
                    this.aj = aj;
                    continue;
                }
                case 66: {
                    final int gj4 = f.Gj(c, 66);
                    int l;
                    if (this.ak == null) {
                        l = 0;
                    }
                    else {
                        l = this.ak.length;
                    }
                    final d[] ak = new d[gj4 + l];
                    if (l != 0) {
                        System.arraycopy(this.ak, 0, ak, 0, l);
                    }
                    while (l < ak.length - 1) {
                        c.FS(ak[l] = new d());
                        c.FO();
                        ++l;
                    }
                    c.FS(ak[l] = new d());
                    this.ak = ak;
                    continue;
                }
                case 72: {
                    this.ae = c.Ga();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final com.google.protobuf.nano.b b) {
        int i = 0;
        if (!this.al.equals("")) {
            b.Fp(1, this.al);
        }
        if (!this.af.equals("")) {
            b.Fp(2, this.af);
        }
        if (!Arrays.equals(this.ag, f.Ou)) {
            b.EF(3, this.ag);
        }
        if (this.ad != 0) {
            b.ER(4, this.ad);
        }
        if (this.ah != null && this.ah.length > 0) {
            for (int j = 0; j < this.ah.length; ++j) {
                final c c = this.ah[j];
                if (c != null) {
                    b.Fg(5, c);
                }
            }
        }
        if (this.ai != null && this.ai.length > 0) {
            for (int k = 0; k < this.ai.length; ++k) {
                final d d = this.ai[k];
                if (d != null) {
                    b.Fg(6, d);
                }
            }
        }
        if (this.aj != null && this.aj.length > 0) {
            for (int l = 0; l < this.aj.length; ++l) {
                final d d2 = this.aj[l];
                if (d2 != null) {
                    b.Fg(7, d2);
                }
            }
        }
        if (this.ak != null && this.ak.length > 0) {
            while (i < this.ak.length) {
                final d d3 = this.ak[i];
                if (d3 != null) {
                    b.Fg(8, d3);
                }
                ++i;
            }
        }
        if (this.ae != 0) {
            b.ER(9, this.ae);
        }
        super.writeTo(b);
    }
}

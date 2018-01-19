// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.search.a;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.a;

public final class c extends a
{
    public String fA;
    public com.google.android.apps.nexuslauncher.search.a.a fB;
    public boolean fC;
    public int fo;
    public com.google.android.apps.nexuslauncher.search.a.a fp;
    public b[] fq;
    public String fr;
    public boolean fs;
    public String ft;
    public int fu;
    public com.google.android.apps.nexuslauncher.search.a.a fv;
    public String fw;
    public com.google.android.apps.nexuslauncher.search.a.a fx;
    public int fy;
    public int fz;
    
    public c() {
        this.clear();
    }
    
    public c clear() {
        this.fo = 0;
        this.fs = false;
        this.fr = "";
        this.ft = "";
        this.fp = null;
        this.fB = null;
        this.fu = 0;
        this.fq = b.emptyArray();
        this.fx = null;
        this.fA = "";
        this.fy = 0;
        this.fz = 0;
        this.fw = "";
        this.fv = null;
        this.fC = false;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.fo != 0) {
            computeSerializedSize += com.google.protobuf.nano.b.EW(1, this.fo);
        }
        if (!this.fr.equals("")) {
            computeSerializedSize += com.google.protobuf.nano.b.Fs(2, this.fr);
        }
        if (!this.ft.equals("")) {
            computeSerializedSize += com.google.protobuf.nano.b.Fs(3, this.ft);
        }
        if (this.fp != null) {
            computeSerializedSize += com.google.protobuf.nano.b.EK(4, this.fp);
        }
        if (this.fu != 0) {
            computeSerializedSize += com.google.protobuf.nano.b.EW(5, this.fu);
        }
        if (this.fq != null && this.fq.length > 0) {
            int n = computeSerializedSize;
            for (int i = 0; i < this.fq.length; ++i) {
                final b b = this.fq[i];
                if (b != null) {
                    n += com.google.protobuf.nano.b.EK(6, b);
                }
            }
            computeSerializedSize = n;
        }
        if (this.fx != null) {
            computeSerializedSize += com.google.protobuf.nano.b.EK(7, this.fx);
        }
        if (!this.fA.equals("")) {
            computeSerializedSize += com.google.protobuf.nano.b.Fs(8, this.fA);
        }
        if (this.fy != 0) {
            computeSerializedSize += com.google.protobuf.nano.b.EW(9, this.fy);
        }
        if (this.fz != 0) {
            computeSerializedSize += com.google.protobuf.nano.b.EW(10, this.fz);
        }
        if (!this.fw.equals("")) {
            computeSerializedSize += com.google.protobuf.nano.b.Fs(11, this.fw);
        }
        if (this.fv != null) {
            computeSerializedSize += com.google.protobuf.nano.b.EK(12, this.fv);
        }
        if (this.fC) {
            computeSerializedSize += com.google.protobuf.nano.b.Fh(13, this.fC);
        }
        if (this.fB != null) {
            computeSerializedSize += com.google.protobuf.nano.b.EK(14, this.fB);
        }
        if (this.fs) {
            computeSerializedSize += com.google.protobuf.nano.b.Fh(15, this.fs);
        }
        return computeSerializedSize;
    }
    
    public c mergeFrom(final com.google.protobuf.nano.c c) {
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
                case 8: {
                    this.fo = c.Ga();
                    continue;
                }
                case 18: {
                    this.fr = c.FX();
                    continue;
                }
                case 26: {
                    this.ft = c.FX();
                    continue;
                }
                case 34: {
                    if (this.fp == null) {
                        this.fp = new com.google.android.apps.nexuslauncher.search.a.a();
                    }
                    c.FS(this.fp);
                    continue;
                }
                case 40: {
                    this.fu = c.Ga();
                    continue;
                }
                case 50: {
                    final int gj = f.Gj(c, 50);
                    int i;
                    if (this.fq == null) {
                        i = 0;
                    }
                    else {
                        i = this.fq.length;
                    }
                    final b[] fq = new b[gj + i];
                    if (i != 0) {
                        System.arraycopy(this.fq, 0, fq, 0, i);
                    }
                    while (i < fq.length - 1) {
                        c.FS(fq[i] = new b());
                        c.FO();
                        ++i;
                    }
                    c.FS(fq[i] = new b());
                    this.fq = fq;
                    continue;
                }
                case 58: {
                    if (this.fx == null) {
                        this.fx = new com.google.android.apps.nexuslauncher.search.a.a();
                    }
                    c.FS(this.fx);
                    continue;
                }
                case 66: {
                    this.fA = c.FX();
                    continue;
                }
                case 72: {
                    this.fy = c.Ga();
                    continue;
                }
                case 80: {
                    this.fz = c.Ga();
                    continue;
                }
                case 90: {
                    this.fw = c.FX();
                    continue;
                }
                case 98: {
                    if (this.fv == null) {
                        this.fv = new com.google.android.apps.nexuslauncher.search.a.a();
                    }
                    c.FS(this.fv);
                    continue;
                }
                case 104: {
                    this.fC = c.FU();
                    continue;
                }
                case 114: {
                    if (this.fB == null) {
                        this.fB = new com.google.android.apps.nexuslauncher.search.a.a();
                    }
                    c.FS(this.fB);
                    continue;
                }
                case 120: {
                    this.fs = c.FU();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final com.google.protobuf.nano.b b) {
        int i = 0;
        if (this.fo != 0) {
            b.ER(1, this.fo);
        }
        if (!this.fr.equals("")) {
            b.Fp(2, this.fr);
        }
        if (!this.ft.equals("")) {
            b.Fp(3, this.ft);
        }
        if (this.fp != null) {
            b.Fg(4, this.fp);
        }
        if (this.fu != 0) {
            b.ER(5, this.fu);
        }
        if (this.fq != null && this.fq.length > 0) {
            while (i < this.fq.length) {
                final b b2 = this.fq[i];
                if (b2 != null) {
                    b.Fg(6, b2);
                }
                ++i;
            }
        }
        if (this.fx != null) {
            b.Fg(7, this.fx);
        }
        if (!this.fA.equals("")) {
            b.Fp(8, this.fA);
        }
        if (this.fy != 0) {
            b.ER(9, this.fy);
        }
        if (this.fz != 0) {
            b.ER(10, this.fz);
        }
        if (!this.fw.equals("")) {
            b.Fp(11, this.fw);
        }
        if (this.fv != null) {
            b.Fg(12, this.fv);
        }
        if (this.fC) {
            b.Fc(13, this.fC);
        }
        if (this.fB != null) {
            b.Fg(14, this.fB);
        }
        if (this.fs) {
            b.Fc(15, this.fs);
        }
        super.writeTo(b);
    }
}

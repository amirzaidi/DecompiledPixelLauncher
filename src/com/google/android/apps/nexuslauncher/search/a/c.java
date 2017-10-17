// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.search.a;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.a;

public final class c extends a
{
    public boolean eA;
    public int em;
    public com.google.android.apps.nexuslauncher.search.a.a en;
    public b[] eo;
    public String ep;
    public boolean eq;
    public String er;
    public int es;
    public com.google.android.apps.nexuslauncher.search.a.a et;
    public String eu;
    public com.google.android.apps.nexuslauncher.search.a.a ev;
    public int ew;
    public int ex;
    public String ey;
    public com.google.android.apps.nexuslauncher.search.a.a ez;
    
    public c() {
        this.clear();
    }
    
    public c clear() {
        this.em = 0;
        this.eq = false;
        this.ep = "";
        this.er = "";
        this.en = null;
        this.ez = null;
        this.es = 0;
        this.eo = b.emptyArray();
        this.ev = null;
        this.ey = "";
        this.ew = 0;
        this.ex = 0;
        this.eu = "";
        this.et = null;
        this.eA = false;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.em != 0) {
            computeSerializedSize += com.google.protobuf.nano.b.VA(1, this.em);
        }
        if (!this.ep.equals("")) {
            computeSerializedSize += com.google.protobuf.nano.b.VW(2, this.ep);
        }
        if (!this.er.equals("")) {
            computeSerializedSize += com.google.protobuf.nano.b.VW(3, this.er);
        }
        if (this.en != null) {
            computeSerializedSize += com.google.protobuf.nano.b.Vo(4, this.en);
        }
        if (this.es != 0) {
            computeSerializedSize += com.google.protobuf.nano.b.VA(5, this.es);
        }
        if (this.eo != null && this.eo.length > 0) {
            int n = computeSerializedSize;
            for (int i = 0; i < this.eo.length; ++i) {
                final b b = this.eo[i];
                if (b != null) {
                    n += com.google.protobuf.nano.b.Vo(6, b);
                }
            }
            computeSerializedSize = n;
        }
        if (this.ev != null) {
            computeSerializedSize += com.google.protobuf.nano.b.Vo(7, this.ev);
        }
        if (!this.ey.equals("")) {
            computeSerializedSize += com.google.protobuf.nano.b.VW(8, this.ey);
        }
        if (this.ew != 0) {
            computeSerializedSize += com.google.protobuf.nano.b.VA(9, this.ew);
        }
        if (this.ex != 0) {
            computeSerializedSize += com.google.protobuf.nano.b.VA(10, this.ex);
        }
        if (!this.eu.equals("")) {
            computeSerializedSize += com.google.protobuf.nano.b.VW(11, this.eu);
        }
        if (this.et != null) {
            computeSerializedSize += com.google.protobuf.nano.b.Vo(12, this.et);
        }
        if (this.eA) {
            computeSerializedSize += com.google.protobuf.nano.b.VL(13, this.eA);
        }
        if (this.ez != null) {
            computeSerializedSize += com.google.protobuf.nano.b.Vo(14, this.ez);
        }
        if (this.eq) {
            computeSerializedSize += com.google.protobuf.nano.b.VL(15, this.eq);
        }
        return computeSerializedSize;
    }
    
    public c mergeFrom(final com.google.protobuf.nano.c c) {
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
                case 8: {
                    this.em = c.WF();
                    continue;
                }
                case 18: {
                    this.ep = c.WB();
                    continue;
                }
                case 26: {
                    this.er = c.WB();
                    continue;
                }
                case 34: {
                    if (this.en == null) {
                        this.en = new com.google.android.apps.nexuslauncher.search.a.a();
                    }
                    c.Ww(this.en);
                    continue;
                }
                case 40: {
                    this.es = c.WF();
                    continue;
                }
                case 50: {
                    final int wn = f.WN(c, 50);
                    int i;
                    if (this.eo == null) {
                        i = 0;
                    }
                    else {
                        i = this.eo.length;
                    }
                    final b[] eo = new b[wn + i];
                    if (i != 0) {
                        System.arraycopy(this.eo, 0, eo, 0, i);
                    }
                    while (i < eo.length - 1) {
                        c.Ww(eo[i] = new b());
                        c.Ws();
                        ++i;
                    }
                    c.Ww(eo[i] = new b());
                    this.eo = eo;
                    continue;
                }
                case 58: {
                    if (this.ev == null) {
                        this.ev = new com.google.android.apps.nexuslauncher.search.a.a();
                    }
                    c.Ww(this.ev);
                    continue;
                }
                case 66: {
                    this.ey = c.WB();
                    continue;
                }
                case 72: {
                    this.ew = c.WF();
                    continue;
                }
                case 80: {
                    this.ex = c.WF();
                    continue;
                }
                case 90: {
                    this.eu = c.WB();
                    continue;
                }
                case 98: {
                    if (this.et == null) {
                        this.et = new com.google.android.apps.nexuslauncher.search.a.a();
                    }
                    c.Ww(this.et);
                    continue;
                }
                case 104: {
                    this.eA = c.Wy();
                    continue;
                }
                case 114: {
                    if (this.ez == null) {
                        this.ez = new com.google.android.apps.nexuslauncher.search.a.a();
                    }
                    c.Ww(this.ez);
                    continue;
                }
                case 120: {
                    this.eq = c.Wy();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final com.google.protobuf.nano.b b) {
        int i = 0;
        if (this.em != 0) {
            b.Vv(1, this.em);
        }
        if (!this.ep.equals("")) {
            b.VT(2, this.ep);
        }
        if (!this.er.equals("")) {
            b.VT(3, this.er);
        }
        if (this.en != null) {
            b.VK(4, this.en);
        }
        if (this.es != 0) {
            b.Vv(5, this.es);
        }
        if (this.eo != null && this.eo.length > 0) {
            while (i < this.eo.length) {
                final b b2 = this.eo[i];
                if (b2 != null) {
                    b.VK(6, b2);
                }
                ++i;
            }
        }
        if (this.ev != null) {
            b.VK(7, this.ev);
        }
        if (!this.ey.equals("")) {
            b.VT(8, this.ey);
        }
        if (this.ew != 0) {
            b.Vv(9, this.ew);
        }
        if (this.ex != 0) {
            b.Vv(10, this.ex);
        }
        if (!this.eu.equals("")) {
            b.VT(11, this.eu);
        }
        if (this.et != null) {
            b.VK(12, this.et);
        }
        if (this.eA) {
            b.VG(13, this.eA);
        }
        if (this.ez != null) {
            b.VK(14, this.ez);
        }
        if (this.eq) {
            b.VG(15, this.eq);
        }
        super.writeTo(b);
    }
}

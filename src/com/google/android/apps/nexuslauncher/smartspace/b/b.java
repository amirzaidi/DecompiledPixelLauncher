// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace.b;

import com.google.protobuf.nano.d;
import com.google.protobuf.nano.a;

public final class b extends a
{
    private static volatile b[] cI;
    public int cA;
    public c cB;
    public c cC;
    public long cD;
    public long cE;
    public h cF;
    public g cG;
    public c cH;
    public int cJ;
    public long cK;
    public f cx;
    public boolean cy;
    public int cz;
    
    public b() {
        this.clear();
    }
    
    public static b[] emptyArray() {
        Label_0035: {
            if (b.cI != null) {
                break Label_0035;
            }
            synchronized (d.PH) {
                if (b.cI == null) {
                    b.cI = new b[0];
                }
                return b.cI;
            }
        }
    }
    
    public b clear() {
        final long ce = 0L;
        this.cy = false;
        this.cz = 0;
        this.cJ = 0;
        this.cB = null;
        this.cC = null;
        this.cH = null;
        this.cx = null;
        this.cA = 0;
        this.cG = null;
        this.cK = ce;
        this.cD = ce;
        this.cE = ce;
        this.cF = null;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        final long n = 0L;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.cy) {
            computeSerializedSize += com.google.protobuf.nano.b.VL(1, this.cy);
        }
        if (this.cJ != 0) {
            computeSerializedSize += com.google.protobuf.nano.b.VA(2, this.cJ);
        }
        if (this.cB != null) {
            computeSerializedSize += com.google.protobuf.nano.b.Vo(3, this.cB);
        }
        if (this.cC != null) {
            computeSerializedSize += com.google.protobuf.nano.b.Vo(4, this.cC);
        }
        if (this.cH != null) {
            computeSerializedSize += com.google.protobuf.nano.b.Vo(5, this.cH);
        }
        if (this.cx != null) {
            computeSerializedSize += com.google.protobuf.nano.b.Vo(6, this.cx);
        }
        if (this.cA != 0) {
            computeSerializedSize += com.google.protobuf.nano.b.VA(7, this.cA);
        }
        if (this.cG != null) {
            computeSerializedSize += com.google.protobuf.nano.b.Vo(8, this.cG);
        }
        if (this.cK != n) {
            computeSerializedSize += com.google.protobuf.nano.b.Vz(9, this.cK);
        }
        if (this.cD != n) {
            computeSerializedSize += com.google.protobuf.nano.b.Vz(10, this.cD);
        }
        if (this.cE != n) {
            computeSerializedSize += com.google.protobuf.nano.b.Vz(11, this.cE);
        }
        if (this.cF != null) {
            computeSerializedSize += com.google.protobuf.nano.b.Vo(12, this.cF);
        }
        if (this.cz != 0) {
            computeSerializedSize += com.google.protobuf.nano.b.VA(13, this.cz);
        }
        return computeSerializedSize;
    }
    
    public b mergeFrom(final com.google.protobuf.nano.c c) {
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
                case 8: {
                    this.cy = c.Wy();
                    continue;
                }
                case 16: {
                    this.cJ = c.WF();
                    continue;
                }
                case 26: {
                    if (this.cB == null) {
                        this.cB = new c();
                    }
                    c.Ww(this.cB);
                    continue;
                }
                case 34: {
                    if (this.cC == null) {
                        this.cC = new c();
                    }
                    c.Ww(this.cC);
                    continue;
                }
                case 42: {
                    if (this.cH == null) {
                        this.cH = new c();
                    }
                    c.Ww(this.cH);
                    continue;
                }
                case 50: {
                    if (this.cx == null) {
                        this.cx = new f();
                    }
                    c.Ww(this.cx);
                    continue;
                }
                case 56: {
                    final int wf = c.WF();
                    switch (wf) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6: {
                            this.cA = wf;
                            continue;
                        }
                    }
                    break;
                }
                case 66: {
                    if (this.cG == null) {
                        this.cG = new g();
                    }
                    c.Ww(this.cG);
                    continue;
                }
                case 72: {
                    this.cK = c.Wz();
                    continue;
                }
                case 80: {
                    this.cD = c.Wz();
                    continue;
                }
                case 88: {
                    this.cE = c.Wz();
                    continue;
                }
                case 98: {
                    if (this.cF == null) {
                        this.cF = new h();
                    }
                    c.Ww(this.cF);
                    continue;
                }
                case 104: {
                    final int wf2 = c.WF();
                    switch (wf2) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2: {
                            this.cz = wf2;
                            continue;
                        }
                    }
                    break;
                }
            }
        }
    }
    
    public void writeTo(final com.google.protobuf.nano.b b) {
        final long n = 0L;
        if (this.cy) {
            b.VG(1, this.cy);
        }
        if (this.cJ != 0) {
            b.Vv(2, this.cJ);
        }
        if (this.cB != null) {
            b.VK(3, this.cB);
        }
        if (this.cC != null) {
            b.VK(4, this.cC);
        }
        if (this.cH != null) {
            b.VK(5, this.cH);
        }
        if (this.cx != null) {
            b.VK(6, this.cx);
        }
        if (this.cA != 0) {
            b.Vv(7, this.cA);
        }
        if (this.cG != null) {
            b.VK(8, this.cG);
        }
        if (this.cK != n) {
            b.Wc(9, this.cK);
        }
        if (this.cD != n) {
            b.Wc(10, this.cD);
        }
        if (this.cE != n) {
            b.Wc(11, this.cE);
        }
        if (this.cF != null) {
            b.VK(12, this.cF);
        }
        if (this.cz != 0) {
            b.Vv(13, this.cz);
        }
        super.writeTo(b);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.d;

import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.f;
import com.google.protobuf.nano.d;
import com.google.protobuf.nano.a;

public final class i extends a
{
    private static volatile i[] aI;
    public String aC;
    public long aD;
    public String aE;
    public String[] aF;
    public double[] aG;
    public long[] aH;
    
    public i() {
        this.clear();
    }
    
    public static i ag(final byte[] array) {
        return (i)a.mergeFrom(new i(), array);
    }
    
    public static i[] emptyArray() {
        Label_0035: {
            if (i.aI != null) {
                break Label_0035;
            }
            synchronized (d.PH) {
                if (i.aI == null) {
                    i.aI = new i[0];
                }
                return i.aI;
            }
        }
    }
    
    public i clear() {
        this.aE = "";
        this.aC = "";
        this.aD = 0L;
        this.aF = f.PN;
        this.aG = f.PQ;
        this.aH = f.PJ;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        final int n = 1;
        int i = 0;
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.aE.equals("")) {
            computeSerializedSize += b.VW(n, this.aE);
        }
        if (!this.aC.equals("")) {
            computeSerializedSize += b.VW(2, this.aC);
        }
        if (this.aD != 0L) {
            computeSerializedSize += b.Vz(3, this.aD);
        }
        if (this.aF != null && this.aF.length > 0) {
            int j = 0;
            int n2 = 0;
            int n3 = 0;
            while (j < this.aF.length) {
                final String s = this.aF[j];
                if (s != null) {
                    ++n3;
                    n2 += b.Vq(s);
                }
                ++j;
            }
            computeSerializedSize = computeSerializedSize + n2 + n3 * 1;
        }
        if (this.aG != null && this.aG.length > 0) {
            computeSerializedSize = computeSerializedSize + this.aG.length * 8 + this.aG.length * 1;
        }
        if (this.aH != null && this.aH.length > 0) {
            int n4 = 0;
            while (i < this.aH.length) {
                n4 += b.VC(this.aH[i]);
                ++i;
            }
            computeSerializedSize = computeSerializedSize + n4 + this.aH.length * 1;
        }
        return computeSerializedSize;
    }
    
    public i mergeFrom(final c c) {
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
                    this.aE = c.WB();
                    continue;
                }
                case 18: {
                    this.aC = c.WB();
                    continue;
                }
                case 24: {
                    this.aD = c.Wz();
                    continue;
                }
                case 34: {
                    final int wn = f.WN(c, 34);
                    int i;
                    if (this.aF == null) {
                        i = 0;
                    }
                    else {
                        i = this.aF.length;
                    }
                    final String[] af = new String[wn + i];
                    if (i != 0) {
                        System.arraycopy(this.aF, 0, af, 0, i);
                    }
                    while (i < af.length - 1) {
                        af[i] = c.WB();
                        c.Ws();
                        ++i;
                    }
                    af[i] = c.WB();
                    this.aF = af;
                    continue;
                }
                case 41: {
                    final int wn2 = f.WN(c, 41);
                    int j;
                    if (this.aG == null) {
                        j = 0;
                    }
                    else {
                        j = this.aG.length;
                    }
                    final double[] ag = new double[wn2 + j];
                    if (j != 0) {
                        System.arraycopy(this.aG, 0, ag, 0, j);
                    }
                    while (j < ag.length - 1) {
                        ag[j] = c.Wv();
                        c.Ws();
                        ++j;
                    }
                    ag[j] = c.Wv();
                    this.aG = ag;
                    continue;
                }
                case 42: {
                    final int wr = c.Wr();
                    final int wo = c.Wo(wr);
                    final int n = wr / 8;
                    int k;
                    if (this.aG == null) {
                        k = 0;
                    }
                    else {
                        k = this.aG.length;
                    }
                    final double[] ag2 = new double[n + k];
                    if (k != 0) {
                        System.arraycopy(this.aG, 0, ag2, 0, k);
                    }
                    while (k < ag2.length) {
                        ag2[k] = c.Wv();
                        ++k;
                    }
                    this.aG = ag2;
                    c.Wl(wo);
                    continue;
                }
                case 48: {
                    final int wn3 = f.WN(c, 48);
                    int l;
                    if (this.aH == null) {
                        l = 0;
                    }
                    else {
                        l = this.aH.length;
                    }
                    final long[] ah = new long[wn3 + l];
                    if (l != 0) {
                        System.arraycopy(this.aH, 0, ah, 0, l);
                    }
                    while (l < ah.length - 1) {
                        ah[l] = c.Wz();
                        c.Ws();
                        ++l;
                    }
                    ah[l] = c.Wz();
                    this.aH = ah;
                    continue;
                }
                case 50: {
                    final int wo2 = c.Wo(c.Wr());
                    final int wn4 = c.Wn();
                    int n2 = 0;
                    while (c.Wq() > 0) {
                        c.Wz();
                        ++n2;
                    }
                    c.WE(wn4);
                    int length;
                    if (this.aH == null) {
                        length = 0;
                    }
                    else {
                        length = this.aH.length;
                    }
                    final long[] ah2 = new long[n2 + length];
                    if (length != 0) {
                        System.arraycopy(this.aH, 0, ah2, 0, length);
                    }
                    while (length < ah2.length) {
                        ah2[length] = c.Wz();
                        ++length;
                    }
                    this.aH = ah2;
                    c.Wl(wo2);
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        int i = 0;
        if (!this.aE.equals("")) {
            b.VT(1, this.aE);
        }
        if (!this.aC.equals("")) {
            b.VT(2, this.aC);
        }
        if (this.aD != 0L) {
            b.Wc(3, this.aD);
        }
        if (this.aF != null && this.aF.length > 0) {
            for (int j = 0; j < this.aF.length; ++j) {
                final String s = this.aF[j];
                if (s != null) {
                    b.VT(4, s);
                }
            }
        }
        if (this.aG != null && this.aG.length > 0) {
            for (int k = 0; k < this.aG.length; ++k) {
                b.Vk(5, this.aG[k]);
            }
        }
        if (this.aH != null && this.aH.length > 0) {
            while (i < this.aH.length) {
                b.Wc(6, this.aH[i]);
                ++i;
            }
        }
        super.writeTo(b);
    }
}

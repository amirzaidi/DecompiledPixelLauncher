// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.f;

import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.f;
import com.google.protobuf.nano.d;
import com.google.protobuf.nano.a;

public final class i extends a
{
    private static volatile i[] aS;
    public String aM;
    public long aN;
    public double[] aO;
    public String aP;
    public String[] aQ;
    public long[] aR;
    
    public i() {
        this.clear();
    }
    
    public static i aE(final byte[] array) {
        return (i)a.mergeFrom(new i(), array);
    }
    
    public static i[] emptyArray() {
        Label_0035: {
            if (i.aS != null) {
                break Label_0035;
            }
            synchronized (d.Om) {
                if (i.aS == null) {
                    i.aS = new i[0];
                }
                return i.aS;
            }
        }
    }
    
    public i clear() {
        this.aP = "";
        this.aM = "";
        this.aN = 0L;
        this.aQ = f.Os;
        this.aO = f.Ov;
        this.aR = f.Oo;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        final int n = 1;
        int i = 0;
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.aP.equals("")) {
            computeSerializedSize += b.Fs(n, this.aP);
        }
        if (!this.aM.equals("")) {
            computeSerializedSize += b.Fs(2, this.aM);
        }
        if (this.aN != 0L) {
            computeSerializedSize += b.EV(3, this.aN);
        }
        if (this.aQ != null && this.aQ.length > 0) {
            int j = 0;
            int n2 = 0;
            int n3 = 0;
            while (j < this.aQ.length) {
                final String s = this.aQ[j];
                if (s != null) {
                    ++n3;
                    n2 += b.EM(s);
                }
                ++j;
            }
            computeSerializedSize = computeSerializedSize + n2 + n3 * 1;
        }
        if (this.aO != null && this.aO.length > 0) {
            computeSerializedSize = computeSerializedSize + this.aO.length * 8 + this.aO.length * 1;
        }
        if (this.aR != null && this.aR.length > 0) {
            int n4 = 0;
            while (i < this.aR.length) {
                n4 += b.EY(this.aR[i]);
                ++i;
            }
            computeSerializedSize = computeSerializedSize + n4 + this.aR.length * 1;
        }
        return computeSerializedSize;
    }
    
    public i mergeFrom(final c c) {
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
                    this.aP = c.FX();
                    continue;
                }
                case 18: {
                    this.aM = c.FX();
                    continue;
                }
                case 24: {
                    this.aN = c.FV();
                    continue;
                }
                case 34: {
                    final int gj = f.Gj(c, 34);
                    int i;
                    if (this.aQ == null) {
                        i = 0;
                    }
                    else {
                        i = this.aQ.length;
                    }
                    final String[] aq = new String[gj + i];
                    if (i != 0) {
                        System.arraycopy(this.aQ, 0, aq, 0, i);
                    }
                    while (i < aq.length - 1) {
                        aq[i] = c.FX();
                        c.FO();
                        ++i;
                    }
                    aq[i] = c.FX();
                    this.aQ = aq;
                    continue;
                }
                case 41: {
                    final int gj2 = f.Gj(c, 41);
                    int j;
                    if (this.aO == null) {
                        j = 0;
                    }
                    else {
                        j = this.aO.length;
                    }
                    final double[] ao = new double[gj2 + j];
                    if (j != 0) {
                        System.arraycopy(this.aO, 0, ao, 0, j);
                    }
                    while (j < ao.length - 1) {
                        ao[j] = c.FR();
                        c.FO();
                        ++j;
                    }
                    ao[j] = c.FR();
                    this.aO = ao;
                    continue;
                }
                case 42: {
                    final int fn = c.FN();
                    final int fk = c.FK(fn);
                    final int n = fn / 8;
                    int k;
                    if (this.aO == null) {
                        k = 0;
                    }
                    else {
                        k = this.aO.length;
                    }
                    final double[] ao2 = new double[n + k];
                    if (k != 0) {
                        System.arraycopy(this.aO, 0, ao2, 0, k);
                    }
                    while (k < ao2.length) {
                        ao2[k] = c.FR();
                        ++k;
                    }
                    this.aO = ao2;
                    c.FH(fk);
                    continue;
                }
                case 48: {
                    final int gj3 = f.Gj(c, 48);
                    int l;
                    if (this.aR == null) {
                        l = 0;
                    }
                    else {
                        l = this.aR.length;
                    }
                    final long[] ar = new long[gj3 + l];
                    if (l != 0) {
                        System.arraycopy(this.aR, 0, ar, 0, l);
                    }
                    while (l < ar.length - 1) {
                        ar[l] = c.FV();
                        c.FO();
                        ++l;
                    }
                    ar[l] = c.FV();
                    this.aR = ar;
                    continue;
                }
                case 50: {
                    final int fk2 = c.FK(c.FN());
                    final int fj = c.FJ();
                    int n2 = 0;
                    while (c.FM() > 0) {
                        c.FV();
                        ++n2;
                    }
                    c.Gc(fj);
                    int length;
                    if (this.aR == null) {
                        length = 0;
                    }
                    else {
                        length = this.aR.length;
                    }
                    final long[] ar2 = new long[n2 + length];
                    if (length != 0) {
                        System.arraycopy(this.aR, 0, ar2, 0, length);
                    }
                    while (length < ar2.length) {
                        ar2[length] = c.FV();
                        ++length;
                    }
                    this.aR = ar2;
                    c.FH(fk2);
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        int i = 0;
        if (!this.aP.equals("")) {
            b.Fp(1, this.aP);
        }
        if (!this.aM.equals("")) {
            b.Fp(2, this.aM);
        }
        if (this.aN != 0L) {
            b.Fy(3, this.aN);
        }
        if (this.aQ != null && this.aQ.length > 0) {
            for (int j = 0; j < this.aQ.length; ++j) {
                final String s = this.aQ[j];
                if (s != null) {
                    b.Fp(4, s);
                }
            }
        }
        if (this.aO != null && this.aO.length > 0) {
            for (int k = 0; k < this.aO.length; ++k) {
                b.EG(5, this.aO[k]);
            }
        }
        if (this.aR != null && this.aR.length > 0) {
            while (i < this.aR.length) {
                b.Fy(6, this.aR[i]);
                ++i;
            }
        }
        super.writeTo(b);
    }
}

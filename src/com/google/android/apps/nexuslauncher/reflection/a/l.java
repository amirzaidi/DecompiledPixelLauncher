// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.a;

import com.google.protobuf.nano.c;
import java.util.Arrays;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.f;
import com.google.protobuf.nano.d;
import com.google.protobuf.nano.a;

public final class l extends a
{
    private static volatile l[] bu;
    public int bl;
    public int bm;
    public String bn;
    public byte[] bo;
    public m[] bp;
    public n[] bq;
    public n[] br;
    public n[] bs;
    public String bt;
    
    public l() {
        this.clear();
    }
    
    public static l[] emptyArray() {
        Label_0035: {
            if (l.bu != null) {
                break Label_0035;
            }
            synchronized (d.La) {
                if (l.bu == null) {
                    l.bu = new l[0];
                }
                return l.bu;
            }
        }
    }
    
    public l clear() {
        this.bt = "";
        this.bn = "";
        this.bo = f.Li;
        this.bm = 0;
        this.bl = 0;
        this.bp = m.emptyArray();
        this.bq = n.emptyArray();
        this.br = n.emptyArray();
        this.bs = n.emptyArray();
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int i = 0;
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.bt.equals("")) {
            computeSerializedSize += b.Sb(1, this.bt);
        }
        if (!this.bn.equals("")) {
            computeSerializedSize += b.Sb(2, this.bn);
        }
        if (!Arrays.equals(this.bo, f.Li)) {
            computeSerializedSize += b.Rf(3, this.bo);
        }
        if (this.bl != 0) {
            computeSerializedSize += b.RF(4, this.bl);
        }
        if (this.bp != null && this.bp.length > 0) {
            int n = computeSerializedSize;
            for (int j = 0; j < this.bp.length; ++j) {
                final m m = this.bp[j];
                if (m != null) {
                    n += b.Rt(5, m);
                }
            }
            computeSerializedSize = n;
        }
        if (this.bq != null && this.bq.length > 0) {
            int n2 = computeSerializedSize;
            for (int k = 0; k < this.bq.length; ++k) {
                final n n3 = this.bq[k];
                if (n3 != null) {
                    n2 += b.Rt(6, n3);
                }
            }
            computeSerializedSize = n2;
        }
        if (this.br != null && this.br.length > 0) {
            int n4 = computeSerializedSize;
            for (int l = 0; l < this.br.length; ++l) {
                final n n5 = this.br[l];
                if (n5 != null) {
                    n4 += b.Rt(7, n5);
                }
            }
            computeSerializedSize = n4;
        }
        if (this.bs != null && this.bs.length > 0) {
            while (i < this.bs.length) {
                final n n6 = this.bs[i];
                if (n6 != null) {
                    computeSerializedSize += b.Rt(8, n6);
                }
                ++i;
            }
        }
        if (this.bm != 0) {
            computeSerializedSize += b.RF(9, this.bm);
        }
        return computeSerializedSize;
    }
    
    public l mergeFrom(final c c) {
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
                    this.bt = c.SG();
                    continue;
                }
                case 18: {
                    this.bn = c.SG();
                    continue;
                }
                case 26: {
                    this.bo = c.Su();
                    continue;
                }
                case 32: {
                    this.bl = c.SK();
                    continue;
                }
                case 42: {
                    final int ss = f.SS(c, 42);
                    int i;
                    if (this.bp == null) {
                        i = 0;
                    }
                    else {
                        i = this.bp.length;
                    }
                    final m[] bp = new m[ss + i];
                    if (i != 0) {
                        System.arraycopy(this.bp, 0, bp, 0, i);
                    }
                    while (i < bp.length - 1) {
                        c.SB(bp[i] = new m());
                        c.Sx();
                        ++i;
                    }
                    c.SB(bp[i] = new m());
                    this.bp = bp;
                    continue;
                }
                case 50: {
                    final int ss2 = f.SS(c, 50);
                    int j;
                    if (this.bq == null) {
                        j = 0;
                    }
                    else {
                        j = this.bq.length;
                    }
                    final n[] bq = new n[ss2 + j];
                    if (j != 0) {
                        System.arraycopy(this.bq, 0, bq, 0, j);
                    }
                    while (j < bq.length - 1) {
                        c.SB(bq[j] = new n());
                        c.Sx();
                        ++j;
                    }
                    c.SB(bq[j] = new n());
                    this.bq = bq;
                    continue;
                }
                case 58: {
                    final int ss3 = f.SS(c, 58);
                    int k;
                    if (this.br == null) {
                        k = 0;
                    }
                    else {
                        k = this.br.length;
                    }
                    final n[] br = new n[ss3 + k];
                    if (k != 0) {
                        System.arraycopy(this.br, 0, br, 0, k);
                    }
                    while (k < br.length - 1) {
                        c.SB(br[k] = new n());
                        c.Sx();
                        ++k;
                    }
                    c.SB(br[k] = new n());
                    this.br = br;
                    continue;
                }
                case 66: {
                    final int ss4 = f.SS(c, 66);
                    int l;
                    if (this.bs == null) {
                        l = 0;
                    }
                    else {
                        l = this.bs.length;
                    }
                    final n[] bs = new n[ss4 + l];
                    if (l != 0) {
                        System.arraycopy(this.bs, 0, bs, 0, l);
                    }
                    while (l < bs.length - 1) {
                        c.SB(bs[l] = new n());
                        c.Sx();
                        ++l;
                    }
                    c.SB(bs[l] = new n());
                    this.bs = bs;
                    continue;
                }
                case 72: {
                    this.bm = c.SK();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        int i = 0;
        if (!this.bt.equals("")) {
            b.RY(1, this.bt);
        }
        if (!this.bn.equals("")) {
            b.RY(2, this.bn);
        }
        if (!Arrays.equals(this.bo, f.Li)) {
            b.Ro(3, this.bo);
        }
        if (this.bl != 0) {
            b.RA(4, this.bl);
        }
        if (this.bp != null && this.bp.length > 0) {
            for (int j = 0; j < this.bp.length; ++j) {
                final m m = this.bp[j];
                if (m != null) {
                    b.RP(5, m);
                }
            }
        }
        if (this.bq != null && this.bq.length > 0) {
            for (int k = 0; k < this.bq.length; ++k) {
                final n n = this.bq[k];
                if (n != null) {
                    b.RP(6, n);
                }
            }
        }
        if (this.br != null && this.br.length > 0) {
            for (int l = 0; l < this.br.length; ++l) {
                final n n2 = this.br[l];
                if (n2 != null) {
                    b.RP(7, n2);
                }
            }
        }
        if (this.bs != null && this.bs.length > 0) {
            while (i < this.bs.length) {
                final n n3 = this.bs[i];
                if (n3 != null) {
                    b.RP(8, n3);
                }
                ++i;
            }
        }
        if (this.bm != 0) {
            b.RA(9, this.bm);
        }
        super.writeTo(b);
    }
}

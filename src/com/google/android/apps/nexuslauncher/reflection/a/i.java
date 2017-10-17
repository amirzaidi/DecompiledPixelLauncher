// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.a;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class i extends a
{
    public j aZ;
    public h[] ba;
    public h[] bb;
    public h[] bc;
    public h[] bd;
    public int be;
    public h[] bf;
    
    public i() {
        this.clear();
    }
    
    public i clear() {
        this.be = 0;
        this.ba = h.emptyArray();
        this.bb = h.emptyArray();
        this.bd = h.emptyArray();
        this.bf = h.emptyArray();
        this.bc = h.emptyArray();
        this.aZ = null;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int i = 0;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.be != 0) {
            computeSerializedSize += b.RF(1, this.be);
        }
        if (this.ba != null && this.ba.length > 0) {
            int n = computeSerializedSize;
            for (int j = 0; j < this.ba.length; ++j) {
                final h h = this.ba[j];
                if (h != null) {
                    n += b.Rt(2, h);
                }
            }
            computeSerializedSize = n;
        }
        if (this.bb != null && this.bb.length > 0) {
            int n2 = computeSerializedSize;
            for (int k = 0; k < this.bb.length; ++k) {
                final h h2 = this.bb[k];
                if (h2 != null) {
                    n2 += b.Rt(3, h2);
                }
            }
            computeSerializedSize = n2;
        }
        if (this.bd != null && this.bd.length > 0) {
            int n3 = computeSerializedSize;
            for (int l = 0; l < this.bd.length; ++l) {
                final h h3 = this.bd[l];
                if (h3 != null) {
                    n3 += b.Rt(4, h3);
                }
            }
            computeSerializedSize = n3;
        }
        if (this.bf != null && this.bf.length > 0) {
            int n4 = computeSerializedSize;
            for (int n5 = 0; n5 < this.bf.length; ++n5) {
                final h h4 = this.bf[n5];
                if (h4 != null) {
                    n4 += b.Rt(5, h4);
                }
            }
            computeSerializedSize = n4;
        }
        if (this.bc != null && this.bc.length > 0) {
            while (i < this.bc.length) {
                final h h5 = this.bc[i];
                if (h5 != null) {
                    computeSerializedSize += b.Rt(6, h5);
                }
                ++i;
            }
        }
        if (this.aZ != null) {
            computeSerializedSize += b.Rt(7, this.aZ);
        }
        return computeSerializedSize;
    }
    
    public i mergeFrom(final c c) {
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
                case 8: {
                    this.be = c.SK();
                    continue;
                }
                case 18: {
                    final int ss = f.SS(c, 18);
                    int i;
                    if (this.ba == null) {
                        i = 0;
                    }
                    else {
                        i = this.ba.length;
                    }
                    final h[] ba = new h[ss + i];
                    if (i != 0) {
                        System.arraycopy(this.ba, 0, ba, 0, i);
                    }
                    while (i < ba.length - 1) {
                        c.SB(ba[i] = new h());
                        c.Sx();
                        ++i;
                    }
                    c.SB(ba[i] = new h());
                    this.ba = ba;
                    continue;
                }
                case 26: {
                    final int ss2 = f.SS(c, 26);
                    int j;
                    if (this.bb == null) {
                        j = 0;
                    }
                    else {
                        j = this.bb.length;
                    }
                    final h[] bb = new h[ss2 + j];
                    if (j != 0) {
                        System.arraycopy(this.bb, 0, bb, 0, j);
                    }
                    while (j < bb.length - 1) {
                        c.SB(bb[j] = new h());
                        c.Sx();
                        ++j;
                    }
                    c.SB(bb[j] = new h());
                    this.bb = bb;
                    continue;
                }
                case 34: {
                    final int ss3 = f.SS(c, 34);
                    int k;
                    if (this.bd == null) {
                        k = 0;
                    }
                    else {
                        k = this.bd.length;
                    }
                    final h[] bd = new h[ss3 + k];
                    if (k != 0) {
                        System.arraycopy(this.bd, 0, bd, 0, k);
                    }
                    while (k < bd.length - 1) {
                        c.SB(bd[k] = new h());
                        c.Sx();
                        ++k;
                    }
                    c.SB(bd[k] = new h());
                    this.bd = bd;
                    continue;
                }
                case 42: {
                    final int ss4 = f.SS(c, 42);
                    int l;
                    if (this.bf == null) {
                        l = 0;
                    }
                    else {
                        l = this.bf.length;
                    }
                    final h[] bf = new h[ss4 + l];
                    if (l != 0) {
                        System.arraycopy(this.bf, 0, bf, 0, l);
                    }
                    while (l < bf.length - 1) {
                        c.SB(bf[l] = new h());
                        c.Sx();
                        ++l;
                    }
                    c.SB(bf[l] = new h());
                    this.bf = bf;
                    continue;
                }
                case 50: {
                    final int ss5 = f.SS(c, 50);
                    int length;
                    if (this.bc == null) {
                        length = 0;
                    }
                    else {
                        length = this.bc.length;
                    }
                    final h[] bc = new h[ss5 + length];
                    if (length != 0) {
                        System.arraycopy(this.bc, 0, bc, 0, length);
                    }
                    while (length < bc.length - 1) {
                        c.SB(bc[length] = new h());
                        c.Sx();
                        ++length;
                    }
                    c.SB(bc[length] = new h());
                    this.bc = bc;
                    continue;
                }
                case 58: {
                    if (this.aZ == null) {
                        this.aZ = new j();
                    }
                    c.SB(this.aZ);
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        int i = 0;
        if (this.be != 0) {
            b.RA(1, this.be);
        }
        if (this.ba != null && this.ba.length > 0) {
            for (int j = 0; j < this.ba.length; ++j) {
                final h h = this.ba[j];
                if (h != null) {
                    b.RP(2, h);
                }
            }
        }
        if (this.bb != null && this.bb.length > 0) {
            for (int k = 0; k < this.bb.length; ++k) {
                final h h2 = this.bb[k];
                if (h2 != null) {
                    b.RP(3, h2);
                }
            }
        }
        if (this.bd != null && this.bd.length > 0) {
            for (int l = 0; l < this.bd.length; ++l) {
                final h h3 = this.bd[l];
                if (h3 != null) {
                    b.RP(4, h3);
                }
            }
        }
        if (this.bf != null && this.bf.length > 0) {
            for (int n = 0; n < this.bf.length; ++n) {
                final h h4 = this.bf[n];
                if (h4 != null) {
                    b.RP(5, h4);
                }
            }
        }
        if (this.bc != null && this.bc.length > 0) {
            while (i < this.bc.length) {
                final h h5 = this.bc[i];
                if (h5 != null) {
                    b.RP(6, h5);
                }
                ++i;
            }
        }
        if (this.aZ != null) {
            b.RP(7, this.aZ);
        }
        super.writeTo(b);
    }
}

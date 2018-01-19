// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.f;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class m extends a
{
    public n be;
    public l[] bf;
    public l[] bg;
    public l[] bh;
    public l[] bi;
    public l[] bj;
    public int bk;
    
    public m() {
        this.clear();
    }
    
    public m clear() {
        this.bk = 0;
        this.bf = l.emptyArray();
        this.bg = l.emptyArray();
        this.bi = l.emptyArray();
        this.bj = l.emptyArray();
        this.bh = l.emptyArray();
        this.be = null;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int i = 0;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.bk != 0) {
            computeSerializedSize += b.EW(1, this.bk);
        }
        if (this.bf != null && this.bf.length > 0) {
            int n = computeSerializedSize;
            for (int j = 0; j < this.bf.length; ++j) {
                final l l = this.bf[j];
                if (l != null) {
                    n += b.EK(2, l);
                }
            }
            computeSerializedSize = n;
        }
        if (this.bg != null && this.bg.length > 0) {
            int n2 = computeSerializedSize;
            for (int k = 0; k < this.bg.length; ++k) {
                final l m = this.bg[k];
                if (m != null) {
                    n2 += b.EK(3, m);
                }
            }
            computeSerializedSize = n2;
        }
        if (this.bi != null && this.bi.length > 0) {
            int n3 = computeSerializedSize;
            for (int n4 = 0; n4 < this.bi.length; ++n4) {
                final l l2 = this.bi[n4];
                if (l2 != null) {
                    n3 += b.EK(4, l2);
                }
            }
            computeSerializedSize = n3;
        }
        if (this.bj != null && this.bj.length > 0) {
            int n5 = computeSerializedSize;
            for (int n6 = 0; n6 < this.bj.length; ++n6) {
                final l l3 = this.bj[n6];
                if (l3 != null) {
                    n5 += b.EK(5, l3);
                }
            }
            computeSerializedSize = n5;
        }
        if (this.bh != null && this.bh.length > 0) {
            while (i < this.bh.length) {
                final l l4 = this.bh[i];
                if (l4 != null) {
                    computeSerializedSize += b.EK(6, l4);
                }
                ++i;
            }
        }
        if (this.be != null) {
            computeSerializedSize += b.EK(7, this.be);
        }
        return computeSerializedSize;
    }
    
    public m mergeFrom(final c c) {
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
                    this.bk = c.Ga();
                    continue;
                }
                case 18: {
                    final int gj = f.Gj(c, 18);
                    int i;
                    if (this.bf == null) {
                        i = 0;
                    }
                    else {
                        i = this.bf.length;
                    }
                    final l[] bf = new l[gj + i];
                    if (i != 0) {
                        System.arraycopy(this.bf, 0, bf, 0, i);
                    }
                    while (i < bf.length - 1) {
                        c.FS(bf[i] = new l());
                        c.FO();
                        ++i;
                    }
                    c.FS(bf[i] = new l());
                    this.bf = bf;
                    continue;
                }
                case 26: {
                    final int gj2 = f.Gj(c, 26);
                    int j;
                    if (this.bg == null) {
                        j = 0;
                    }
                    else {
                        j = this.bg.length;
                    }
                    final l[] bg = new l[gj2 + j];
                    if (j != 0) {
                        System.arraycopy(this.bg, 0, bg, 0, j);
                    }
                    while (j < bg.length - 1) {
                        c.FS(bg[j] = new l());
                        c.FO();
                        ++j;
                    }
                    c.FS(bg[j] = new l());
                    this.bg = bg;
                    continue;
                }
                case 34: {
                    final int gj3 = f.Gj(c, 34);
                    int k;
                    if (this.bi == null) {
                        k = 0;
                    }
                    else {
                        k = this.bi.length;
                    }
                    final l[] bi = new l[gj3 + k];
                    if (k != 0) {
                        System.arraycopy(this.bi, 0, bi, 0, k);
                    }
                    while (k < bi.length - 1) {
                        c.FS(bi[k] = new l());
                        c.FO();
                        ++k;
                    }
                    c.FS(bi[k] = new l());
                    this.bi = bi;
                    continue;
                }
                case 42: {
                    final int gj4 = f.Gj(c, 42);
                    int l;
                    if (this.bj == null) {
                        l = 0;
                    }
                    else {
                        l = this.bj.length;
                    }
                    final l[] bj = new l[gj4 + l];
                    if (l != 0) {
                        System.arraycopy(this.bj, 0, bj, 0, l);
                    }
                    while (l < bj.length - 1) {
                        c.FS(bj[l] = new l());
                        c.FO();
                        ++l;
                    }
                    c.FS(bj[l] = new l());
                    this.bj = bj;
                    continue;
                }
                case 50: {
                    final int gj5 = f.Gj(c, 50);
                    int length;
                    if (this.bh == null) {
                        length = 0;
                    }
                    else {
                        length = this.bh.length;
                    }
                    final l[] bh = new l[gj5 + length];
                    if (length != 0) {
                        System.arraycopy(this.bh, 0, bh, 0, length);
                    }
                    while (length < bh.length - 1) {
                        c.FS(bh[length] = new l());
                        c.FO();
                        ++length;
                    }
                    c.FS(bh[length] = new l());
                    this.bh = bh;
                    continue;
                }
                case 58: {
                    if (this.be == null) {
                        this.be = new n();
                    }
                    c.FS(this.be);
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        int i = 0;
        if (this.bk != 0) {
            b.ER(1, this.bk);
        }
        if (this.bf != null && this.bf.length > 0) {
            for (int j = 0; j < this.bf.length; ++j) {
                final l l = this.bf[j];
                if (l != null) {
                    b.Fg(2, l);
                }
            }
        }
        if (this.bg != null && this.bg.length > 0) {
            for (int k = 0; k < this.bg.length; ++k) {
                final l m = this.bg[k];
                if (m != null) {
                    b.Fg(3, m);
                }
            }
        }
        if (this.bi != null && this.bi.length > 0) {
            for (int n = 0; n < this.bi.length; ++n) {
                final l l2 = this.bi[n];
                if (l2 != null) {
                    b.Fg(4, l2);
                }
            }
        }
        if (this.bj != null && this.bj.length > 0) {
            for (int n2 = 0; n2 < this.bj.length; ++n2) {
                final l l3 = this.bj[n2];
                if (l3 != null) {
                    b.Fg(5, l3);
                }
            }
        }
        if (this.bh != null && this.bh.length > 0) {
            while (i < this.bh.length) {
                final l l4 = this.bh[i];
                if (l4 != null) {
                    b.Fg(6, l4);
                }
                ++i;
            }
        }
        if (this.be != null) {
            b.Fg(7, this.be);
        }
        super.writeTo(b);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.a;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class k extends a
{
    public long bh;
    public int bi;
    public String bj;
    public l[] bk;
    
    public k() {
        this.clear();
    }
    
    public static k aq(final byte[] array) {
        return (k)a.mergeFrom(new k(), array);
    }
    
    public k clear() {
        this.bh = 0L;
        this.bi = 0;
        this.bj = "";
        this.bk = l.emptyArray();
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.bh != 0L) {
            computeSerializedSize += b.RE(1, this.bh);
        }
        if (this.bi != 0) {
            computeSerializedSize += b.RF(2, this.bi);
        }
        if (!this.bj.equals("")) {
            computeSerializedSize += b.Sb(3, this.bj);
        }
        if (this.bk != null && this.bk.length > 0) {
            int n = computeSerializedSize;
            for (int i = 0; i < this.bk.length; ++i) {
                final l l = this.bk[i];
                if (l != null) {
                    n += b.Rt(4, l);
                }
            }
            computeSerializedSize = n;
        }
        return computeSerializedSize;
    }
    
    public k mergeFrom(final c c) {
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
                    this.bh = c.SE();
                    continue;
                }
                case 16: {
                    this.bi = c.SK();
                    continue;
                }
                case 26: {
                    this.bj = c.SG();
                    continue;
                }
                case 34: {
                    final int ss = f.SS(c, 34);
                    int i;
                    if (this.bk == null) {
                        i = 0;
                    }
                    else {
                        i = this.bk.length;
                    }
                    final l[] bk = new l[ss + i];
                    if (i != 0) {
                        System.arraycopy(this.bk, 0, bk, 0, i);
                    }
                    while (i < bk.length - 1) {
                        c.SB(bk[i] = new l());
                        c.Sx();
                        ++i;
                    }
                    c.SB(bk[i] = new l());
                    this.bk = bk;
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        int i = 0;
        if (this.bh != 0L) {
            b.Sh(1, this.bh);
        }
        if (this.bi != 0) {
            b.RA(2, this.bi);
        }
        if (!this.bj.equals("")) {
            b.RY(3, this.bj);
        }
        if (this.bk != null && this.bk.length > 0) {
            while (i < this.bk.length) {
                final l l = this.bk[i];
                if (l != null) {
                    b.RP(4, l);
                }
                ++i;
            }
        }
        super.writeTo(b);
    }
}

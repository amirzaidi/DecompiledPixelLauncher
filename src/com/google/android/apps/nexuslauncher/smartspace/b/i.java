// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace.b;

import com.google.protobuf.nano.c;
import java.util.Arrays;
import com.google.protobuf.nano.f;
import com.google.protobuf.nano.a;

public final class i extends a
{
    public boolean dc;
    public byte[] dd;
    public b de;
    public long df;
    public int dg;
    public long dh;
    
    public i() {
        this.clear();
    }
    
    public i clear() {
        final long n = 0L;
        this.de = null;
        this.df = n;
        this.dh = n;
        this.dg = 0;
        this.dd = f.PP;
        this.dc = false;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        final long n = 0L;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.de != null) {
            computeSerializedSize += com.google.protobuf.nano.b.Vo(1, this.de);
        }
        if (this.df != n) {
            computeSerializedSize += com.google.protobuf.nano.b.Vz(2, this.df);
        }
        if (this.dh != n) {
            computeSerializedSize += com.google.protobuf.nano.b.Vz(3, this.dh);
        }
        if (this.dg != 0) {
            computeSerializedSize += com.google.protobuf.nano.b.VA(4, this.dg);
        }
        if (!Arrays.equals(this.dd, f.PP)) {
            computeSerializedSize += com.google.protobuf.nano.b.Va(5, this.dd);
        }
        if (this.dc) {
            computeSerializedSize += com.google.protobuf.nano.b.VL(6, this.dc);
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
                    if (this.de == null) {
                        this.de = new b();
                    }
                    c.Ww(this.de);
                    continue;
                }
                case 16: {
                    this.df = c.Wz();
                    continue;
                }
                case 24: {
                    this.dh = c.Wz();
                    continue;
                }
                case 32: {
                    this.dg = c.WF();
                    continue;
                }
                case 42: {
                    this.dd = c.Wp();
                    continue;
                }
                case 48: {
                    this.dc = c.Wy();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final com.google.protobuf.nano.b b) {
        final long n = 0L;
        if (this.de != null) {
            b.VK(1, this.de);
        }
        if (this.df != n) {
            b.Wc(2, this.df);
        }
        if (this.dh != n) {
            b.Wc(3, this.dh);
        }
        if (this.dg != 0) {
            b.Vv(4, this.dg);
        }
        if (!Arrays.equals(this.dd, f.PP)) {
            b.Vj(5, this.dd);
        }
        if (this.dc) {
            b.VG(6, this.dc);
        }
        super.writeTo(b);
    }
}

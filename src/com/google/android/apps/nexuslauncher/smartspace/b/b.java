// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace.b;

import com.google.protobuf.nano.d;
import com.google.protobuf.nano.a;

public final class b extends a
{
    private static volatile b[] do;
    public g dA;
    public long dB;
    public int dp;
    public int dq;
    public int dr;
    public c ds;
    public long dt;
    public long du;
    public h dv;
    public f dw;
    public c dx;
    public c dy;
    public boolean dz;
    
    public b() {
        this.clear();
    }
    
    public static b[] emptyArray() {
        Label_0035: {
            if (b.do != null) {
                break Label_0035;
            }
            synchronized (d.Om) {
                if (b.do == null) {
                    b.do = new b[0];
                }
                return b.do;
            }
        }
    }
    
    public b clear() {
        final long dt = 0L;
        this.dz = false;
        this.dq = 0;
        this.dp = 0;
        this.dy = null;
        this.ds = null;
        this.dx = null;
        this.dw = null;
        this.dr = 0;
        this.dA = null;
        this.dB = dt;
        this.du = dt;
        this.dt = dt;
        this.dv = null;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        final long n = 0L;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.dz) {
            computeSerializedSize += com.google.protobuf.nano.b.Fh(1, this.dz);
        }
        if (this.dp != 0) {
            computeSerializedSize += com.google.protobuf.nano.b.EW(2, this.dp);
        }
        if (this.dy != null) {
            computeSerializedSize += com.google.protobuf.nano.b.EK(3, this.dy);
        }
        if (this.ds != null) {
            computeSerializedSize += com.google.protobuf.nano.b.EK(4, this.ds);
        }
        if (this.dx != null) {
            computeSerializedSize += com.google.protobuf.nano.b.EK(5, this.dx);
        }
        if (this.dw != null) {
            computeSerializedSize += com.google.protobuf.nano.b.EK(6, this.dw);
        }
        if (this.dr != 0) {
            computeSerializedSize += com.google.protobuf.nano.b.EW(7, this.dr);
        }
        if (this.dA != null) {
            computeSerializedSize += com.google.protobuf.nano.b.EK(8, this.dA);
        }
        if (this.dB != n) {
            computeSerializedSize += com.google.protobuf.nano.b.EV(9, this.dB);
        }
        if (this.du != n) {
            computeSerializedSize += com.google.protobuf.nano.b.EV(10, this.du);
        }
        if (this.dt != n) {
            computeSerializedSize += com.google.protobuf.nano.b.EV(11, this.dt);
        }
        if (this.dv != null) {
            computeSerializedSize += com.google.protobuf.nano.b.EK(12, this.dv);
        }
        if (this.dq != 0) {
            computeSerializedSize += com.google.protobuf.nano.b.EW(13, this.dq);
        }
        return computeSerializedSize;
    }
    
    public b mergeFrom(final com.google.protobuf.nano.c c) {
        while (true) {
            final int fo = c.FO();
            switch (fo) {
                default: {
                    if (!com.google.protobuf.nano.f.Gn(c, fo)) {
                        return this;
                    }
                    continue;
                }
                case 0: {
                    return this;
                }
                case 8: {
                    this.dz = c.FU();
                    continue;
                }
                case 16: {
                    this.dp = c.Ga();
                    continue;
                }
                case 26: {
                    if (this.dy == null) {
                        this.dy = new c();
                    }
                    c.FS(this.dy);
                    continue;
                }
                case 34: {
                    if (this.ds == null) {
                        this.ds = new c();
                    }
                    c.FS(this.ds);
                    continue;
                }
                case 42: {
                    if (this.dx == null) {
                        this.dx = new c();
                    }
                    c.FS(this.dx);
                    continue;
                }
                case 50: {
                    if (this.dw == null) {
                        this.dw = new f();
                    }
                    c.FS(this.dw);
                    continue;
                }
                case 56: {
                    final int ga = c.Ga();
                    switch (ga) {
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
                            this.dr = ga;
                            continue;
                        }
                    }
                    break;
                }
                case 66: {
                    if (this.dA == null) {
                        this.dA = new g();
                    }
                    c.FS(this.dA);
                    continue;
                }
                case 72: {
                    this.dB = c.FV();
                    continue;
                }
                case 80: {
                    this.du = c.FV();
                    continue;
                }
                case 88: {
                    this.dt = c.FV();
                    continue;
                }
                case 98: {
                    if (this.dv == null) {
                        this.dv = new h();
                    }
                    c.FS(this.dv);
                    continue;
                }
                case 104: {
                    final int ga2 = c.Ga();
                    switch (ga2) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2: {
                            this.dq = ga2;
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
        if (this.dz) {
            b.Fc(1, this.dz);
        }
        if (this.dp != 0) {
            b.ER(2, this.dp);
        }
        if (this.dy != null) {
            b.Fg(3, this.dy);
        }
        if (this.ds != null) {
            b.Fg(4, this.ds);
        }
        if (this.dx != null) {
            b.Fg(5, this.dx);
        }
        if (this.dw != null) {
            b.Fg(6, this.dw);
        }
        if (this.dr != 0) {
            b.ER(7, this.dr);
        }
        if (this.dA != null) {
            b.Fg(8, this.dA);
        }
        if (this.dB != n) {
            b.Fy(9, this.dB);
        }
        if (this.du != n) {
            b.Fy(10, this.du);
        }
        if (this.dt != n) {
            b.Fy(11, this.dt);
        }
        if (this.dv != null) {
            b.Fg(12, this.dv);
        }
        if (this.dq != 0) {
            b.ER(13, this.dq);
        }
        super.writeTo(b);
    }
}

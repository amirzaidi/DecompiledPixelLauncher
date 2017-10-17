// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.d;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;

public final class a extends com.google.protobuf.nano.a
{
    public long Q;
    public String R;
    public b[] S;
    public int version;
    
    public a() {
        this.clear();
    }
    
    public static a ad(final byte[] array) {
        return (a)com.google.protobuf.nano.a.mergeFrom(new a(), array);
    }
    
    public a clear() {
        this.Q = 0L;
        this.version = 0;
        this.R = "";
        this.S = b.emptyArray();
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.Q != 0L) {
            computeSerializedSize += com.google.protobuf.nano.b.Vz(1, this.Q);
        }
        if (this.version != 0) {
            computeSerializedSize += com.google.protobuf.nano.b.VA(2, this.version);
        }
        if (!this.R.equals("")) {
            computeSerializedSize += com.google.protobuf.nano.b.VW(3, this.R);
        }
        if (this.S != null && this.S.length > 0) {
            int n = computeSerializedSize;
            for (int i = 0; i < this.S.length; ++i) {
                final b b = this.S[i];
                if (b != null) {
                    n += com.google.protobuf.nano.b.Vo(4, b);
                }
            }
            computeSerializedSize = n;
        }
        return computeSerializedSize;
    }
    
    public a mergeFrom(final c c) {
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
                    this.Q = c.Wz();
                    continue;
                }
                case 16: {
                    this.version = c.WF();
                    continue;
                }
                case 26: {
                    this.R = c.WB();
                    continue;
                }
                case 34: {
                    final int wn = f.WN(c, 34);
                    int i;
                    if (this.S == null) {
                        i = 0;
                    }
                    else {
                        i = this.S.length;
                    }
                    final b[] s = new b[wn + i];
                    if (i != 0) {
                        System.arraycopy(this.S, 0, s, 0, i);
                    }
                    while (i < s.length - 1) {
                        c.Ww(s[i] = new b());
                        c.Ws();
                        ++i;
                    }
                    c.Ww(s[i] = new b());
                    this.S = s;
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final com.google.protobuf.nano.b b) {
        int i = 0;
        if (this.Q != 0L) {
            b.Wc(1, this.Q);
        }
        if (this.version != 0) {
            b.Vv(2, this.version);
        }
        if (!this.R.equals("")) {
            b.VT(3, this.R);
        }
        if (this.S != null && this.S.length > 0) {
            while (i < this.S.length) {
                final b b2 = this.S[i];
                if (b2 != null) {
                    b.VK(4, b2);
                }
                ++i;
            }
        }
        super.writeTo(b);
    }
}

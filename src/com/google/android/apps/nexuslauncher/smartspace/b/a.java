// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace.b;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;

public final class a extends com.google.protobuf.nano.a
{
    public b[] cw;
    
    public a() {
        this.clear();
    }
    
    public a clear() {
        this.cw = b.emptyArray();
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int i = 0;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.cw != null && this.cw.length > 0) {
            while (i < this.cw.length) {
                final b b = this.cw[i];
                if (b != null) {
                    computeSerializedSize += com.google.protobuf.nano.b.Vo(1, b);
                }
                ++i;
            }
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
                case 10: {
                    final int wn = f.WN(c, 10);
                    int i;
                    if (this.cw == null) {
                        i = 0;
                    }
                    else {
                        i = this.cw.length;
                    }
                    final b[] cw = new b[wn + i];
                    if (i != 0) {
                        System.arraycopy(this.cw, 0, cw, 0, i);
                    }
                    while (i < cw.length - 1) {
                        c.Ww(cw[i] = new b());
                        c.Ws();
                        ++i;
                    }
                    c.Ww(cw[i] = new b());
                    this.cw = cw;
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final com.google.protobuf.nano.b b) {
        int i = 0;
        if (this.cw != null && this.cw.length > 0) {
            while (i < this.cw.length) {
                final b b2 = this.cw[i];
                if (b2 != null) {
                    b.VK(1, b2);
                }
                ++i;
            }
        }
        super.writeTo(b);
    }
}

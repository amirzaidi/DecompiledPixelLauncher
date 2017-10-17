// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.d;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class g extends a
{
    public String ax;
    public long ay;
    
    public g() {
        this.clear();
    }
    
    public g clear() {
        this.ay = 0L;
        this.ax = "";
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.ay != 0L) {
            computeSerializedSize += b.Vz(1, this.ay);
        }
        if (!this.ax.equals("")) {
            computeSerializedSize += b.VW(2, this.ax);
        }
        return computeSerializedSize;
    }
    
    public g mergeFrom(final c c) {
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
                    this.ay = c.Wz();
                    continue;
                }
                case 18: {
                    this.ax = c.WB();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (this.ay != 0L) {
            b.Wc(1, this.ay);
        }
        if (!this.ax.equals("")) {
            b.VT(2, this.ax);
        }
        super.writeTo(b);
    }
}

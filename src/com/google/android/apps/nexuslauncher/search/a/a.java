// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.search.a;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;

public final class a extends com.google.protobuf.nano.a
{
    public int ee;
    public int ef;
    public int eg;
    public int eh;
    
    public a() {
        this.clear();
    }
    
    public a clear() {
        this.ef = 0;
        this.eg = 0;
        this.eh = 0;
        this.ee = 0;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.ef != 0) {
            computeSerializedSize += b.VA(1, this.ef);
        }
        if (this.eg != 0) {
            computeSerializedSize += b.VA(2, this.eg);
        }
        if (this.eh != 0) {
            computeSerializedSize += b.VA(3, this.eh);
        }
        if (this.ee != 0) {
            computeSerializedSize += b.VA(4, this.ee);
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
                    this.ef = c.WF();
                    continue;
                }
                case 16: {
                    this.eg = c.WF();
                    continue;
                }
                case 24: {
                    this.eh = c.WF();
                    continue;
                }
                case 32: {
                    this.ee = c.WF();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (this.ef != 0) {
            b.Vv(1, this.ef);
        }
        if (this.eg != 0) {
            b.Vv(2, this.eg);
        }
        if (this.eh != 0) {
            b.Vv(3, this.eh);
        }
        if (this.ee != 0) {
            b.Vv(4, this.ee);
        }
        super.writeTo(b);
    }
}

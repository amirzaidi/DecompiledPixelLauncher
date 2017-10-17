// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.d;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class d extends a
{
    private static volatile d[] af;
    public long ag;
    public int key;
    
    public d() {
        this.clear();
    }
    
    public static d[] emptyArray() {
        Label_0035: {
            if (d.af != null) {
                break Label_0035;
            }
            synchronized (com.google.protobuf.nano.d.PH) {
                if (d.af == null) {
                    d.af = new d[0];
                }
                return d.af;
            }
        }
    }
    
    public d clear() {
        this.key = 0;
        this.ag = 0L;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.key != 0) {
            computeSerializedSize += b.VA(1, this.key);
        }
        if (this.ag != 0L) {
            computeSerializedSize += b.Vz(2, this.ag);
        }
        return computeSerializedSize;
    }
    
    public d mergeFrom(final c c) {
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
                    this.key = c.WF();
                    continue;
                }
                case 16: {
                    this.ag = c.Wz();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (this.key != 0) {
            b.Vv(1, this.key);
        }
        if (this.ag != 0L) {
            b.Wc(2, this.ag);
        }
        super.writeTo(b);
    }
}

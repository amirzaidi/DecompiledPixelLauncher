// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.f;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class d extends a
{
    private static volatile d[] ap;
    public long ao;
    public int key;
    
    public d() {
        this.clear();
    }
    
    public static d[] emptyArray() {
        Label_0035: {
            if (d.ap != null) {
                break Label_0035;
            }
            synchronized (com.google.protobuf.nano.d.Om) {
                if (d.ap == null) {
                    d.ap = new d[0];
                }
                return d.ap;
            }
        }
    }
    
    public d clear() {
        this.key = 0;
        this.ao = 0L;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.key != 0) {
            computeSerializedSize += b.EW(1, this.key);
        }
        if (this.ao != 0L) {
            computeSerializedSize += b.EV(2, this.ao);
        }
        return computeSerializedSize;
    }
    
    public d mergeFrom(final c c) {
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
                    this.key = c.Ga();
                    continue;
                }
                case 16: {
                    this.ao = c.FV();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (this.key != 0) {
            b.ER(1, this.key);
        }
        if (this.ao != 0L) {
            b.Fy(2, this.ao);
        }
        super.writeTo(b);
    }
}

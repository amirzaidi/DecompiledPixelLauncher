// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.search.a;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class d extends a
{
    public c fD;
    
    public d() {
        this.clear();
    }
    
    public d clear() {
        this.fD = null;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.fD != null) {
            computeSerializedSize += b.EK(1, this.fD);
        }
        return computeSerializedSize;
    }
    
    public d mergeFrom(final com.google.protobuf.nano.c c) {
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
                case 10: {
                    if (this.fD == null) {
                        this.fD = new c();
                    }
                    c.FS(this.fD);
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (this.fD != null) {
            b.Fg(1, this.fD);
        }
        super.writeTo(b);
    }
}

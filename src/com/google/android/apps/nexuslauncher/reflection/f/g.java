// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.f;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class g extends a
{
    public long aH;
    public String aI;
    
    public g() {
        this.clear();
    }
    
    public g clear() {
        this.aH = 0L;
        this.aI = "";
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.aH != 0L) {
            computeSerializedSize += b.EV(1, this.aH);
        }
        if (!this.aI.equals("")) {
            computeSerializedSize += b.Fs(2, this.aI);
        }
        return computeSerializedSize;
    }
    
    public g mergeFrom(final c c) {
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
                    this.aH = c.FV();
                    continue;
                }
                case 18: {
                    this.aI = c.FX();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (this.aH != 0L) {
            b.Fy(1, this.aH);
        }
        if (!this.aI.equals("")) {
            b.Fp(2, this.aI);
        }
        super.writeTo(b);
    }
}

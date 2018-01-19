// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace.b;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class g extends a
{
    public int dP;
    public String dQ;
    
    public g() {
        this.clear();
    }
    
    public g clear() {
        this.dP = 0;
        this.dQ = "";
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.dP != 0) {
            computeSerializedSize += b.EW(1, this.dP);
        }
        if (!this.dQ.equals("")) {
            computeSerializedSize += b.Fs(2, this.dQ);
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
                    final int ga = c.Ga();
                    switch (ga) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2: {
                            this.dP = ga;
                            continue;
                        }
                    }
                    break;
                }
                case 18: {
                    this.dQ = c.FX();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (this.dP != 0) {
            b.ER(1, this.dP);
        }
        if (!this.dQ.equals("")) {
            b.Fp(2, this.dQ);
        }
        super.writeTo(b);
    }
}

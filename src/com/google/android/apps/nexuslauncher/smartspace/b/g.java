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
    public int cY;
    public String cZ;
    
    public g() {
        this.clear();
    }
    
    public g clear() {
        this.cY = 0;
        this.cZ = "";
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.cY != 0) {
            computeSerializedSize += b.VA(1, this.cY);
        }
        if (!this.cZ.equals("")) {
            computeSerializedSize += b.VW(2, this.cZ);
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
                    final int wf = c.WF();
                    switch (wf) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2: {
                            this.cY = wf;
                            continue;
                        }
                    }
                    break;
                }
                case 18: {
                    this.cZ = c.WB();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (this.cY != 0) {
            b.Vv(1, this.cY);
        }
        if (!this.cZ.equals("")) {
            b.VT(2, this.cZ);
        }
        super.writeTo(b);
    }
}

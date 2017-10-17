// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace.b;

import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class f extends a
{
    public String cV;
    public String cW;
    public String cX;
    
    public f() {
        this.clear();
    }
    
    public f clear() {
        this.cV = "";
        this.cX = "";
        this.cW = "";
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.cV.equals("")) {
            computeSerializedSize += b.VW(1, this.cV);
        }
        if (!this.cX.equals("")) {
            computeSerializedSize += b.VW(2, this.cX);
        }
        if (!this.cW.equals("")) {
            computeSerializedSize += b.VW(3, this.cW);
        }
        return computeSerializedSize;
    }
    
    public f mergeFrom(final c c) {
        while (true) {
            final int ws = c.Ws();
            switch (ws) {
                default: {
                    if (!com.google.protobuf.nano.f.WR(c, ws)) {
                        return this;
                    }
                    continue;
                }
                case 0: {
                    return this;
                }
                case 10: {
                    this.cV = c.WB();
                    continue;
                }
                case 18: {
                    this.cX = c.WB();
                    continue;
                }
                case 26: {
                    this.cW = c.WB();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (!this.cV.equals("")) {
            b.VT(1, this.cV);
        }
        if (!this.cX.equals("")) {
            b.VT(2, this.cX);
        }
        if (!this.cW.equals("")) {
            b.VT(3, this.cW);
        }
        super.writeTo(b);
    }
}

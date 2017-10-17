// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.d;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class k extends a
{
    public String aN;
    public String aO;
    public String aP;
    public String aQ;
    
    public k() {
        this.clear();
    }
    
    public k clear() {
        this.aN = "";
        this.aO = "";
        this.aP = "";
        this.aQ = "";
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.aN.equals("")) {
            computeSerializedSize += b.VW(1, this.aN);
        }
        if (!this.aO.equals("")) {
            computeSerializedSize += b.VW(2, this.aO);
        }
        if (!this.aP.equals("")) {
            computeSerializedSize += b.VW(3, this.aP);
        }
        if (!this.aQ.equals("")) {
            computeSerializedSize += b.VW(4, this.aQ);
        }
        return computeSerializedSize;
    }
    
    public k mergeFrom(final c c) {
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
                    this.aN = c.WB();
                    continue;
                }
                case 18: {
                    this.aO = c.WB();
                    continue;
                }
                case 26: {
                    this.aP = c.WB();
                    continue;
                }
                case 34: {
                    this.aQ = c.WB();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (!this.aN.equals("")) {
            b.VT(1, this.aN);
        }
        if (!this.aO.equals("")) {
            b.VT(2, this.aO);
        }
        if (!this.aP.equals("")) {
            b.VT(3, this.aP);
        }
        if (!this.aQ.equals("")) {
            b.VT(4, this.aQ);
        }
        super.writeTo(b);
    }
}

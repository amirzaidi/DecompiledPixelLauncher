// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace.b;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class c extends a
{
    public d cL;
    public d cM;
    
    public c() {
        this.clear();
    }
    
    public c clear() {
        this.cL = null;
        this.cM = null;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.cL != null) {
            computeSerializedSize += b.Vo(1, this.cL);
        }
        if (this.cM != null) {
            computeSerializedSize += b.Vo(2, this.cM);
        }
        return computeSerializedSize;
    }
    
    public c mergeFrom(final com.google.protobuf.nano.c c) {
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
                    if (this.cL == null) {
                        this.cL = new d();
                    }
                    c.Ww(this.cL);
                    continue;
                }
                case 18: {
                    if (this.cM == null) {
                        this.cM = new d();
                    }
                    c.Ww(this.cM);
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (this.cL != null) {
            b.VK(1, this.cL);
        }
        if (this.cM != null) {
            b.VK(2, this.cM);
        }
        super.writeTo(b);
    }
}

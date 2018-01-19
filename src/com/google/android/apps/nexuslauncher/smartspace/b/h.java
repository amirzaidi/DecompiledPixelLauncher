// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace.b;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class h extends a
{
    public long dR;
    public int dS;
    
    public h() {
        this.clear();
    }
    
    public h clear() {
        this.dR = 0L;
        this.dS = 0;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.dR != 0L) {
            computeSerializedSize += b.EV(1, this.dR);
        }
        if (this.dS != 0) {
            computeSerializedSize += b.EW(2, this.dS);
        }
        return computeSerializedSize;
    }
    
    public h mergeFrom(final c c) {
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
                    this.dR = c.FV();
                    continue;
                }
                case 16: {
                    this.dS = c.Ga();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (this.dR != 0L) {
            b.Fy(1, this.dR);
        }
        if (this.dS != 0) {
            b.ER(2, this.dS);
        }
        super.writeTo(b);
    }
}

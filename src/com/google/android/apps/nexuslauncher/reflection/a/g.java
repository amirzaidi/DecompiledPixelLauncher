// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.a;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class g extends a
{
    public String aS;
    public String aT;
    public String aU;
    public String aV;
    
    public g() {
        this.clear();
    }
    
    public g clear() {
        this.aS = "";
        this.aT = "";
        this.aU = "";
        this.aV = "";
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.aS.equals("")) {
            computeSerializedSize += b.Sb(1, this.aS);
        }
        if (!this.aT.equals("")) {
            computeSerializedSize += b.Sb(2, this.aT);
        }
        if (!this.aU.equals("")) {
            computeSerializedSize += b.Sb(3, this.aU);
        }
        if (!this.aV.equals("")) {
            computeSerializedSize += b.Sb(4, this.aV);
        }
        return computeSerializedSize;
    }
    
    public g mergeFrom(final c c) {
        while (true) {
            final int sx = c.Sx();
            switch (sx) {
                default: {
                    if (!f.SW(c, sx)) {
                        return this;
                    }
                    continue;
                }
                case 0: {
                    return this;
                }
                case 10: {
                    this.aS = c.SG();
                    continue;
                }
                case 18: {
                    this.aT = c.SG();
                    continue;
                }
                case 26: {
                    this.aU = c.SG();
                    continue;
                }
                case 34: {
                    this.aV = c.SG();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (!this.aS.equals("")) {
            b.RY(1, this.aS);
        }
        if (!this.aT.equals("")) {
            b.RY(2, this.aT);
        }
        if (!this.aU.equals("")) {
            b.RY(3, this.aU);
        }
        if (!this.aV.equals("")) {
            b.RY(4, this.aV);
        }
        super.writeTo(b);
    }
}

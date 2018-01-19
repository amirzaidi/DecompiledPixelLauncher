// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace.b;

import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class f extends a
{
    public String dM;
    public String dN;
    public String dO;
    
    public f() {
        this.clear();
    }
    
    public f clear() {
        this.dN = "";
        this.dM = "";
        this.dO = "";
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.dN.equals("")) {
            computeSerializedSize += b.Fs(1, this.dN);
        }
        if (!this.dM.equals("")) {
            computeSerializedSize += b.Fs(2, this.dM);
        }
        if (!this.dO.equals("")) {
            computeSerializedSize += b.Fs(3, this.dO);
        }
        return computeSerializedSize;
    }
    
    public f mergeFrom(final c c) {
        while (true) {
            final int fo = c.FO();
            switch (fo) {
                default: {
                    if (!com.google.protobuf.nano.f.Gn(c, fo)) {
                        return this;
                    }
                    continue;
                }
                case 0: {
                    return this;
                }
                case 10: {
                    this.dN = c.FX();
                    continue;
                }
                case 18: {
                    this.dM = c.FX();
                    continue;
                }
                case 26: {
                    this.dO = c.FX();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (!this.dN.equals("")) {
            b.Fp(1, this.dN);
        }
        if (!this.dM.equals("")) {
            b.Fp(2, this.dM);
        }
        if (!this.dO.equals("")) {
            b.Fp(3, this.dO);
        }
        super.writeTo(b);
    }
}

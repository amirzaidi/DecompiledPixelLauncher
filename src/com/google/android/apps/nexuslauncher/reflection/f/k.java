// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.f;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class k extends a
{
    public String aX;
    public String aY;
    public String aZ;
    public String ba;
    
    public k() {
        this.clear();
    }
    
    public k clear() {
        this.aX = "";
        this.aY = "";
        this.aZ = "";
        this.ba = "";
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.aX.equals("")) {
            computeSerializedSize += b.Fs(1, this.aX);
        }
        if (!this.aY.equals("")) {
            computeSerializedSize += b.Fs(2, this.aY);
        }
        if (!this.aZ.equals("")) {
            computeSerializedSize += b.Fs(3, this.aZ);
        }
        if (!this.ba.equals("")) {
            computeSerializedSize += b.Fs(4, this.ba);
        }
        return computeSerializedSize;
    }
    
    public k mergeFrom(final c c) {
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
                    this.aX = c.FX();
                    continue;
                }
                case 18: {
                    this.aY = c.FX();
                    continue;
                }
                case 26: {
                    this.aZ = c.FX();
                    continue;
                }
                case 34: {
                    this.ba = c.FX();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (!this.aX.equals("")) {
            b.Fp(1, this.aX);
        }
        if (!this.aY.equals("")) {
            b.Fp(2, this.aY);
        }
        if (!this.aZ.equals("")) {
            b.Fp(3, this.aZ);
        }
        if (!this.ba.equals("")) {
            b.Fp(4, this.ba);
        }
        super.writeTo(b);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.a;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class d extends a
{
    public double aE;
    public double aF;
    public long aG;
    
    public d() {
        this.clear();
    }
    
    public d clear() {
        final double n = 0.0;
        this.aG = 0L;
        this.aE = n;
        this.aF = n;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        final double n = 0.0;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.aG != 0L) {
            computeSerializedSize += b.RE(1, this.aG);
        }
        if (Double.doubleToLongBits(this.aE) != Double.doubleToLongBits(n)) {
            computeSerializedSize += b.RJ(2, this.aE);
        }
        if (Double.doubleToLongBits(this.aF) != Double.doubleToLongBits(n)) {
            computeSerializedSize += b.RJ(3, this.aF);
        }
        return computeSerializedSize;
    }
    
    public d mergeFrom(final c c) {
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
                case 8: {
                    this.aG = c.SE();
                    continue;
                }
                case 17: {
                    this.aE = c.SA();
                    continue;
                }
                case 25: {
                    this.aF = c.SA();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        final double n = 0.0;
        if (this.aG != 0L) {
            b.Sh(1, this.aG);
        }
        if (Double.doubleToLongBits(this.aE) != Double.doubleToLongBits(n)) {
            b.Rp(2, this.aE);
        }
        if (Double.doubleToLongBits(this.aF) != Double.doubleToLongBits(n)) {
            b.Rp(3, this.aF);
        }
        super.writeTo(b);
    }
}

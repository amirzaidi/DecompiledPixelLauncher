// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.f;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class h extends a
{
    public long aJ;
    public double aK;
    public double aL;
    
    public h() {
        this.clear();
    }
    
    public h clear() {
        final double n = 0.0;
        this.aJ = 0L;
        this.aK = n;
        this.aL = n;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        final double n = 0.0;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.aJ != 0L) {
            computeSerializedSize += b.EV(1, this.aJ);
        }
        if (Double.doubleToLongBits(this.aK) != Double.doubleToLongBits(n)) {
            computeSerializedSize += b.Fa(2, this.aK);
        }
        if (Double.doubleToLongBits(this.aL) != Double.doubleToLongBits(n)) {
            computeSerializedSize += b.Fa(3, this.aL);
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
                    this.aJ = c.FV();
                    continue;
                }
                case 17: {
                    this.aK = c.FR();
                    continue;
                }
                case 25: {
                    this.aL = c.FR();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        final double n = 0.0;
        if (this.aJ != 0L) {
            b.Fy(1, this.aJ);
        }
        if (Double.doubleToLongBits(this.aK) != Double.doubleToLongBits(n)) {
            b.EG(2, this.aK);
        }
        if (Double.doubleToLongBits(this.aL) != Double.doubleToLongBits(n)) {
            b.EG(3, this.aL);
        }
        super.writeTo(b);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.d;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class h extends a
{
    public double aA;
    public long aB;
    public double az;
    
    public h() {
        this.clear();
    }
    
    public h clear() {
        final double n = 0.0;
        this.aB = 0L;
        this.az = n;
        this.aA = n;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        final double n = 0.0;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.aB != 0L) {
            computeSerializedSize += b.Vz(1, this.aB);
        }
        if (Double.doubleToLongBits(this.az) != Double.doubleToLongBits(n)) {
            computeSerializedSize += b.VE(2, this.az);
        }
        if (Double.doubleToLongBits(this.aA) != Double.doubleToLongBits(n)) {
            computeSerializedSize += b.VE(3, this.aA);
        }
        return computeSerializedSize;
    }
    
    public h mergeFrom(final c c) {
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
                    this.aB = c.Wz();
                    continue;
                }
                case 17: {
                    this.az = c.Wv();
                    continue;
                }
                case 25: {
                    this.aA = c.Wv();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        final double n = 0.0;
        if (this.aB != 0L) {
            b.Wc(1, this.aB);
        }
        if (Double.doubleToLongBits(this.az) != Double.doubleToLongBits(n)) {
            b.Vk(2, this.az);
        }
        if (Double.doubleToLongBits(this.aA) != Double.doubleToLongBits(n)) {
            b.Vk(3, this.aA);
        }
        super.writeTo(b);
    }
}

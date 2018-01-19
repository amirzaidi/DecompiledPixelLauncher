// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace.b;

import com.google.protobuf.nano.c;
import java.util.Arrays;
import com.google.protobuf.nano.f;
import com.google.protobuf.nano.a;

public final class i extends a
{
    public b dT;
    public long dU;
    public int dV;
    public byte[] dW;
    public boolean dX;
    public long dY;
    
    public i() {
        this.clear();
    }
    
    public i clear() {
        final long n = 0L;
        this.dT = null;
        this.dY = n;
        this.dU = n;
        this.dV = 0;
        this.dW = f.Ou;
        this.dX = false;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        final long n = 0L;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.dT != null) {
            computeSerializedSize += com.google.protobuf.nano.b.EK(1, this.dT);
        }
        if (this.dY != n) {
            computeSerializedSize += com.google.protobuf.nano.b.EV(2, this.dY);
        }
        if (this.dU != n) {
            computeSerializedSize += com.google.protobuf.nano.b.EV(3, this.dU);
        }
        if (this.dV != 0) {
            computeSerializedSize += com.google.protobuf.nano.b.EW(4, this.dV);
        }
        if (!Arrays.equals(this.dW, f.Ou)) {
            computeSerializedSize += com.google.protobuf.nano.b.Ew(5, this.dW);
        }
        if (this.dX) {
            computeSerializedSize += com.google.protobuf.nano.b.Fh(6, this.dX);
        }
        return computeSerializedSize;
    }
    
    public i mergeFrom(final c c) {
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
                    if (this.dT == null) {
                        this.dT = new b();
                    }
                    c.FS(this.dT);
                    continue;
                }
                case 16: {
                    this.dY = c.FV();
                    continue;
                }
                case 24: {
                    this.dU = c.FV();
                    continue;
                }
                case 32: {
                    this.dV = c.Ga();
                    continue;
                }
                case 42: {
                    this.dW = c.FL();
                    continue;
                }
                case 48: {
                    this.dX = c.FU();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final com.google.protobuf.nano.b b) {
        final long n = 0L;
        if (this.dT != null) {
            b.Fg(1, this.dT);
        }
        if (this.dY != n) {
            b.Fy(2, this.dY);
        }
        if (this.dU != n) {
            b.Fy(3, this.dU);
        }
        if (this.dV != 0) {
            b.ER(4, this.dV);
        }
        if (!Arrays.equals(this.dW, f.Ou)) {
            b.EF(5, this.dW);
        }
        if (this.dX) {
            b.Fc(6, this.dX);
        }
        super.writeTo(b);
    }
}

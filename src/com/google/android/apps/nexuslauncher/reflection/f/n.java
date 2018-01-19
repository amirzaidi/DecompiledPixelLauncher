// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.f;

import com.google.protobuf.nano.b;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.f;
import com.google.protobuf.nano.a;

public final class n extends a
{
    public double[] bl;
    
    public n() {
        this.clear();
    }
    
    public n clear() {
        this.bl = f.Ov;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.bl != null && this.bl.length > 0) {
            computeSerializedSize = computeSerializedSize + this.bl.length * 8 + this.bl.length * 1;
        }
        return computeSerializedSize;
    }
    
    public n mergeFrom(final c c) {
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
                case 9: {
                    final int gj = f.Gj(c, 9);
                    int i;
                    if (this.bl == null) {
                        i = 0;
                    }
                    else {
                        i = this.bl.length;
                    }
                    final double[] bl = new double[gj + i];
                    if (i != 0) {
                        System.arraycopy(this.bl, 0, bl, 0, i);
                    }
                    while (i < bl.length - 1) {
                        bl[i] = c.FR();
                        c.FO();
                        ++i;
                    }
                    bl[i] = c.FR();
                    this.bl = bl;
                    continue;
                }
                case 10: {
                    final int fn = c.FN();
                    final int fk = c.FK(fn);
                    final int n = fn / 8;
                    int j;
                    if (this.bl == null) {
                        j = 0;
                    }
                    else {
                        j = this.bl.length;
                    }
                    final double[] bl2 = new double[n + j];
                    if (j != 0) {
                        System.arraycopy(this.bl, 0, bl2, 0, j);
                    }
                    while (j < bl2.length) {
                        bl2[j] = c.FR();
                        ++j;
                    }
                    this.bl = bl2;
                    c.FH(fk);
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        int i = 0;
        if (this.bl != null && this.bl.length > 0) {
            while (i < this.bl.length) {
                b.EG(1, this.bl[i]);
                ++i;
            }
        }
        super.writeTo(b);
    }
}

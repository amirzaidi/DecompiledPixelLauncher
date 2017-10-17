// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.a;

import com.google.protobuf.nano.b;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.f;
import com.google.protobuf.nano.a;

public final class j extends a
{
    public double[] bg;
    
    public j() {
        this.clear();
    }
    
    public j clear() {
        this.bg = f.Lj;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.bg != null && this.bg.length > 0) {
            computeSerializedSize = computeSerializedSize + this.bg.length * 8 + this.bg.length * 1;
        }
        return computeSerializedSize;
    }
    
    public j mergeFrom(final c c) {
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
                case 9: {
                    final int ss = f.SS(c, 9);
                    int i;
                    if (this.bg == null) {
                        i = 0;
                    }
                    else {
                        i = this.bg.length;
                    }
                    final double[] bg = new double[ss + i];
                    if (i != 0) {
                        System.arraycopy(this.bg, 0, bg, 0, i);
                    }
                    while (i < bg.length - 1) {
                        bg[i] = c.SA();
                        c.Sx();
                        ++i;
                    }
                    bg[i] = c.SA();
                    this.bg = bg;
                    continue;
                }
                case 10: {
                    final int sw = c.Sw();
                    final int st = c.St(sw);
                    final int n = sw / 8;
                    int j;
                    if (this.bg == null) {
                        j = 0;
                    }
                    else {
                        j = this.bg.length;
                    }
                    final double[] bg2 = new double[n + j];
                    if (j != 0) {
                        System.arraycopy(this.bg, 0, bg2, 0, j);
                    }
                    while (j < bg2.length) {
                        bg2[j] = c.SA();
                        ++j;
                    }
                    this.bg = bg2;
                    c.Sq(st);
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        int i = 0;
        if (this.bg != null && this.bg.length > 0) {
            while (i < this.bg.length) {
                b.Rp(1, this.bg[i]);
                ++i;
            }
        }
        super.writeTo(b);
    }
}

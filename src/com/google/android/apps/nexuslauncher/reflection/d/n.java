// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.d;

import com.google.protobuf.nano.b;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.f;
import com.google.protobuf.nano.a;

public final class n extends a
{
    public double[] bb;
    
    public n() {
        this.clear();
    }
    
    public n clear() {
        this.bb = f.PQ;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.bb != null && this.bb.length > 0) {
            computeSerializedSize = computeSerializedSize + this.bb.length * 8 + this.bb.length * 1;
        }
        return computeSerializedSize;
    }
    
    public n mergeFrom(final c c) {
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
                case 9: {
                    final int wn = f.WN(c, 9);
                    int i;
                    if (this.bb == null) {
                        i = 0;
                    }
                    else {
                        i = this.bb.length;
                    }
                    final double[] bb = new double[wn + i];
                    if (i != 0) {
                        System.arraycopy(this.bb, 0, bb, 0, i);
                    }
                    while (i < bb.length - 1) {
                        bb[i] = c.Wv();
                        c.Ws();
                        ++i;
                    }
                    bb[i] = c.Wv();
                    this.bb = bb;
                    continue;
                }
                case 10: {
                    final int wr = c.Wr();
                    final int wo = c.Wo(wr);
                    final int n = wr / 8;
                    int j;
                    if (this.bb == null) {
                        j = 0;
                    }
                    else {
                        j = this.bb.length;
                    }
                    final double[] bb2 = new double[n + j];
                    if (j != 0) {
                        System.arraycopy(this.bb, 0, bb2, 0, j);
                    }
                    while (j < bb2.length) {
                        bb2[j] = c.Wv();
                        ++j;
                    }
                    this.bb = bb2;
                    c.Wl(wo);
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        int i = 0;
        if (this.bb != null && this.bb.length > 0) {
            while (i < this.bb.length) {
                b.Vk(1, this.bb[i]);
                ++i;
            }
        }
        super.writeTo(b);
    }
}

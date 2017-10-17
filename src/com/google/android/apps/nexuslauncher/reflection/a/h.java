// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.a;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.d;
import com.google.protobuf.nano.a;

public final class h extends a
{
    private static volatile h[] aY;
    public String aW;
    public float aX;
    
    public h() {
        this.clear();
    }
    
    public static h[] emptyArray() {
        Label_0035: {
            if (h.aY != null) {
                break Label_0035;
            }
            synchronized (d.La) {
                if (h.aY == null) {
                    h.aY = new h[0];
                }
                return h.aY;
            }
        }
    }
    
    public h clear() {
        this.aW = "";
        this.aX = 0.0f;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.aW.equals("")) {
            computeSerializedSize += b.Sb(1, this.aW);
        }
        if (Float.floatToIntBits(this.aX) != Float.floatToIntBits(0.0f)) {
            computeSerializedSize += b.RD(2, this.aX);
        }
        return computeSerializedSize;
    }
    
    public h mergeFrom(final c c) {
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
                    this.aW = c.SG();
                    continue;
                }
                case 21: {
                    this.aX = c.SM();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (!this.aW.equals("")) {
            b.RY(1, this.aW);
        }
        if (Float.floatToIntBits(this.aX) != Float.floatToIntBits(0.0f)) {
            b.RX(2, this.aX);
        }
        super.writeTo(b);
    }
}

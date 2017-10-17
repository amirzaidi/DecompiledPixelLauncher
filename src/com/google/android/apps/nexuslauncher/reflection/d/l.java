// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.d;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.d;
import com.google.protobuf.nano.a;

public final class l extends a
{
    private static volatile l[] aS;
    public String aR;
    public float aT;
    
    public l() {
        this.clear();
    }
    
    public static l[] emptyArray() {
        Label_0035: {
            if (l.aS != null) {
                break Label_0035;
            }
            synchronized (d.PH) {
                if (l.aS == null) {
                    l.aS = new l[0];
                }
                return l.aS;
            }
        }
    }
    
    public l clear() {
        this.aR = "";
        this.aT = 0.0f;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.aR.equals("")) {
            computeSerializedSize += b.VW(1, this.aR);
        }
        if (Float.floatToIntBits(this.aT) != Float.floatToIntBits(0.0f)) {
            computeSerializedSize += b.Vy(2, this.aT);
        }
        return computeSerializedSize;
    }
    
    public l mergeFrom(final c c) {
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
                case 10: {
                    this.aR = c.WB();
                    continue;
                }
                case 21: {
                    this.aT = c.WH();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (!this.aR.equals("")) {
            b.VT(1, this.aR);
        }
        if (Float.floatToIntBits(this.aT) != Float.floatToIntBits(0.0f)) {
            b.VS(2, this.aT);
        }
        super.writeTo(b);
    }
}

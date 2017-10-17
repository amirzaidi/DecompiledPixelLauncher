// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.a;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class c extends a
{
    public String aC;
    public long aD;
    
    public c() {
        this.clear();
    }
    
    public c clear() {
        this.aD = 0L;
        this.aC = "";
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.aD != 0L) {
            computeSerializedSize += b.RE(1, this.aD);
        }
        if (!this.aC.equals("")) {
            computeSerializedSize += b.Sb(2, this.aC);
        }
        return computeSerializedSize;
    }
    
    public c mergeFrom(final com.google.protobuf.nano.c c) {
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
                    this.aD = c.SE();
                    continue;
                }
                case 18: {
                    this.aC = c.SG();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (this.aD != 0L) {
            b.Sh(1, this.aD);
        }
        if (!this.aC.equals("")) {
            b.RY(2, this.aC);
        }
        super.writeTo(b);
    }
}

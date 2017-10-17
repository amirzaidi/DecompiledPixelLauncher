// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.a;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.d;
import com.google.protobuf.nano.a;

public final class m extends a
{
    private static volatile m[] bw;
    public int bv;
    public String name;
    
    public m() {
        this.clear();
    }
    
    public static m[] emptyArray() {
        Label_0035: {
            if (m.bw != null) {
                break Label_0035;
            }
            synchronized (d.La) {
                if (m.bw == null) {
                    m.bw = new m[0];
                }
                return m.bw;
            }
        }
    }
    
    public m clear() {
        this.bv = 0;
        this.name = "";
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.bv != 0) {
            computeSerializedSize += b.RF(1, this.bv);
        }
        if (!this.name.equals("")) {
            computeSerializedSize += b.Sb(2, this.name);
        }
        return computeSerializedSize;
    }
    
    public m mergeFrom(final c c) {
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
                    this.bv = c.SK();
                    continue;
                }
                case 18: {
                    this.name = c.SG();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (this.bv != 0) {
            b.RA(1, this.bv);
        }
        if (!this.name.equals("")) {
            b.RY(2, this.name);
        }
        super.writeTo(b);
    }
}

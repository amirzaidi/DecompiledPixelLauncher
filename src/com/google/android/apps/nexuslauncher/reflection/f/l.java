// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.f;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.d;
import com.google.protobuf.nano.a;

public final class l extends a
{
    private static volatile l[] bd;
    public String bb;
    public float bc;
    
    public l() {
        this.clear();
    }
    
    public static l[] emptyArray() {
        Label_0035: {
            if (l.bd != null) {
                break Label_0035;
            }
            synchronized (d.Om) {
                if (l.bd == null) {
                    l.bd = new l[0];
                }
                return l.bd;
            }
        }
    }
    
    public l clear() {
        this.bb = "";
        this.bc = 0.0f;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.bb.equals("")) {
            computeSerializedSize += b.Fs(1, this.bb);
        }
        if (Float.floatToIntBits(this.bc) != Float.floatToIntBits(0.0f)) {
            computeSerializedSize += b.EU(2, this.bc);
        }
        return computeSerializedSize;
    }
    
    public l mergeFrom(final c c) {
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
                    this.bb = c.FX();
                    continue;
                }
                case 21: {
                    this.bc = c.Gd();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (!this.bb.equals("")) {
            b.Fp(1, this.bb);
        }
        if (Float.floatToIntBits(this.bc) != Float.floatToIntBits(0.0f)) {
            b.Fo(2, this.bc);
        }
        super.writeTo(b);
    }
}

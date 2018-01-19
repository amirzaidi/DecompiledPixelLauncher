// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.f;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.d;
import com.google.protobuf.nano.a;

public final class c extends a
{
    private static volatile c[] an;
    public int id;
    public String name;
    
    public c() {
        this.clear();
    }
    
    public static c[] emptyArray() {
        Label_0035: {
            if (c.an != null) {
                break Label_0035;
            }
            synchronized (d.Om) {
                if (c.an == null) {
                    c.an = new c[0];
                }
                return c.an;
            }
        }
    }
    
    public c clear() {
        this.id = 0;
        this.name = "";
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.id != 0) {
            computeSerializedSize += b.EW(1, this.id);
        }
        if (!this.name.equals("")) {
            computeSerializedSize += b.Fs(2, this.name);
        }
        return computeSerializedSize;
    }
    
    public c mergeFrom(final com.google.protobuf.nano.c c) {
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
                case 8: {
                    this.id = c.Ga();
                    continue;
                }
                case 18: {
                    this.name = c.FX();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (this.id != 0) {
            b.ER(1, this.id);
        }
        if (!this.name.equals("")) {
            b.Fp(2, this.name);
        }
        super.writeTo(b);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.d;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.d;
import com.google.protobuf.nano.a;

public final class c extends a
{
    private static volatile c[] ad;
    public int ae;
    public String name;
    
    public c() {
        this.clear();
    }
    
    public static c[] emptyArray() {
        Label_0035: {
            if (c.ad != null) {
                break Label_0035;
            }
            synchronized (d.PH) {
                if (c.ad == null) {
                    c.ad = new c[0];
                }
                return c.ad;
            }
        }
    }
    
    public c clear() {
        this.ae = 0;
        this.name = "";
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.ae != 0) {
            computeSerializedSize += b.VA(1, this.ae);
        }
        if (!this.name.equals("")) {
            computeSerializedSize += b.VW(2, this.name);
        }
        return computeSerializedSize;
    }
    
    public c mergeFrom(final com.google.protobuf.nano.c c) {
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
                case 8: {
                    this.ae = c.WF();
                    continue;
                }
                case 18: {
                    this.name = c.WB();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (this.ae != 0) {
            b.Vv(1, this.ae);
        }
        if (!this.name.equals("")) {
            b.VT(2, this.name);
        }
        super.writeTo(b);
    }
}

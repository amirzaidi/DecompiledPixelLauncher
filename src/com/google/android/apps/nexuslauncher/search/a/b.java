// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.search.a;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.d;
import com.google.protobuf.nano.a;

public final class b extends a
{
    private static volatile b[] fk;
    public String fl;
    public String fm;
    public String fn;
    public String label;
    
    public b() {
        this.clear();
    }
    
    public static b[] emptyArray() {
        Label_0035: {
            if (b.fk != null) {
                break Label_0035;
            }
            synchronized (d.Om) {
                if (b.fk == null) {
                    b.fk = new b[0];
                }
                return b.fk;
            }
        }
    }
    
    public b clear() {
        this.label = "";
        this.fm = "";
        this.fl = "";
        this.fn = "";
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.label.equals("")) {
            computeSerializedSize += com.google.protobuf.nano.b.Fs(1, this.label);
        }
        if (!this.fm.equals("")) {
            computeSerializedSize += com.google.protobuf.nano.b.Fs(2, this.fm);
        }
        if (!this.fl.equals("")) {
            computeSerializedSize += com.google.protobuf.nano.b.Fs(3, this.fl);
        }
        if (!this.fn.equals("")) {
            computeSerializedSize += com.google.protobuf.nano.b.Fs(4, this.fn);
        }
        return computeSerializedSize;
    }
    
    public b mergeFrom(final c c) {
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
                    this.label = c.FX();
                    continue;
                }
                case 18: {
                    this.fm = c.FX();
                    continue;
                }
                case 26: {
                    this.fl = c.FX();
                    continue;
                }
                case 34: {
                    this.fn = c.FX();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final com.google.protobuf.nano.b b) {
        if (!this.label.equals("")) {
            b.Fp(1, this.label);
        }
        if (!this.fm.equals("")) {
            b.Fp(2, this.fm);
        }
        if (!this.fl.equals("")) {
            b.Fp(3, this.fl);
        }
        if (!this.fn.equals("")) {
            b.Fp(4, this.fn);
        }
        super.writeTo(b);
    }
}

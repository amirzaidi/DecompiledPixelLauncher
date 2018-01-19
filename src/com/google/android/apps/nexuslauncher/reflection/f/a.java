// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.f;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;

public final class a extends com.google.protobuf.nano.a
{
    public b[] aa;
    public long ab;
    public String ac;
    public int version;
    
    public a() {
        this.clear();
    }
    
    public static a aB(final byte[] array) {
        return (a)com.google.protobuf.nano.a.mergeFrom(new a(), array);
    }
    
    public a clear() {
        this.ab = 0L;
        this.version = 0;
        this.ac = "";
        this.aa = b.emptyArray();
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.ab != 0L) {
            computeSerializedSize += com.google.protobuf.nano.b.EV(1, this.ab);
        }
        if (this.version != 0) {
            computeSerializedSize += com.google.protobuf.nano.b.EW(2, this.version);
        }
        if (!this.ac.equals("")) {
            computeSerializedSize += com.google.protobuf.nano.b.Fs(3, this.ac);
        }
        if (this.aa != null && this.aa.length > 0) {
            int n = computeSerializedSize;
            for (int i = 0; i < this.aa.length; ++i) {
                final b b = this.aa[i];
                if (b != null) {
                    n += com.google.protobuf.nano.b.EK(4, b);
                }
            }
            computeSerializedSize = n;
        }
        return computeSerializedSize;
    }
    
    public a mergeFrom(final c c) {
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
                    this.ab = c.FV();
                    continue;
                }
                case 16: {
                    this.version = c.Ga();
                    continue;
                }
                case 26: {
                    this.ac = c.FX();
                    continue;
                }
                case 34: {
                    final int gj = f.Gj(c, 34);
                    int i;
                    if (this.aa == null) {
                        i = 0;
                    }
                    else {
                        i = this.aa.length;
                    }
                    final b[] aa = new b[gj + i];
                    if (i != 0) {
                        System.arraycopy(this.aa, 0, aa, 0, i);
                    }
                    while (i < aa.length - 1) {
                        c.FS(aa[i] = new b());
                        c.FO();
                        ++i;
                    }
                    c.FS(aa[i] = new b());
                    this.aa = aa;
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final com.google.protobuf.nano.b b) {
        int i = 0;
        if (this.ab != 0L) {
            b.Fy(1, this.ab);
        }
        if (this.version != 0) {
            b.ER(2, this.version);
        }
        if (!this.ac.equals("")) {
            b.Fp(3, this.ac);
        }
        if (this.aa != null && this.aa.length > 0) {
            while (i < this.aa.length) {
                final b b2 = this.aa[i];
                if (b2 != null) {
                    b.Fg(4, b2);
                }
                ++i;
            }
        }
        super.writeTo(b);
    }
}

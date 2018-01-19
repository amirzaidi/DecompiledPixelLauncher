// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.search.a;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;

public final class a extends com.google.protobuf.nano.a
{
    public int fg;
    public int fh;
    public int fi;
    public int fj;
    
    public a() {
        this.clear();
    }
    
    public a clear() {
        this.fh = 0;
        this.fi = 0;
        this.fj = 0;
        this.fg = 0;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.fh != 0) {
            computeSerializedSize += b.EW(1, this.fh);
        }
        if (this.fi != 0) {
            computeSerializedSize += b.EW(2, this.fi);
        }
        if (this.fj != 0) {
            computeSerializedSize += b.EW(3, this.fj);
        }
        if (this.fg != 0) {
            computeSerializedSize += b.EW(4, this.fg);
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
                    this.fh = c.Ga();
                    continue;
                }
                case 16: {
                    this.fi = c.Ga();
                    continue;
                }
                case 24: {
                    this.fj = c.Ga();
                    continue;
                }
                case 32: {
                    this.fg = c.Ga();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (this.fh != 0) {
            b.ER(1, this.fh);
        }
        if (this.fi != 0) {
            b.ER(2, this.fi);
        }
        if (this.fj != 0) {
            b.ER(3, this.fj);
        }
        if (this.fg != 0) {
            b.ER(4, this.fg);
        }
        super.writeTo(b);
    }
}

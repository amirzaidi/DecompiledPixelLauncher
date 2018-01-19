// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace.b;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;

public final class a extends com.google.protobuf.nano.a
{
    public b[] dn;
    
    public a() {
        this.clear();
    }
    
    public a clear() {
        this.dn = b.emptyArray();
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int i = 0;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.dn != null && this.dn.length > 0) {
            while (i < this.dn.length) {
                final b b = this.dn[i];
                if (b != null) {
                    computeSerializedSize += com.google.protobuf.nano.b.EK(1, b);
                }
                ++i;
            }
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
                case 10: {
                    final int gj = f.Gj(c, 10);
                    int i;
                    if (this.dn == null) {
                        i = 0;
                    }
                    else {
                        i = this.dn.length;
                    }
                    final b[] dn = new b[gj + i];
                    if (i != 0) {
                        System.arraycopy(this.dn, 0, dn, 0, i);
                    }
                    while (i < dn.length - 1) {
                        c.FS(dn[i] = new b());
                        c.FO();
                        ++i;
                    }
                    c.FS(dn[i] = new b());
                    this.dn = dn;
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final com.google.protobuf.nano.b b) {
        int i = 0;
        if (this.dn != null && this.dn.length > 0) {
            while (i < this.dn.length) {
                final b b2 = this.dn[i];
                if (b2 != null) {
                    b.Fg(1, b2);
                }
                ++i;
            }
        }
        super.writeTo(b);
    }
}

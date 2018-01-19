// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace.b;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class c extends a
{
    public d dC;
    public d dD;
    
    public c() {
        this.clear();
    }
    
    public c clear() {
        this.dD = null;
        this.dC = null;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.dD != null) {
            computeSerializedSize += b.EK(1, this.dD);
        }
        if (this.dC != null) {
            computeSerializedSize += b.EK(2, this.dC);
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
                case 10: {
                    if (this.dD == null) {
                        this.dD = new d();
                    }
                    c.FS(this.dD);
                    continue;
                }
                case 18: {
                    if (this.dC == null) {
                        this.dC = new d();
                    }
                    c.FS(this.dC);
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (this.dD != null) {
            b.Fg(1, this.dD);
        }
        if (this.dC != null) {
            b.Fg(2, this.dC);
        }
        super.writeTo(b);
    }
}

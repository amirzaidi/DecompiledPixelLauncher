// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace.b;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class h extends a
{
    public long da;
    public int db;
    
    public h() {
        this.clear();
    }
    
    public h clear() {
        this.da = 0L;
        this.db = 0;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.da != 0L) {
            computeSerializedSize += b.Vz(1, this.da);
        }
        if (this.db != 0) {
            computeSerializedSize += b.VA(2, this.db);
        }
        return computeSerializedSize;
    }
    
    public h mergeFrom(final c c) {
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
                    this.da = c.Wz();
                    continue;
                }
                case 16: {
                    this.db = c.WF();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (this.da != 0L) {
            b.Wc(1, this.da);
        }
        if (this.db != 0) {
            b.Vv(2, this.db);
        }
        super.writeTo(b);
    }
}

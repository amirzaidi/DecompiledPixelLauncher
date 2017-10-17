// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.a;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.d;
import com.google.protobuf.nano.a;

public final class n extends a
{
    private static volatile n[] by;
    public long bx;
    public int key;
    
    public n() {
        this.clear();
    }
    
    public static n[] emptyArray() {
        Label_0035: {
            if (n.by != null) {
                break Label_0035;
            }
            synchronized (d.La) {
                if (n.by == null) {
                    n.by = new n[0];
                }
                return n.by;
            }
        }
    }
    
    public n clear() {
        this.key = 0;
        this.bx = 0L;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.key != 0) {
            computeSerializedSize += b.RF(1, this.key);
        }
        if (this.bx != 0L) {
            computeSerializedSize += b.RE(2, this.bx);
        }
        return computeSerializedSize;
    }
    
    public n mergeFrom(final c c) {
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
                    this.key = c.SK();
                    continue;
                }
                case 16: {
                    this.bx = c.SE();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (this.key != 0) {
            b.RA(1, this.key);
        }
        if (this.bx != 0L) {
            b.Sh(2, this.bx);
        }
        super.writeTo(b);
    }
}

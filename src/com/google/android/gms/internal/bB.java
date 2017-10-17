// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import java.util.Arrays;

final class bb
{
    final byte[] tu;
    final int tv;
    
    bb(final int tv, final byte[] tu) {
        this.tv = tv;
        this.tu = tu;
    }
    
    int computeSerializedSize() {
        return aV.vZ(this.tv) + 0 + this.tu.length;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (o == this) {
            return b;
        }
        if (o instanceof bb) {
            final bb bb = (bb)o;
            if (this.tv != bb.tv || Arrays.equals(this.tu, bb.tu)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return (this.tv + 527) * 31 + Arrays.hashCode(this.tu);
    }
    
    void xB(final aV av) {
        av.wb(this.tv);
        av.vT(this.tu);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.protobuf.nano;

import java.util.Arrays;

final class j
{
    final int Lr;
    final byte[] Ls;
    
    int computeSerializedSize() {
        return b.RS(this.Lr) + 0 + this.Ls.length;
    }
    
    public boolean equals(final Object o) {
        boolean equals = false;
        if (o == this) {
            return true;
        }
        if (!(o instanceof j)) {
            return false;
        }
        final j j = (j)o;
        if (this.Lr == j.Lr) {
            equals = Arrays.equals(this.Ls, j.Ls);
        }
        return equals;
    }
    
    public int hashCode() {
        return (this.Lr + 527) * 31 + Arrays.hashCode(this.Ls);
    }
    
    void writeTo(final b b) {
        b.RZ(this.Lr);
        b.Rr(this.Ls);
    }
}

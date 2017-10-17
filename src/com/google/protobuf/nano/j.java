// 
// Decompiled by Procyon v0.5.30
// 

package com.google.protobuf.nano;

import java.util.Arrays;

final class j
{
    final int PY;
    final byte[] PZ;
    
    int computeSerializedSize() {
        return b.VN(this.PY) + 0 + this.PZ.length;
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
        if (this.PY == j.PY) {
            equals = Arrays.equals(this.PZ, j.PZ);
        }
        return equals;
    }
    
    public int hashCode() {
        return (this.PY + 527) * 31 + Arrays.hashCode(this.PZ);
    }
    
    void writeTo(final b b) {
        b.VU(this.PY);
        b.Vm(this.PZ);
    }
}

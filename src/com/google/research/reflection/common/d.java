// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.common;

public class d implements Comparable
{
    public int Mb;
    public float Mc;
    
    public d(final int mb) {
        this.Mb = mb;
        this.Mc = 1.0f;
    }
    
    public d(final int mb, final float mc) {
        this.Mb = mb;
        this.Mc = mc;
    }
    
    public int Uw(final d d) {
        return Float.compare(this.Mc, d.Mc);
    }
    
    public d clone() {
        return new d(this.Mb, this.Mc);
    }
    
    public boolean equals(final Object o) {
        return o instanceof d && (this.Mb == ((d)o).Mb && this.Mc == ((d)o).Mc);
    }
    
    public int hashCode() {
        return this.Mb * 31 + 17 + Float.floatToIntBits(this.Mc);
    }
    
    public String toString() {
        return new StringBuilder(27).append(this.Mb).append("=").append(this.Mc).toString();
    }
}

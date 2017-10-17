// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.common;

public class c implements Comparable
{
    public int MV;
    public float MW;
    
    public c(final int mv) {
        this.MV = mv;
        this.MW = 1.0f;
    }
    
    public c(final int mv, final float mw) {
        this.MV = mv;
        this.MW = mw;
    }
    
    public int Te(final c c) {
        return Float.compare(this.MW, c.MW);
    }
    
    public c clone() {
        return new c(this.MV, this.MW);
    }
    
    public boolean equals(final Object o) {
        return o instanceof c && (this.MV == ((c)o).MV && this.MW == ((c)o).MW);
    }
    
    public int hashCode() {
        return this.MV * 31 + 17 + Float.floatToIntBits(this.MW);
    }
    
    public String toString() {
        return new StringBuilder(27).append(this.MV).append("=").append(this.MW).toString();
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.l;

public abstract class d
{
    private int jY;
    protected final DataHolder jZ;
    protected int ka;
    
    public d(final DataHolder dataHolder, final int n) {
        this.jZ = (DataHolder)l.ht(dataHolder);
        this.nb(n);
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (!(o instanceof d)) {
            return false;
        }
        final d d = (d)o;
        if (u.hH(d.ka, this.ka) && u.hH(d.jY, this.jY) && d.jZ == this.jZ) {
            b = true;
        }
        return b;
    }
    
    public int hashCode() {
        return u.hI(this.ka, this.jY, this.jZ);
    }
    
    protected String na(final String s) {
        return this.jZ.nf(s, this.ka, this.jY);
    }
    
    protected void nb(final int ka) {
        boolean b = false;
        if (ka >= 0 && ka < this.jZ.nd()) {
            b = true;
        }
        l.hs(b);
        this.ka = ka;
        this.jY = this.jZ.ne(this.ka);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.l;

public abstract class d
{
    private int mQ;
    protected final DataHolder mR;
    protected int mS;
    
    public d(final DataHolder dataHolder, final int n) {
        this.mR = (DataHolder)l.kh(dataHolder);
        this.pO(n);
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (!(o instanceof d)) {
            return false;
        }
        final d d = (d)o;
        if (u.kv(d.mS, this.mS) && u.kv(d.mQ, this.mQ) && d.mR == this.mR) {
            b = true;
        }
        return b;
    }
    
    public int hashCode() {
        return u.kw(this.mS, this.mQ, this.mR);
    }
    
    protected String pN(final String s) {
        return this.mR.pS(s, this.mS, this.mQ);
    }
    
    protected void pO(final int ms) {
        boolean b = false;
        if (ms >= 0 && ms < this.mR.pQ()) {
            b = true;
        }
        l.kg(b);
        this.mS = ms;
        this.mQ = this.mR.pR(this.mS);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.internal.u;

class ad
{
    public final long rR;
    public final long rS;
    public final String rT;
    
    public ad(final String rt, final long rs, final long rr) {
        this.rT = rt;
        this.rS = rs;
        this.rR = rr;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (o == this) {
            return b;
        }
        if (o instanceof ad) {
            final ad ad = (ad)o;
            if (!u.kv(this.rT, ad.rT) || !u.kv(this.rS, ad.rS) || !u.kv(this.rR, ad.rR)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.rT, this.rS, this.rR);
    }
}

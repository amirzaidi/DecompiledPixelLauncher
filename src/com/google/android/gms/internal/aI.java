// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.internal.u;

class ai
{
    public final long rK;
    public final long rL;
    public final String rM;
    
    public ai(final String rm, final long rl, final long rk) {
        this.rM = rm;
        this.rL = rl;
        this.rK = rk;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (o == this) {
            return b;
        }
        if (o instanceof ai) {
            final ai ai = (ai)o;
            if (!u.hH(this.rM, ai.rM) || !u.hH(this.rL, ai.rL) || !u.hH(this.rK, ai.rK)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.rM, this.rL, this.rK);
    }
}

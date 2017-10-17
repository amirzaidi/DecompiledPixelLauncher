// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.api.h;

public final class cc
{
    private final h wj;
    private final m wk;
    
    public String BG() {
        return this.wj.dY();
    }
    
    public j BH() {
        return this.wj.dT();
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (o == this) {
            return b;
        }
        if (o instanceof cc) {
            final cc cc = (cc)o;
            if (!u.hH(this.wj, cc.wj) || !u.hH(this.wk, cc.wk)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.wj, this.wk);
    }
}

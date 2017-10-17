// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.content.ContentResolver;

class bc implements aT
{
    private final ContentResolver tX;
    
    public bc(final ContentResolver tx) {
        this.tX = tx;
    }
    
    public Long xo(final String s, final Long n) {
        return aS.xh(this.tX, s, n);
    }
    
    public Integer xp(final String s, final Integer n) {
        return aS.xj(this.tX, s, n);
    }
    
    public String xq(final String s, final String s2) {
        return aS.xf(this.tX, s, s2);
    }
    
    public Boolean xr(final String s, final Boolean b) {
        return aS.xk(this.tX, s, b);
    }
}

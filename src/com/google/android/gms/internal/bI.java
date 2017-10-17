// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.content.ContentResolver;

class bi implements aZ
{
    private final ContentResolver tR;
    
    public bi(final ContentResolver tr) {
        this.tR = tr;
    }
    
    public Long xp(final String s, final Long n) {
        return aY.xi(this.tR, s, n);
    }
    
    public Integer xq(final String s, final Integer n) {
        return aY.xk(this.tR, s, n);
    }
    
    public String xr(final String s, final String s2) {
        return aY.xg(this.tR, s, s2);
    }
    
    public Boolean xs(final String s, final Boolean b) {
        return aY.xl(this.tR, s, b);
    }
}

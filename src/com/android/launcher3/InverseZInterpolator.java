// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.TimeInterpolator;

class InverseZInterpolator implements TimeInterpolator
{
    private ZInterpolator zInterpolator;
    
    public InverseZInterpolator(final float n) {
        this.zInterpolator = new ZInterpolator(n);
    }
    
    public float getInterpolation(final float n) {
        final float n2 = 1.0f;
        return n2 - this.zInterpolator.getInterpolation(n2 - n);
    }
}

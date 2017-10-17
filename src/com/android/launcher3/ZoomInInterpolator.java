// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.animation.DecelerateInterpolator;
import android.animation.TimeInterpolator;

class ZoomInInterpolator implements TimeInterpolator
{
    private final DecelerateInterpolator decelerate;
    private final InverseZInterpolator inverseZInterpolator;
    
    ZoomInInterpolator() {
        this.inverseZInterpolator = new InverseZInterpolator(0.35f);
        this.decelerate = new DecelerateInterpolator(3.0f);
    }
    
    public float getInterpolation(final float n) {
        return this.decelerate.getInterpolation(this.inverseZInterpolator.getInterpolation(n));
    }
}

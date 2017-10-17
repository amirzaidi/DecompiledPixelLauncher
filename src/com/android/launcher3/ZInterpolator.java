// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.TimeInterpolator;

class ZInterpolator implements TimeInterpolator
{
    private float focalLength;
    
    public ZInterpolator(final float focalLength) {
        this.focalLength = focalLength;
    }
    
    public float getInterpolation(final float n) {
        final float n2 = 1.0f;
        return (n2 - this.focalLength / (this.focalLength + n)) / (n2 - this.focalLength / (this.focalLength + n2));
    }
}

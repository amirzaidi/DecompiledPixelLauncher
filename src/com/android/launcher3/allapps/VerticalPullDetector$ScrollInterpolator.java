// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import android.view.animation.Interpolator;

public class VerticalPullDetector$ScrollInterpolator implements Interpolator
{
    boolean mSteeper;
    
    public float getInterpolation(final float n) {
        final float n2 = 1.0f;
        final float n3 = n - n2;
        float n4 = n3 * n3 * n3;
        if (this.mSteeper) {
            n4 *= n3 * n3;
        }
        return n4 + n2;
    }
    
    public void setVelocityAtZero(final float n) {
        this.mSteeper = (n > 10.0f);
    }
}

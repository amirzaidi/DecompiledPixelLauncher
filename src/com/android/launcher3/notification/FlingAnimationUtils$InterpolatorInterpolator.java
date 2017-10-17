// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.notification;

import android.view.animation.Interpolator;

final class FlingAnimationUtils$InterpolatorInterpolator implements Interpolator
{
    private Interpolator mCrossfader;
    private Interpolator mInterpolator1;
    private Interpolator mInterpolator2;
    
    FlingAnimationUtils$InterpolatorInterpolator(final Interpolator mInterpolator1, final Interpolator mInterpolator2, final Interpolator mCrossfader) {
        this.mInterpolator1 = mInterpolator1;
        this.mInterpolator2 = mInterpolator2;
        this.mCrossfader = mCrossfader;
    }
    
    public float getInterpolation(final float n) {
        final float interpolation = this.mCrossfader.getInterpolation(n);
        return interpolation * this.mInterpolator2.getInterpolation(n) + (1.0f - interpolation) * this.mInterpolator1.getInterpolation(n);
    }
}

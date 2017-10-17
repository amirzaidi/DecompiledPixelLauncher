// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.notification;

import android.view.animation.Interpolator;

final class FlingAnimationUtils$VelocityInterpolator implements Interpolator
{
    private float mDiff;
    private float mDurationSeconds;
    private float mVelocity;
    
    private FlingAnimationUtils$VelocityInterpolator(final float mDurationSeconds, final float mVelocity, final float mDiff) {
        this.mDurationSeconds = mDurationSeconds;
        this.mVelocity = mVelocity;
        this.mDiff = mDiff;
    }
    
    public float getInterpolation(final float n) {
        return this.mDurationSeconds * n * this.mVelocity / this.mDiff;
    }
}

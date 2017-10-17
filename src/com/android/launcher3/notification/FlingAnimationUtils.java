// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.notification;

import android.animation.TimeInterpolator;
import android.animation.Animator;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.content.Context;

public class FlingAnimationUtils
{
    private FlingAnimationUtils$AnimatorProperties mAnimatorProperties;
    private float mCachedStartGradient;
    private float mCachedVelocityFactor;
    private float mHighVelocityPxPerSecond;
    private float mLinearOutSlowInX2;
    private float mMaxLengthSeconds;
    private float mMinVelocityPxPerSecond;
    private final float mSpeedUpFactor;
    private final float mY2;
    
    public FlingAnimationUtils(final Context context, final float n) {
        this(context, n, 0.0f);
    }
    
    public FlingAnimationUtils(final Context context, final float n, final float n2) {
        this(context, n, n2, -1.0f, 1.0f);
    }
    
    public FlingAnimationUtils(final Context context, final float mMaxLengthSeconds, final float mSpeedUpFactor, final float mLinearOutSlowInX2, final float my2) {
        final float n = -1.0f;
        this.mAnimatorProperties = new FlingAnimationUtils$AnimatorProperties(null);
        this.mCachedStartGradient = n;
        this.mCachedVelocityFactor = n;
        this.mMaxLengthSeconds = mMaxLengthSeconds;
        this.mSpeedUpFactor = mSpeedUpFactor;
        if (mLinearOutSlowInX2 < 0.0f) {
            this.mLinearOutSlowInX2 = interpolate(0.35f, 0.68f, this.mSpeedUpFactor);
        }
        else {
            this.mLinearOutSlowInX2 = mLinearOutSlowInX2;
        }
        this.mY2 = my2;
        this.mMinVelocityPxPerSecond = context.getResources().getDisplayMetrics().density * 250.0f;
        this.mHighVelocityPxPerSecond = context.getResources().getDisplayMetrics().density * 3000.0f;
    }
    
    private float calculateLinearOutFasterInY2(final float n) {
        final float n2 = 1.0f;
        final float max = Math.max(0.0f, Math.min(n2, (n - this.mMinVelocityPxPerSecond) / (this.mHighVelocityPxPerSecond - this.mMinVelocityPxPerSecond)));
        return max * 0.5f + (n2 - max) * 0.4f;
    }
    
    private FlingAnimationUtils$AnimatorProperties getDismissingProperties(final float n, final float n2, final float n3, final float n4) {
        final float n5 = 0.5f;
        final float n6 = (float)(this.mMaxLengthSeconds * Math.pow(Math.abs(n2 - n) / n4, 0.5));
        final float abs = Math.abs(n2 - n);
        final float abs2 = Math.abs(n3);
        final float calculateLinearOutFasterInY2 = this.calculateLinearOutFasterInY2(abs2);
        final float n7 = calculateLinearOutFasterInY2 / n5;
        final PathInterpolator interpolator = new PathInterpolator(0.0f, 0.0f, n5, calculateLinearOutFasterInY2);
        float n8 = n7 * abs / abs2;
        if (n8 <= n6) {
            this.mAnimatorProperties.interpolator = (Interpolator)interpolator;
        }
        else if (abs2 >= this.mMinVelocityPxPerSecond) {
            this.mAnimatorProperties.interpolator = (Interpolator)new FlingAnimationUtils$InterpolatorInterpolator((Interpolator)new FlingAnimationUtils$VelocityInterpolator(n6, abs2, abs, null), (Interpolator)interpolator, Interpolators.LINEAR_OUT_SLOW_IN);
            n8 = n6;
        }
        else {
            this.mAnimatorProperties.interpolator = Interpolators.FAST_OUT_LINEAR_IN;
            n8 = n6;
        }
        this.mAnimatorProperties.duration = (long)(n8 * 1000.0f);
        return this.mAnimatorProperties;
    }
    
    private static float interpolate(final float n, final float n2, final float n3) {
        return (1.0f - n3) * n + n2 * n3;
    }
    
    public void applyDismissing(final Animator animator, final float n, final float n2, final float n3, final float n4) {
        final FlingAnimationUtils$AnimatorProperties dismissingProperties = this.getDismissingProperties(n, n2, n3, n4);
        animator.setDuration(dismissingProperties.duration);
        animator.setInterpolator((TimeInterpolator)dismissingProperties.interpolator);
    }
}

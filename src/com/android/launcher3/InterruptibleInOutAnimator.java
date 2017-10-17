// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.Animator$AnimatorListener;
import android.view.View;
import android.animation.ValueAnimator;

public class InterruptibleInOutAnimator
{
    private ValueAnimator mAnimator;
    int mDirection;
    private boolean mFirstRun;
    private long mOriginalDuration;
    private float mOriginalFromValue;
    private float mOriginalToValue;
    private Object mTag;
    
    public InterruptibleInOutAnimator(final View view, final long n, final float mOriginalFromValue, final float mOriginalToValue) {
        final int mFirstRun = 1;
        this.mFirstRun = (mFirstRun != 0);
        this.mTag = null;
        this.mDirection = 0;
        final float[] array = { mOriginalFromValue, 0.0f };
        array[mFirstRun] = mOriginalToValue;
        this.mAnimator = LauncherAnimUtils.ofFloat(array).setDuration(n);
        this.mOriginalDuration = n;
        this.mOriginalFromValue = mOriginalFromValue;
        this.mOriginalToValue = mOriginalToValue;
        this.mAnimator.addListener((Animator$AnimatorListener)new InterruptibleInOutAnimator$1(this));
    }
    
    private void animate(final int mDirection) {
        final int n = 1;
        final long currentPlayTime = this.mAnimator.getCurrentPlayTime();
        float n2;
        if (mDirection == n) {
            n2 = this.mOriginalToValue;
        }
        else {
            n2 = this.mOriginalFromValue;
        }
        float n3;
        if (this.mFirstRun) {
            n3 = this.mOriginalFromValue;
        }
        else {
            n3 = (float)this.mAnimator.getAnimatedValue();
        }
        this.cancel();
        this.mDirection = mDirection;
        this.mAnimator.setDuration(Math.max(0L, Math.min(this.mOriginalDuration - currentPlayTime, this.mOriginalDuration)));
        final ValueAnimator mAnimator = this.mAnimator;
        final float[] floatValues = { n3, 0.0f };
        floatValues[n] = n2;
        mAnimator.setFloatValues(floatValues);
        this.mAnimator.start();
        this.mFirstRun = false;
    }
    
    public void animateIn() {
        this.animate(1);
    }
    
    public void animateOut() {
        this.animate(2);
    }
    
    public void cancel() {
        this.mAnimator.cancel();
        this.mDirection = 0;
    }
    
    public ValueAnimator getAnimator() {
        return this.mAnimator;
    }
    
    public Object getTag() {
        return this.mTag;
    }
    
    public void setTag(final Object mTag) {
        this.mTag = mTag;
    }
}

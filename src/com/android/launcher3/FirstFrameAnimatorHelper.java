// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewTreeObserver$OnDrawListener;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.animation.AnimatorListenerAdapter;

public class FirstFrameAnimatorHelper extends AnimatorListenerAdapter implements ValueAnimator$AnimatorUpdateListener
{
    private static ViewTreeObserver$OnDrawListener sGlobalDrawListener;
    static long sGlobalFrameCounter;
    private static boolean sVisible;
    private boolean mAdjustedSecondFrameTime;
    private boolean mHandlingOnAnimationUpdate;
    private long mStartFrame;
    private long mStartTime;
    private View mTarget;
    
    public FirstFrameAnimatorHelper(final ValueAnimator valueAnimator, final View mTarget) {
        this.mStartTime = -1;
        this.mTarget = mTarget;
        valueAnimator.addUpdateListener((ValueAnimator$AnimatorUpdateListener)this);
    }
    
    public static void initializeDrawListener(final View view) {
        if (FirstFrameAnimatorHelper.sGlobalDrawListener != null) {
            view.getViewTreeObserver().removeOnDrawListener(FirstFrameAnimatorHelper.sGlobalDrawListener);
        }
        FirstFrameAnimatorHelper.sGlobalDrawListener = (ViewTreeObserver$OnDrawListener)new FirstFrameAnimatorHelper$1();
        view.getViewTreeObserver().addOnDrawListener(FirstFrameAnimatorHelper.sGlobalDrawListener);
        FirstFrameAnimatorHelper.sVisible = true;
    }
    
    public static void setIsVisible(final boolean sVisible) {
        FirstFrameAnimatorHelper.sVisible = sVisible;
    }
    
    public void onAnimationStart(final Animator animator) {
        final ValueAnimator valueAnimator = (ValueAnimator)animator;
        valueAnimator.addUpdateListener((ValueAnimator$AnimatorUpdateListener)this);
        this.onAnimationUpdate(valueAnimator);
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        final long currentTimeMillis = System.currentTimeMillis();
        if (this.mStartTime == -1) {
            this.mStartFrame = FirstFrameAnimatorHelper.sGlobalFrameCounter;
            this.mStartTime = currentTimeMillis;
        }
        final long currentPlayTime = valueAnimator.getCurrentPlayTime();
        boolean b;
        if (Float.compare(1.0f, valueAnimator.getAnimatedFraction()) == 0) {
            b = true;
        }
        else {
            b = false;
        }
        if (!this.mHandlingOnAnimationUpdate && FirstFrameAnimatorHelper.sVisible && currentPlayTime < valueAnimator.getDuration() && (b ^ true)) {
            this.mHandlingOnAnimationUpdate = true;
            final long n = FirstFrameAnimatorHelper.sGlobalFrameCounter - this.mStartFrame;
            if (n == 0L && currentTimeMillis < this.mStartTime + 1000L && currentPlayTime > 0L) {
                this.mTarget.getRootView().invalidate();
                valueAnimator.setCurrentPlayTime(0L);
            }
            else if (n == 1L && currentTimeMillis < this.mStartTime + 1000L && (this.mAdjustedSecondFrameTime ^ true) && currentTimeMillis > this.mStartTime + 16 && currentPlayTime > 16) {
                valueAnimator.setCurrentPlayTime((long)16);
                this.mAdjustedSecondFrameTime = true;
            }
            else if (n > 1L) {
                this.mTarget.post((Runnable)new FirstFrameAnimatorHelper$2(this, valueAnimator));
            }
            this.mHandlingOnAnimationUpdate = false;
        }
    }
}

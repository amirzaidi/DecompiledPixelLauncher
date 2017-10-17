// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.animation.Animator$AnimatorListener;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.animation.ValueAnimator;
import java.util.Arrays;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

class MultiStateAlphaController$ZeroAlphaAnimatorListener extends AnimatorListenerAdapter
{
    private boolean mStartedAtZero;
    final /* synthetic */ MultiStateAlphaController this$0;
    
    private MultiStateAlphaController$ZeroAlphaAnimatorListener(final MultiStateAlphaController this$0) {
        this.this$0 = this$0;
        this.mStartedAtZero = false;
    }
    
    public void onAnimationEnd(final Animator animator) {
        if (this.mStartedAtZero) {
            final MultiStateAlphaController this$0 = this.this$0;
            --this$0.mZeroAlphaListenerCount;
            this.this$0.updateAlpha();
        }
    }
    
    public void onAnimationStart(final Animator animator) {
        boolean mStartedAtZero = false;
        if (Float.compare(this.this$0.mTargetView.getAlpha(), 0.0f) == 0) {
            mStartedAtZero = true;
        }
        this.mStartedAtZero = mStartedAtZero;
        if (this.mStartedAtZero) {
            final MultiStateAlphaController this$0 = this.this$0;
            ++this$0.mZeroAlphaListenerCount;
            this.this$0.mTargetView.setAlpha(0.0f);
        }
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.ValueAnimator;
import android.animation.Animator;
import android.view.View;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.animation.AnimatorListenerAdapter;

class AlphaUpdateListener extends AnimatorListenerAdapter implements ValueAnimator$AnimatorUpdateListener
{
    private boolean mAccessibilityEnabled;
    private boolean mCanceled;
    private View mView;
    
    public AlphaUpdateListener(final View mView, final boolean mAccessibilityEnabled) {
        this.mCanceled = false;
        this.mView = mView;
        this.mAccessibilityEnabled = mAccessibilityEnabled;
    }
    
    public static void updateVisibility(final View view, final boolean b) {
        final float n = 0.01f;
        int visibility;
        if (b) {
            visibility = 8;
        }
        else {
            visibility = 4;
        }
        if (view.getAlpha() < n && view.getVisibility() != visibility) {
            view.setVisibility(visibility);
        }
        else if (view.getAlpha() > n && view.getVisibility() != 0) {
            view.setVisibility(0);
        }
    }
    
    public void onAnimationCancel(final Animator animator) {
        this.mCanceled = true;
    }
    
    public void onAnimationEnd(final Animator animator) {
        if (this.mCanceled) {
            return;
        }
        updateVisibility(this.mView, this.mAccessibilityEnabled);
    }
    
    public void onAnimationStart(final Animator animator) {
        this.mView.setVisibility(0);
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        updateVisibility(this.mView, this.mAccessibilityEnabled);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.animation.Animator$AnimatorListener;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.animation.ValueAnimator;
import android.animation.Animator;
import java.util.Arrays;
import android.view.View;
import android.view.accessibility.AccessibilityManager;

public class MultiStateAlphaController
{
    private final float[] mAlphas;
    private final AccessibilityManager mAm;
    private final View mTargetView;
    private int mZeroAlphaListenerCount;
    
    public MultiStateAlphaController(final View mTargetView, final int n) {
        this.mZeroAlphaListenerCount = 0;
        this.mTargetView = mTargetView;
        Arrays.fill(this.mAlphas = new float[n], 1.0f);
        this.mAm = (AccessibilityManager)mTargetView.getContext().getSystemService("accessibility");
    }
    
    private void updateAlpha() {
        int visibility = 0;
        if (this.mZeroAlphaListenerCount > 0) {
            return;
        }
        final float[] mAlphas = this.mAlphas;
        final int length = mAlphas.length;
        float alpha = 1.0f;
        for (int i = 0; i < length; ++i) {
            alpha *= mAlphas[i];
        }
        this.mTargetView.setAlpha(alpha);
        final View mTargetView = this.mTargetView;
        if (alpha <= 0.0f) {
            if (this.mAm.isEnabled()) {
                visibility = 8;
            }
            else {
                visibility = 4;
            }
        }
        mTargetView.setVisibility(visibility);
    }
    
    public Animator animateAlphaAtIndex(final float n, final int n2) {
        final int n3 = 2;
        final int n4 = 1;
        ValueAnimator valueAnimator;
        if (Float.compare(n, this.mAlphas[n2]) == 0) {
            final float[] array = new float[n3];
            array[n4] = (array[0] = 0.0f);
            valueAnimator = ValueAnimator.ofFloat(array);
        }
        else {
            final float[] array2 = new float[n3];
            array2[0] = this.mAlphas[n2];
            array2[n4] = n;
            valueAnimator = ValueAnimator.ofFloat(array2);
            valueAnimator.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new MultiStateAlphaController$1(this, n2));
        }
        if (Float.compare(n, 0.0f) == 0) {
            valueAnimator.addListener((Animator$AnimatorListener)new MultiStateAlphaController$ZeroAlphaAnimatorListener(this, null));
        }
        return (Animator)valueAnimator;
    }
    
    public void setAlphaAtIndex(final float n, final int n2) {
        this.mAlphas[n2] = n;
        this.updateAlpha();
    }
}

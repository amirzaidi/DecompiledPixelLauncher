// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.graphics.Outline;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.animation.Animator$AnimatorListener;
import android.animation.ValueAnimator;
import android.view.View;
import android.graphics.Rect;
import android.view.ViewOutlineProvider;

public abstract class RevealOutlineAnimation extends ViewOutlineProvider
{
    protected Rect mOutline;
    protected float mOutlineRadius;
    
    public RevealOutlineAnimation() {
        this.mOutline = new Rect();
    }
    
    public ValueAnimator createRevealAnimator(final View view) {
        return this.createRevealAnimator(view, false);
    }
    
    public ValueAnimator createRevealAnimator(final View view, final boolean b) {
        final int n = 2;
        ValueAnimator valueAnimator;
        if (b) {
            final float[] array2;
            final float[] array = array2 = new float[n];
            array2[0] = 1.0f;
            array2[1] = 0.0f;
            valueAnimator = ValueAnimator.ofFloat(array);
        }
        else {
            final float[] array4;
            final float[] array3 = array4 = new float[n];
            array4[0] = 0.0f;
            array4[1] = 1.0f;
            valueAnimator = ValueAnimator.ofFloat(array3);
        }
        valueAnimator.addListener((Animator$AnimatorListener)new RevealOutlineAnimation$1(this, view, view.getElevation()));
        valueAnimator.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new RevealOutlineAnimation$2(this, view));
        return valueAnimator;
    }
    
    public void getOutline(final View view, final Outline outline) {
        outline.setRoundRect(this.mOutline, this.mOutlineRadius);
    }
    
    abstract void setProgress(final float p0);
    
    abstract boolean shouldRemoveElevationDuringAnimation();
}

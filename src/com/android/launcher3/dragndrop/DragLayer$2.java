// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.view.animation.Interpolator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class DragLayer$2 implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ DragLayer this$0;
    final /* synthetic */ Interpolator val$alphaInterpolator;
    final /* synthetic */ float val$dropViewScale;
    final /* synthetic */ float val$finalAlpha;
    final /* synthetic */ float val$finalScaleX;
    final /* synthetic */ float val$finalScaleY;
    final /* synthetic */ Rect val$from;
    final /* synthetic */ float val$initAlpha;
    final /* synthetic */ float val$initScaleX;
    final /* synthetic */ float val$initScaleY;
    final /* synthetic */ Interpolator val$motionInterpolator;
    final /* synthetic */ Rect val$to;
    final /* synthetic */ DragView val$view;
    
    DragLayer$2(final DragLayer this$0, final DragView val$view, final Interpolator val$alphaInterpolator, final Interpolator val$motionInterpolator, final float val$initScaleX, final float val$dropViewScale, final float val$initScaleY, final float val$finalScaleX, final float val$finalScaleY, final float val$finalAlpha, final float val$initAlpha, final Rect val$from, final Rect val$to) {
        this.this$0 = this$0;
        this.val$view = val$view;
        this.val$alphaInterpolator = val$alphaInterpolator;
        this.val$motionInterpolator = val$motionInterpolator;
        this.val$initScaleX = val$initScaleX;
        this.val$dropViewScale = val$dropViewScale;
        this.val$initScaleY = val$initScaleY;
        this.val$finalScaleX = val$finalScaleX;
        this.val$finalScaleY = val$finalScaleY;
        this.val$finalAlpha = val$finalAlpha;
        this.val$initAlpha = val$initAlpha;
        this.val$from = val$from;
        this.val$to = val$to;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        final float n = 2.0f;
        final float n2 = 1.0f;
        final float floatValue = (float)valueAnimator.getAnimatedValue();
        final int measuredWidth = this.val$view.getMeasuredWidth();
        final int measuredHeight = this.val$view.getMeasuredHeight();
        float interpolation;
        if (this.val$alphaInterpolator == null) {
            interpolation = floatValue;
        }
        else {
            interpolation = this.val$alphaInterpolator.getInterpolation(floatValue);
        }
        float interpolation2;
        if (this.val$motionInterpolator == null) {
            interpolation2 = floatValue;
        }
        else {
            interpolation2 = this.val$motionInterpolator.getInterpolation(floatValue);
        }
        final float n3 = this.val$initScaleX * this.val$dropViewScale;
        final float n4 = this.val$initScaleY * this.val$dropViewScale;
        final float scaleX = this.val$finalScaleX * floatValue + (n2 - floatValue) * n3;
        final float scaleY = (n2 - floatValue) * n4 + this.val$finalScaleY * floatValue;
        final float alpha = this.val$finalAlpha * interpolation + (n2 - interpolation) * this.val$initAlpha;
        final float n5 = this.val$from.left + measuredWidth * (n3 - n2) / n;
        final float n6 = this.val$from.top + measuredHeight * (n4 - n2) / n;
        final int n7 = (int)(n5 + Math.round((this.val$to.left - n5) * interpolation2));
        final int n8 = (int)(Math.round((this.val$to.top - n6) * interpolation2) + n6);
        int n9;
        if (this.this$0.mAnchorView == null) {
            n9 = 0;
        }
        else {
            n9 = (int)(this.this$0.mAnchorView.getScaleX() * (this.this$0.mAnchorViewInitialScrollX - this.this$0.mAnchorView.getScrollX()));
        }
        final int n10 = n9 + (n7 - this.this$0.mDropView.getScrollX());
        final int n11 = n8 - this.this$0.mDropView.getScrollY();
        this.this$0.mDropView.setTranslationX((float)n10);
        this.this$0.mDropView.setTranslationY((float)n11);
        this.this$0.mDropView.setScaleX(scaleX);
        this.this$0.mDropView.setScaleY(scaleY);
        this.this$0.mDropView.setAlpha(alpha);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.view.animation.AnimationUtils;
import android.view.View;
import com.android.launcher3.dragndrop.DragView;
import android.animation.ValueAnimator;
import android.view.animation.DecelerateInterpolator;
import android.graphics.PointF;
import com.android.launcher3.Launcher;
import android.graphics.Rect;
import com.android.launcher3.ButtonDropTarget;
import com.android.launcher3.DropTarget$DragObject;
import com.android.launcher3.dragndrop.DragLayer;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

public class FlingAnimation implements ValueAnimator$AnimatorUpdateListener, Runnable
{
    protected float mAX;
    protected float mAY;
    protected final TimeInterpolator mAlphaInterpolator;
    protected float mAnimationTimeFraction;
    protected final DragLayer mDragLayer;
    protected final DropTarget$DragObject mDragObject;
    private final ButtonDropTarget mDropTarget;
    protected int mDuration;
    protected Rect mFrom;
    protected Rect mIconRect;
    private final Launcher mLauncher;
    protected final float mUX;
    protected final float mUY;
    
    public FlingAnimation(final DropTarget$DragObject mDragObject, final PointF pointF, final ButtonDropTarget mDropTarget, final Launcher mLauncher) {
        final float n = 1000.0f;
        this.mAlphaInterpolator = (TimeInterpolator)new DecelerateInterpolator(0.75f);
        this.mDropTarget = mDropTarget;
        this.mLauncher = mLauncher;
        this.mDragObject = mDragObject;
        this.mUX = pointF.x / n;
        this.mUY = pointF.y / n;
        this.mDragLayer = this.mLauncher.getDragLayer();
    }
    
    protected int initFlingLeftDuration() {
        final float n = 2.0f;
        final float max = 0.5f;
        final float n2 = -this.mFrom.right;
        float n3 = this.mUX * this.mUX + n * n2 * max;
        if (n3 >= 0.0f) {
            this.mAX = max;
        }
        else {
            this.mAX = this.mUX * this.mUX / (-n2 * n);
            n3 = 0.0f;
        }
        final double n4 = (-this.mUX - Math.sqrt(n3)) / this.mAX;
        this.mAY = (float)((-this.mFrom.exactCenterY() + this.mIconRect.exactCenterY() - this.mUY * n4) * 2.0 / (n4 * n4));
        return (int)Math.round(n4);
    }
    
    protected int initFlingUpDuration() {
        final float n = 2.0f;
        final float may = 0.5f;
        final float n2 = -this.mFrom.bottom;
        float n3 = this.mUY * this.mUY + n * n2 * may;
        if (n3 >= 0.0f) {
            this.mAY = may;
        }
        else {
            this.mAY = this.mUY * this.mUY / (-n2 * n);
            n3 = 0.0f;
        }
        final double n4 = (-this.mUY - Math.sqrt(n3)) / this.mAY;
        this.mAX = (float)((-this.mFrom.exactCenterX() + this.mIconRect.exactCenterX() - this.mUX * n4) * 2.0 / (n4 * n4));
        return (int)Math.round(n4);
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        final float n = 2.0f;
        final float n2 = 1.0f;
        final float animatedFraction = valueAnimator.getAnimatedFraction();
        float n3;
        if (animatedFraction > this.mAnimationTimeFraction) {
            n3 = n2;
        }
        else {
            n3 = animatedFraction / this.mAnimationTimeFraction;
        }
        final DragView dragView = (DragView)this.mDragLayer.getAnimatedView();
        final float n4 = this.mDuration * n3;
        dragView.setTranslationX(this.mUX * n4 + this.mFrom.left + this.mAX * n4 * n4 / n);
        dragView.setTranslationY(n4 * (this.mAY * n4) / n + (this.mUY * n4 + this.mFrom.top));
        dragView.setAlpha(n2 - this.mAlphaInterpolator.getInterpolation(n3));
    }
    
    public void run() {
        final float n = 2.0f;
        final float n2 = 1.0f;
        this.mIconRect = this.mDropTarget.getIconRect(this.mDragObject);
        this.mFrom = new Rect();
        this.mDragLayer.getViewRectRelativeToSelf((View)this.mDragObject.dragView, this.mFrom);
        final float scaleX = this.mDragObject.dragView.getScaleX();
        final float n3 = (scaleX - n2) * this.mDragObject.dragView.getMeasuredWidth() / n;
        final float n4 = (scaleX - n2) * this.mDragObject.dragView.getMeasuredHeight() / n;
        final Rect mFrom = this.mFrom;
        mFrom.left += (int)n3;
        final Rect mFrom2 = this.mFrom;
        mFrom2.right -= (int)n3;
        final Rect mFrom3 = this.mFrom;
        mFrom3.top += (int)n4;
        final Rect mFrom4 = this.mFrom;
        mFrom4.bottom -= (int)n4;
        int mDuration;
        if (Math.abs(this.mUY) > Math.abs(this.mUX)) {
            mDuration = this.initFlingUpDuration();
        }
        else {
            mDuration = this.initFlingLeftDuration();
        }
        this.mDuration = mDuration;
        this.mAnimationTimeFraction = this.mDuration / (this.mDuration + 300);
        this.mDragObject.dragView.setColor(0);
        final int n5 = this.mDuration + 300;
        this.mDragLayer.animateView(this.mDragObject.dragView, (ValueAnimator$AnimatorUpdateListener)this, n5, (TimeInterpolator)new FlingAnimation$1(this, AnimationUtils.currentAnimationTimeMillis(), n5), new FlingAnimation$2(this), 0, null);
    }
}

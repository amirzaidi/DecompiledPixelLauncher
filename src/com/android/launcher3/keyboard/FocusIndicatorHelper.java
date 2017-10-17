// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.keyboard;

import android.animation.Animator$AnimatorListener;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.animation.ObjectAnimator;
import android.view.View;
import android.graphics.Rect;
import android.animation.RectEvaluator;
import android.util.Property;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.view.View$OnFocusChangeListener;

public abstract class FocusIndicatorHelper implements View$OnFocusChangeListener, ValueAnimator$AnimatorUpdateListener
{
    public static final Property ALPHA;
    private static final RectEvaluator RECT_EVALUATOR;
    public static final Property SHIFT;
    private static final Rect sTempRect1;
    private static final Rect sTempRect2;
    private float mAlpha;
    private final View mContainer;
    private ObjectAnimator mCurrentAnimation;
    private View mCurrentView;
    private final Rect mDirtyRect;
    private boolean mIsDirty;
    private View mLastFocusedView;
    private final int mMaxAlpha;
    private final Paint mPaint;
    private float mShift;
    private View mTargetView;
    
    static {
        ALPHA = new FocusIndicatorHelper$1(Float.TYPE, "alpha");
        SHIFT = new FocusIndicatorHelper$2(Float.TYPE, "shift");
        RECT_EVALUATOR = new RectEvaluator(new Rect());
        sTempRect1 = new Rect();
        sTempRect2 = new Rect();
    }
    
    public FocusIndicatorHelper(final View mContainer) {
        this.mDirtyRect = new Rect();
        this.mIsDirty = false;
        this.mContainer = mContainer;
        this.mPaint = new Paint(1);
        final int color = mContainer.getResources().getColor(2131361816);
        this.mMaxAlpha = Color.alpha(color);
        this.mPaint.setColor(color | 0xFF000000);
        this.setAlpha(0.0f);
        this.mShift = 0.0f;
    }
    
    private Rect getDrawRect() {
        if (this.mCurrentView == null || !this.mCurrentView.isAttachedToWindow()) {
            return null;
        }
        this.viewToRect(this.mCurrentView, FocusIndicatorHelper.sTempRect1);
        if (this.mShift > 0.0f && this.mTargetView != null) {
            this.viewToRect(this.mTargetView, FocusIndicatorHelper.sTempRect2);
            return FocusIndicatorHelper.RECT_EVALUATOR.evaluate(this.mShift, FocusIndicatorHelper.sTempRect1, FocusIndicatorHelper.sTempRect2);
        }
        return FocusIndicatorHelper.sTempRect1;
    }
    
    public void draw(final Canvas canvas) {
        if (this.mAlpha > 0.0f) {
            final Rect drawRect = this.getDrawRect();
            if (drawRect != null) {
                this.mDirtyRect.set(drawRect);
                canvas.drawRect(this.mDirtyRect, this.mPaint);
                this.mIsDirty = true;
            }
        }
    }
    
    protected void endCurrentAnimation() {
        if (this.mCurrentAnimation != null) {
            this.mCurrentAnimation.cancel();
            this.mCurrentAnimation = null;
        }
    }
    
    protected void invalidateDirty() {
        if (this.mIsDirty) {
            this.mContainer.invalidate(this.mDirtyRect);
            this.mIsDirty = false;
        }
        final Rect drawRect = this.getDrawRect();
        if (drawRect != null) {
            this.mContainer.invalidate(drawRect);
        }
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        this.invalidateDirty();
    }
    
    public void onFocusChange(View view, final boolean b) {
        final float n = 1.0f;
        final int n2 = 1;
        if (b) {
            this.endCurrentAnimation();
            if (this.mAlpha > 0.2f) {
                this.mTargetView = view;
                final PropertyValuesHolder[] array = new PropertyValuesHolder[2];
                final Property alpha = FocusIndicatorHelper.ALPHA;
                final float[] array2 = new float[n2];
                array2[0] = n;
                array[0] = PropertyValuesHolder.ofFloat(alpha, array2);
                final Property shift = FocusIndicatorHelper.SHIFT;
                final float[] array3 = new float[n2];
                array3[0] = n;
                array[n2] = PropertyValuesHolder.ofFloat(shift, array3);
                (this.mCurrentAnimation = ObjectAnimator.ofPropertyValuesHolder((Object)this, array)).addListener((Animator$AnimatorListener)new FocusIndicatorHelper$ViewSetListener(this, view, n2 != 0));
            }
            else {
                this.setCurrentView(view);
                final PropertyValuesHolder[] array4 = new PropertyValuesHolder[n2];
                final Property alpha2 = FocusIndicatorHelper.ALPHA;
                final float[] array5 = new float[n2];
                array5[0] = n;
                array4[0] = PropertyValuesHolder.ofFloat(alpha2, array5);
                this.mCurrentAnimation = ObjectAnimator.ofPropertyValuesHolder((Object)this, array4);
            }
            this.mLastFocusedView = view;
        }
        else if (this.mLastFocusedView == view) {
            this.mLastFocusedView = null;
            this.endCurrentAnimation();
            final PropertyValuesHolder[] array6 = new PropertyValuesHolder[n2];
            final Property alpha3 = FocusIndicatorHelper.ALPHA;
            final float[] array7 = new float[n2];
            array7[0] = 0.0f;
            array6[0] = PropertyValuesHolder.ofFloat(alpha3, array7);
            (this.mCurrentAnimation = ObjectAnimator.ofPropertyValuesHolder((Object)this, array6)).addListener((Animator$AnimatorListener)new FocusIndicatorHelper$ViewSetListener(this, null, false));
        }
        this.invalidateDirty();
        if (!b) {
            view = null;
        }
        this.mLastFocusedView = view;
        if (this.mCurrentAnimation != null) {
            this.mCurrentAnimation.addUpdateListener((ValueAnimator$AnimatorUpdateListener)this);
            this.mCurrentAnimation.setDuration(150L).start();
        }
    }
    
    protected void setAlpha(final float mAlpha) {
        this.mAlpha = mAlpha;
        this.mPaint.setAlpha((int)(this.mAlpha * this.mMaxAlpha));
    }
    
    protected void setCurrentView(final View mCurrentView) {
        this.mCurrentView = mCurrentView;
        this.mShift = 0.0f;
        this.mTargetView = null;
    }
    
    public abstract void viewToRect(final View p0, final Rect p1);
}

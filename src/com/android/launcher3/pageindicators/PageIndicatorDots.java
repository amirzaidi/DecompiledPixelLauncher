// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.pageindicators;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.animation.ValueAnimator;
import android.animation.AnimatorSet;
import android.view.animation.OvershootInterpolator;
import android.view.View$MeasureSpec;
import android.graphics.Canvas;
import android.animation.Animator$AnimatorListener;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.Themes;
import android.view.ViewOutlineProvider;
import android.graphics.Paint$Style;
import android.util.AttributeSet;
import android.content.Context;
import android.graphics.Paint;
import android.animation.ObjectAnimator;
import android.graphics.RectF;
import android.util.Property;

public class PageIndicatorDots extends PageIndicator
{
    private static final Property CURRENT_POSITION;
    private static final RectF sTempRect;
    private final int mActiveColor;
    private int mActivePage;
    private ObjectAnimator mAnimator;
    private final Paint mCirclePaint;
    private float mCurrentPosition;
    private final float mDotRadius;
    private float[] mEntryAnimationRadiusFactors;
    private float mFinalPosition;
    private final int mInActiveColor;
    private final boolean mIsRtl;
    
    static {
        sTempRect = new RectF();
        CURRENT_POSITION = new PageIndicatorDots$1(Float.TYPE, "current_position");
    }
    
    public PageIndicatorDots(final Context context) {
        this(context, null);
    }
    
    public PageIndicatorDots(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public PageIndicatorDots(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        (this.mCirclePaint = new Paint(1)).setStyle(Paint$Style.FILL);
        this.mDotRadius = this.getResources().getDimension(2131427417) / 2.0f;
        this.setOutlineProvider((ViewOutlineProvider)new PageIndicatorDots$MyOutlineProver(this, null));
        this.mActiveColor = Themes.getColorAccent(context);
        this.mInActiveColor = Themes.getAttrColor(context, 16843820);
        this.mIsRtl = Utilities.isRtl(this.getResources());
    }
    
    private void animateToPosition(final float mFinalPosition) {
        final float n = 0.5f;
        this.mFinalPosition = mFinalPosition;
        if (Math.abs(this.mCurrentPosition - this.mFinalPosition) < 0.1f) {
            this.mCurrentPosition = this.mFinalPosition;
        }
        if (this.mAnimator == null && Float.compare(this.mCurrentPosition, this.mFinalPosition) != 0) {
            float n2;
            if (this.mCurrentPosition > this.mFinalPosition) {
                n2 = this.mCurrentPosition - n;
            }
            else {
                n2 = this.mCurrentPosition + n;
            }
            (this.mAnimator = ObjectAnimator.ofFloat((Object)this, PageIndicatorDots.CURRENT_POSITION, new float[] { n2 })).addListener((Animator$AnimatorListener)new PageIndicatorDots$AnimationCycleListener(this, null));
            this.mAnimator.setDuration(150L);
            this.mAnimator.start();
        }
    }
    
    private RectF getActiveRect() {
        final float n = 2.0f;
        final float n2 = 0.5f;
        final float n3 = (int)this.mCurrentPosition;
        final float n4 = this.mCurrentPosition - n3;
        final float n5 = this.mDotRadius * n;
        final float n6 = this.mDotRadius * 3.0f;
        final float n7 = (this.getWidth() - this.mNumPages * n6 + this.mDotRadius) / n;
        PageIndicatorDots.sTempRect.top = this.getHeight() * n2 - this.mDotRadius;
        PageIndicatorDots.sTempRect.bottom = this.getHeight() * n2 + this.mDotRadius;
        PageIndicatorDots.sTempRect.left = n3 * n6 + n7;
        PageIndicatorDots.sTempRect.right = n5 + PageIndicatorDots.sTempRect.left;
        if (n4 < n2) {
            final RectF sTempRect = PageIndicatorDots.sTempRect;
            sTempRect.right += n4 * n6 * n;
        }
        else {
            final RectF sTempRect2 = PageIndicatorDots.sTempRect;
            sTempRect2.right += n6;
            final float n8 = n4 - n2;
            final RectF sTempRect3 = PageIndicatorDots.sTempRect;
            sTempRect3.left += n8 * n6 * n;
        }
        if (this.mIsRtl) {
            final float width = PageIndicatorDots.sTempRect.width();
            PageIndicatorDots.sTempRect.right = this.getWidth() - PageIndicatorDots.sTempRect.left;
            PageIndicatorDots.sTempRect.left = PageIndicatorDots.sTempRect.right - width;
        }
        return PageIndicatorDots.sTempRect;
    }
    
    protected void onDraw(final Canvas canvas) {
        int i = 0;
        float n = 3.0f * this.mDotRadius;
        float n2 = (this.getWidth() - this.mNumPages * n + this.mDotRadius) / 2.0f + this.mDotRadius;
        final float n3 = canvas.getHeight() / 2;
        if (this.mEntryAnimationRadiusFactors != null) {
            if (this.mIsRtl) {
                n2 = this.getWidth() - n2;
                n = -n;
            }
            float n4 = n2;
            for (int j = 0; j < this.mEntryAnimationRadiusFactors.length; ++j) {
                final Paint mCirclePaint = this.mCirclePaint;
                int color;
                if (j == this.mActivePage) {
                    color = this.mActiveColor;
                }
                else {
                    color = this.mInActiveColor;
                }
                mCirclePaint.setColor(color);
                canvas.drawCircle(n4, n3, this.mDotRadius * this.mEntryAnimationRadiusFactors[j], this.mCirclePaint);
                n4 += n;
            }
        }
        else {
            this.mCirclePaint.setColor(this.mInActiveColor);
            while (i < this.mNumPages) {
                canvas.drawCircle(n2, n3, this.mDotRadius, this.mCirclePaint);
                n2 += n;
                ++i;
            }
            this.mCirclePaint.setColor(this.mActiveColor);
            canvas.drawRoundRect(this.getActiveRect(), this.mDotRadius, this.mDotRadius, this.mCirclePaint);
        }
    }
    
    protected void onMeasure(final int n, final int n2) {
        final int n3 = 1073741824;
        int size;
        if (View$MeasureSpec.getMode(n) == n3) {
            size = View$MeasureSpec.getSize(n);
        }
        else {
            size = (int)((this.mNumPages * 3 + 2) * this.mDotRadius);
        }
        int size2;
        if (View$MeasureSpec.getMode(n2) == n3) {
            size2 = View$MeasureSpec.getSize(n2);
        }
        else {
            size2 = (int)(this.mDotRadius * 4.0f);
        }
        this.setMeasuredDimension(size, size2);
    }
    
    protected void onPageCountChanged() {
        this.requestLayout();
    }
    
    public void playEntryAnimation() {
        final int length = this.mEntryAnimationRadiusFactors.length;
        if (length == 0) {
            this.mEntryAnimationRadiusFactors = null;
            this.invalidate();
            return;
        }
        final OvershootInterpolator interpolator = new OvershootInterpolator(4.9f);
        final AnimatorSet set = new AnimatorSet();
        for (int i = 0; i < length; ++i) {
            final ValueAnimator setDuration = ValueAnimator.ofFloat(new float[] { 0.0f, 1.0f }).setDuration(400L);
            setDuration.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new PageIndicatorDots$2(this, i));
            setDuration.setInterpolator((TimeInterpolator)interpolator);
            setDuration.setStartDelay((long)(i * 150 + 300));
            set.play((Animator)setDuration);
        }
        set.addListener((Animator$AnimatorListener)new PageIndicatorDots$3(this));
        set.start();
    }
    
    public void prepareEntryAnimation() {
        this.mEntryAnimationRadiusFactors = new float[this.mNumPages];
        this.invalidate();
    }
    
    public void setActiveMarker(final int mActivePage) {
        if (this.mActivePage != mActivePage) {
            this.mActivePage = mActivePage;
        }
    }
    
    public void setScroll(int n, final int n2) {
        if (this.mNumPages > 1) {
            if (this.mIsRtl) {
                n = n2 - n;
            }
            final int n3 = n2 / (this.mNumPages - 1);
            final int n4 = n / n3;
            final int n5 = n4 * n3;
            final int n6 = n5 + n3;
            final float n7 = n3 * 0.1f;
            if (n < n5 + n7) {
                this.animateToPosition(n4);
            }
            else if (n > n6 - n7) {
                this.animateToPosition(n4 + 1);
            }
            else {
                this.animateToPosition(n4 + 0.5f);
            }
        }
    }
    
    public void stopAllAnimations() {
        if (this.mAnimator != null) {
            this.mAnimator.cancel();
            this.mAnimator = null;
        }
        this.mFinalPosition = this.mActivePage;
        PageIndicatorDots.CURRENT_POSITION.set((Object)this, (Object)this.mFinalPosition);
    }
}

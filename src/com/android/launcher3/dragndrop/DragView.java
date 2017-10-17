// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.view.ViewGroup$LayoutParams;
import android.graphics.ColorFilter;
import com.android.launcher3.util.Themes;
import android.graphics.Canvas;
import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.animation.TypeEvaluator;
import android.animation.FloatArrayEvaluator;
import java.util.Arrays;
import android.graphics.ColorMatrix;
import android.view.View$MeasureSpec;
import android.animation.Animator$AnimatorListener;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import com.android.launcher3.LauncherAnimUtils;
import android.content.Context;
import com.android.launcher3.Launcher;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Bitmap;
import android.animation.ValueAnimator;
import android.view.View;

public class DragView extends View
{
    static float sDragAlpha;
    ValueAnimator mAnim;
    private int mAnimatedShiftX;
    private int mAnimatedShiftY;
    private boolean mAnimationCancelled;
    private Bitmap mBitmap;
    private final int mBlurSizeOutline;
    private Bitmap mCrossFadeBitmap;
    float mCrossFadeProgress;
    float[] mCurrentFilter;
    final DragController mDragController;
    private final DragLayer mDragLayer;
    private Rect mDragRegion;
    private Point mDragVisualizeOffset;
    private ValueAnimator mFilterAnimator;
    private boolean mHasDrawn;
    private final float mInitialScale;
    private float mIntrinsicIconScale;
    private int mLastTouchX;
    private int mLastTouchY;
    Paint mPaint;
    private final int mRegistrationX;
    private final int mRegistrationY;
    private final int[] mTempLoc;
    
    static {
        DragView.sDragAlpha = 1.0f;
    }
    
    public DragView(final Launcher launcher, final Bitmap bitmap, final int mRegistrationX, final int mRegistrationY, final float mInitialScale, final float n) {
        final int n2 = 2;
        super((Context)launcher);
        this.mTempLoc = new int[n2];
        this.mDragVisualizeOffset = null;
        this.mDragRegion = null;
        this.mHasDrawn = false;
        this.mCrossFadeProgress = 0.0f;
        this.mAnimationCancelled = false;
        this.mIntrinsicIconScale = 1.0f;
        this.mDragLayer = launcher.getDragLayer();
        this.mDragController = launcher.getDragController();
        final float n3 = (bitmap.getWidth() + n) / bitmap.getWidth();
        this.setScaleX(mInitialScale);
        this.setScaleY(mInitialScale);
        final float[] array2;
        final float[] array = array2 = new float[n2];
        array2[0] = 0.0f;
        array2[1] = 1.0f;
        (this.mAnim = LauncherAnimUtils.ofFloat(array)).setDuration(150L);
        this.mAnim.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new DragView$1(this, mInitialScale, n3));
        this.mAnim.addListener((Animator$AnimatorListener)new DragView$2(this));
        this.mBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight());
        this.setDragRegion(new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()));
        this.mRegistrationX = mRegistrationX;
        this.mRegistrationY = mRegistrationY;
        this.mInitialScale = mInitialScale;
        final int measureSpec = View$MeasureSpec.makeMeasureSpec(0, 0);
        this.measure(measureSpec, measureSpec);
        this.mPaint = new Paint(n2);
        this.mBlurSizeOutline = this.getResources().getDimensionPixelSize(2131427428);
        this.setElevation(this.getResources().getDimension(2131427413));
    }
    
    private void animateFilterTo(final float[] array) {
        float[] array2;
        if (this.mCurrentFilter == null) {
            array2 = new ColorMatrix().getArray();
        }
        else {
            array2 = this.mCurrentFilter;
        }
        this.mCurrentFilter = Arrays.copyOf(array2, array2.length);
        if (this.mFilterAnimator != null) {
            this.mFilterAnimator.cancel();
        }
        (this.mFilterAnimator = ValueAnimator.ofObject((TypeEvaluator)new FloatArrayEvaluator(this.mCurrentFilter), new Object[] { array2, array })).setDuration((long)120);
        this.mFilterAnimator.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new DragView$4(this));
        this.mFilterAnimator.start();
    }
    
    private void applyTranslation() {
        this.setTranslationX((float)(this.mLastTouchX - this.mRegistrationX + this.mAnimatedShiftX));
        this.setTranslationY((float)(this.mLastTouchY - this.mRegistrationY + this.mAnimatedShiftY));
    }
    
    public void animateShift(final int mAnimatedShiftX, final int mAnimatedShiftY) {
        if (this.mAnim.isStarted()) {
            return;
        }
        this.mAnimatedShiftX = mAnimatedShiftX;
        this.mAnimatedShiftY = mAnimatedShiftY;
        this.applyTranslation();
        this.mAnim.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new DragView$6(this, mAnimatedShiftX, mAnimatedShiftY));
    }
    
    public void animateTo(final int n, final int n2, final Runnable runnable, final int n3) {
        this.mTempLoc[0] = n - this.mRegistrationX;
        this.mTempLoc[1] = n2 - this.mRegistrationY;
        this.mDragLayer.animateViewIntoPosition(this, this.mTempLoc, 1.0f, this.mInitialScale, this.mInitialScale, 0, runnable, n3);
    }
    
    public void cancelAnimation() {
        this.mAnimationCancelled = true;
        if (this.mAnim != null && this.mAnim.isRunning()) {
            this.mAnim.cancel();
        }
    }
    
    public void crossFade(final int n) {
        final float[] array2;
        final float[] array = array2 = new float[2];
        array2[0] = 0.0f;
        array2[1] = 1.0f;
        final ValueAnimator ofFloat = LauncherAnimUtils.ofFloat(array);
        ofFloat.setDuration((long)n);
        ofFloat.setInterpolator((TimeInterpolator)new DecelerateInterpolator(1.5f));
        ofFloat.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new DragView$3(this));
        ofFloat.start();
    }
    
    public int getBlurSizeOutline() {
        return this.mBlurSizeOutline;
    }
    
    public Rect getDragRegion() {
        return this.mDragRegion;
    }
    
    public int getDragRegionTop() {
        return this.mDragRegion.top;
    }
    
    public int getDragRegionWidth() {
        return this.mDragRegion.width();
    }
    
    public Point getDragVisualizeOffset() {
        return this.mDragVisualizeOffset;
    }
    
    public float getInitialScale() {
        return this.mInitialScale;
    }
    
    public float getIntrinsicIconScaleFactor() {
        return this.mIntrinsicIconScale;
    }
    
    public boolean hasDrawn() {
        return this.mHasDrawn;
    }
    
    public void move(final int mLastTouchX, final int mLastTouchY) {
        this.mLastTouchX = mLastTouchX;
        this.mLastTouchY = mLastTouchY;
        this.applyTranslation();
    }
    
    protected void onDraw(final Canvas canvas) {
        final float n = 255.0f;
        final int mHasDrawn = 1;
        final float n2 = 1.0f;
        this.mHasDrawn = (mHasDrawn != 0);
        int n3;
        if (this.mCrossFadeProgress > 0.0f && this.mCrossFadeBitmap != null) {
            n3 = mHasDrawn;
        }
        else {
            n3 = 0;
        }
        if (n3 != 0) {
            int alpha;
            if (n3 != 0) {
                alpha = (int)((n2 - this.mCrossFadeProgress) * n);
            }
            else {
                alpha = 255;
            }
            this.mPaint.setAlpha(alpha);
        }
        canvas.drawBitmap(this.mBitmap, 0.0f, 0.0f, this.mPaint);
        if (n3 != 0) {
            this.mPaint.setAlpha((int)(this.mCrossFadeProgress * n));
            final int save = canvas.save(mHasDrawn);
            canvas.scale(this.mBitmap.getWidth() * n2 / this.mCrossFadeBitmap.getWidth(), this.mBitmap.getHeight() * n2 / this.mCrossFadeBitmap.getHeight());
            canvas.drawBitmap(this.mCrossFadeBitmap, 0.0f, 0.0f, this.mPaint);
            canvas.restoreToCount(save);
        }
    }
    
    protected void onMeasure(final int n, final int n2) {
        this.setMeasuredDimension(this.mBitmap.getWidth(), this.mBitmap.getHeight());
    }
    
    public void remove() {
        if (this.getParent() != null) {
            this.mDragLayer.removeView((View)this);
        }
    }
    
    public void setAlpha(final float alpha) {
        super.setAlpha(alpha);
        this.mPaint.setAlpha((int)(255.0f * alpha));
        this.invalidate();
    }
    
    public void setColor(final int n) {
        if (this.mPaint == null) {
            this.mPaint = new Paint(2);
        }
        if (n != 0) {
            final ColorMatrix colorMatrix = new ColorMatrix();
            colorMatrix.setSaturation(0.0f);
            final ColorMatrix colorMatrix2 = new ColorMatrix();
            Themes.setColorScaleOnMatrix(n, colorMatrix2);
            colorMatrix.postConcat(colorMatrix2);
            this.animateFilterTo(colorMatrix.getArray());
        }
        else if (this.mCurrentFilter == null) {
            this.mPaint.setColorFilter((ColorFilter)null);
            this.invalidate();
        }
        else {
            this.animateFilterTo(new ColorMatrix().getArray());
        }
    }
    
    public void setCrossFadeBitmap(final Bitmap mCrossFadeBitmap) {
        this.mCrossFadeBitmap = mCrossFadeBitmap;
    }
    
    public void setDragRegion(final Rect mDragRegion) {
        this.mDragRegion = mDragRegion;
    }
    
    public void setDragVisualizeOffset(final Point mDragVisualizeOffset) {
        this.mDragVisualizeOffset = mDragVisualizeOffset;
    }
    
    public void setIntrinsicIconScaleFactor(final float mIntrinsicIconScale) {
        this.mIntrinsicIconScale = mIntrinsicIconScale;
    }
    
    public void show(final int n, final int n2) {
        this.mDragLayer.addView((View)this);
        final DragLayer$LayoutParams layoutParams = new DragLayer$LayoutParams(0, 0);
        layoutParams.width = this.mBitmap.getWidth();
        layoutParams.height = this.mBitmap.getHeight();
        layoutParams.customPosition = true;
        this.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        this.move(n, n2);
        this.post((Runnable)new DragView$5(this));
    }
}

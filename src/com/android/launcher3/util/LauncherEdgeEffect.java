// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.graphics.Canvas;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.graphics.Paint$Style;
import android.graphics.Paint;
import android.view.animation.Interpolator;
import android.graphics.Rect;

public class LauncherEdgeEffect
{
    private static final float COS;
    private static final float SIN;
    private float mBaseGlowScale;
    private final Rect mBounds;
    private float mDisplacement;
    private float mDuration;
    private float mGlowAlpha;
    private float mGlowAlphaFinish;
    private float mGlowAlphaStart;
    private float mGlowScaleY;
    private float mGlowScaleYFinish;
    private float mGlowScaleYStart;
    private final Interpolator mInterpolator;
    private final Paint mPaint;
    private float mPullDistance;
    private float mRadius;
    private long mStartTime;
    private int mState;
    private float mTargetDisplacement;
    
    static {
        final double n = 0.5235987755982988;
        SIN = (float)Math.sin(n);
        COS = (float)Math.cos(n);
    }
    
    public LauncherEdgeEffect() {
        final float n = 0.5f;
        this.mState = 0;
        this.mBounds = new Rect();
        this.mPaint = new Paint();
        this.mDisplacement = n;
        this.mTargetDisplacement = n;
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStyle(Paint$Style.FILL);
        this.mInterpolator = (Interpolator)new DecelerateInterpolator();
    }
    
    private void update() {
        final int n = 3;
        final float min = Math.min((AnimationUtils.currentAnimationTimeMillis() - this.mStartTime) / this.mDuration, 1.0f);
        final float interpolation = this.mInterpolator.getInterpolation(min);
        this.mGlowAlpha = this.mGlowAlphaStart + (this.mGlowAlphaFinish - this.mGlowAlphaStart) * interpolation;
        this.mGlowScaleY = interpolation * (this.mGlowScaleYFinish - this.mGlowScaleYStart) + this.mGlowScaleYStart;
        this.mDisplacement = (this.mDisplacement + this.mTargetDisplacement) / 2.0f;
        if (min >= 0.999f) {
            switch (this.mState) {
                case 2: {
                    this.mState = n;
                    this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
                    this.mDuration = 600.0f;
                    this.mGlowAlphaStart = this.mGlowAlpha;
                    this.mGlowScaleYStart = this.mGlowScaleY;
                    this.mGlowAlphaFinish = 0.0f;
                    this.mGlowScaleYFinish = 0.0f;
                    break;
                }
                case 1: {
                    this.mState = 4;
                    this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
                    this.mDuration = 2000.0f;
                    this.mGlowAlphaStart = this.mGlowAlpha;
                    this.mGlowScaleYStart = this.mGlowScaleY;
                    this.mGlowAlphaFinish = 0.0f;
                    this.mGlowScaleYFinish = 0.0f;
                    break;
                }
                case 4: {
                    this.mState = n;
                    break;
                }
                case 3: {
                    this.mState = 0;
                    break;
                }
            }
        }
    }
    
    public boolean draw(final Canvas canvas) {
        boolean b = true;
        boolean b2 = false;
        final float n = 1.0f;
        this.update();
        final float n2 = this.mBounds.centerX();
        final float n3 = this.mBounds.height() - this.mRadius;
        canvas.scale(n, Math.min(this.mGlowScaleY, n) * this.mBaseGlowScale, n2, 0.0f);
        final float n4 = (Math.max(0.0f, Math.min(this.mDisplacement, n)) - 0.5f) * this.mBounds.width() / 2.0f;
        this.mPaint.setAlpha((int)(this.mGlowAlpha * 255.0f));
        canvas.drawCircle(n2 + n4, n3, this.mRadius, this.mPaint);
        if (this.mState == 3 && this.mGlowScaleY == 0.0f) {
            this.mState = 0;
            b2 = b;
        }
        if (this.mState == 0) {
            b = b2;
        }
        return b;
    }
    
    public boolean isFinished() {
        boolean b = false;
        if (this.mState == 0) {
            b = true;
        }
        return b;
    }
    
    public void onPull(final float n) {
        this.onPull(n, 0.5f);
    }
    
    public void onPull(final float n, final float mTargetDisplacement) {
        final boolean mState = true;
        final double n2 = 1.0;
        final long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        this.mTargetDisplacement = mTargetDisplacement;
        if (this.mState == 4 && currentAnimationTimeMillis - this.mStartTime < this.mDuration) {
            return;
        }
        if (this.mState != (mState ? 1 : 0)) {
            this.mGlowScaleY = Math.max(0.0f, this.mGlowScaleY);
        }
        this.mState = (mState ? 1 : 0);
        this.mStartTime = currentAnimationTimeMillis;
        this.mDuration = 167.0f;
        this.mPullDistance += n;
        final float min = Math.min(0.5f, Math.abs(n) * 0.8f + this.mGlowAlpha);
        this.mGlowAlphaStart = min;
        this.mGlowAlpha = min;
        if (this.mPullDistance == 0.0f) {
            this.mGlowScaleYStart = 0.0f;
            this.mGlowScaleY = 0.0f;
        }
        else {
            final float n3 = (float)(Math.max(0.0, n2 - n2 / Math.sqrt(Math.abs(this.mPullDistance) * this.mBounds.height()) - 0.3) / 0.7);
            this.mGlowScaleYStart = n3;
            this.mGlowScaleY = n3;
        }
        this.mGlowAlphaFinish = this.mGlowAlpha;
        this.mGlowScaleYFinish = this.mGlowScaleY;
    }
    
    public void onRelease() {
        this.mPullDistance = 0.0f;
        if (this.mState != 1 && this.mState != 4) {
            return;
        }
        this.mState = 3;
        this.mGlowAlphaStart = this.mGlowAlpha;
        this.mGlowScaleYStart = this.mGlowScaleY;
        this.mGlowAlphaFinish = 0.0f;
        this.mGlowScaleYFinish = 0.0f;
        this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
        this.mDuration = 600.0f;
    }
    
    public void setColor(final int color) {
        this.mPaint.setColor(color);
    }
    
    public void setSize(final int n, final int n2) {
        float min = 1.0f;
        final float mRadius = n * 0.5f / LauncherEdgeEffect.SIN;
        final float n3 = mRadius - LauncherEdgeEffect.COS * mRadius;
        final float n4 = n2 * 0.75f / LauncherEdgeEffect.SIN;
        final float n5 = n4 - LauncherEdgeEffect.COS * n4;
        this.mRadius = mRadius;
        if (n3 > 0.0f) {
            min = Math.min(n5 / n3, min);
        }
        this.mBaseGlowScale = min;
        this.mBounds.set(this.mBounds.left, this.mBounds.top, n, (int)Math.min(n2, n3));
    }
}

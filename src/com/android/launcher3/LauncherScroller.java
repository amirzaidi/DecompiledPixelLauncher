// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.animation.AnimationUtils;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import android.content.Context;
import android.animation.TimeInterpolator;

public class LauncherScroller
{
    private static float DECELERATION_RATE;
    private static final float[] SPLINE_POSITION;
    private static final float[] SPLINE_TIME;
    private static float sViscousFluidNormalize;
    private static float sViscousFluidScale;
    private float mCurrVelocity;
    private int mCurrX;
    private int mCurrY;
    private float mDeceleration;
    private float mDeltaX;
    private float mDeltaY;
    private int mDistance;
    private int mDuration;
    private float mDurationReciprocal;
    private int mFinalX;
    private int mFinalY;
    private boolean mFinished;
    private float mFlingFriction;
    private boolean mFlywheel;
    private TimeInterpolator mInterpolator;
    private int mMaxX;
    private int mMaxY;
    private int mMinX;
    private int mMinY;
    private int mMode;
    private float mPhysicalCoeff;
    private final float mPpi;
    private long mStartTime;
    private int mStartX;
    private int mStartY;
    private float mVelocity;
    
    static {
        final float n = 0.175f;
        float n2 = 0.0f;
        final double n3 = 1.0E-5;
        final int n4 = 100;
        final float sViscousFluidNormalize = 1.0f;
        LauncherScroller.DECELERATION_RATE = (float)(Math.log(0.78) / Math.log(0.9));
        SPLINE_POSITION = new float[101];
        SPLINE_TIME = new float[101];
        int i = 0;
        float n5 = 0.0f;
        while (i < n4) {
            final float n6 = i / 100.0f;
            float n7 = n5;
            float n8 = sViscousFluidNormalize;
            float n9;
            float n10;
            while (true) {
                n9 = (n8 - n7) / 2.0f + n7;
                n10 = 3.0f * n9 * (sViscousFluidNormalize - n9);
                final float n11 = ((sViscousFluidNormalize - n9) * n + 0.35000002f * n9) * n10 + n9 * n9 * n9;
                if (Math.abs(n11 - n6) < n3) {
                    break;
                }
                if (n11 > n6) {
                    n8 = n9;
                }
                else {
                    n7 = n9;
                }
            }
            LauncherScroller.SPLINE_POSITION[i] = n9 * (n9 * n9) + n10 * ((sViscousFluidNormalize - n9) * 0.5f + n9);
            float n12 = sViscousFluidNormalize;
            float n13 = n2;
            float n14;
            float n15;
            while (true) {
                n14 = (n12 - n13) / 2.0f + n13;
                n15 = 3.0f * n14 * (sViscousFluidNormalize - n14);
                final float n16 = ((sViscousFluidNormalize - n14) * 0.5f + n14) * n15 + n14 * n14 * n14;
                if (Math.abs(n16 - n6) < n3) {
                    break;
                }
                if (n16 > n6) {
                    n12 = n14;
                }
                else {
                    n13 = n14;
                }
            }
            LauncherScroller.SPLINE_TIME[i] = n14 * (n14 * n14) + ((sViscousFluidNormalize - n14) * n + 0.35000002f * n14) * n15;
            ++i;
            n2 = n13;
            n5 = n7;
        }
        LauncherScroller.SPLINE_POSITION[n4] = (LauncherScroller.SPLINE_TIME[n4] = sViscousFluidNormalize);
        LauncherScroller.sViscousFluidScale = 8.0f;
        LauncherScroller.sViscousFluidNormalize = sViscousFluidNormalize;
        LauncherScroller.sViscousFluidNormalize = sViscousFluidNormalize / viscousFluid(sViscousFluidNormalize);
    }
    
    public LauncherScroller(final Context context) {
        this(context, null);
    }
    
    public LauncherScroller(final Context context, final Interpolator interpolator) {
        this(context, interpolator, context.getApplicationInfo().targetSdkVersion >= 11);
    }
    
    public LauncherScroller(final Context context, final Interpolator mInterpolator, final boolean mFlywheel) {
        this.mFlingFriction = ViewConfiguration.getScrollFriction();
        this.mFinished = true;
        this.mInterpolator = (TimeInterpolator)mInterpolator;
        this.mPpi = context.getResources().getDisplayMetrics().density * 160.0f;
        this.mDeceleration = this.computeDeceleration(ViewConfiguration.getScrollFriction());
        this.mFlywheel = mFlywheel;
        this.mPhysicalCoeff = this.computeDeceleration(0.84f);
    }
    
    private float computeDeceleration(final float n) {
        return this.mPpi * 386.0878f * n;
    }
    
    private double getSplineDeceleration(final float n) {
        return Math.log(Math.abs(n) * 0.35f / (this.mFlingFriction * this.mPhysicalCoeff));
    }
    
    private double getSplineFlingDistance(final float n) {
        return Math.exp(this.getSplineDeceleration(n) * (LauncherScroller.DECELERATION_RATE / (LauncherScroller.DECELERATION_RATE - 1.0))) * (this.mFlingFriction * this.mPhysicalCoeff);
    }
    
    private int getSplineFlingDuration(final float n) {
        return (int)(Math.exp(this.getSplineDeceleration(n) / (LauncherScroller.DECELERATION_RATE - 1.0)) * 1000.0);
    }
    
    static float viscousFluid(final float n) {
        final float n2 = 0.36787945f;
        final float n3 = 1.0f;
        final float n4 = LauncherScroller.sViscousFluidScale * n;
        float n5;
        if (n4 < n3) {
            n5 = n4 - (n3 - (float)Math.exp(-n4));
        }
        else {
            n5 = (n3 - (float)Math.exp(n3 - n4)) * 0.63212055f + n2;
        }
        return n5 * LauncherScroller.sViscousFluidNormalize;
    }
    
    public void abortAnimation() {
        this.mCurrX = this.mFinalX;
        this.mCurrY = this.mFinalY;
        this.mFinished = true;
    }
    
    public boolean computeScrollOffset() {
        final boolean b = true;
        final float n = 100.0f;
        if (this.mFinished) {
            return false;
        }
        final int n2 = (int)(AnimationUtils.currentAnimationTimeMillis() - this.mStartTime);
        if (n2 < this.mDuration) {
            switch (this.mMode) {
                case 0: {
                    final float n3 = n2 * this.mDurationReciprocal;
                    float n4;
                    if (this.mInterpolator == null) {
                        n4 = viscousFluid(n3);
                    }
                    else {
                        n4 = this.mInterpolator.getInterpolation(n3);
                    }
                    this.mCurrX = this.mStartX + Math.round(this.mDeltaX * n4);
                    this.mCurrY = Math.round(n4 * this.mDeltaY) + this.mStartY;
                    break;
                }
                case 1: {
                    final float n5 = n2 / this.mDuration;
                    final int n6 = (int)(n * n5);
                    float n7 = 1.0f;
                    float n8 = 0.0f;
                    if (n6 < 100) {
                        final float n9 = n6 / n;
                        final float n10 = (n6 + 1) / n;
                        final float n11 = LauncherScroller.SPLINE_POSITION[n6];
                        n8 = (LauncherScroller.SPLINE_POSITION[n6 + 1] - n11) / (n10 - n9);
                        n7 = (n5 - n9) * n8 + n11;
                    }
                    this.mCurrVelocity = n8 * this.mDistance / this.mDuration * 1000.0f;
                    this.mCurrX = this.mStartX + Math.round((this.mFinalX - this.mStartX) * n7);
                    this.mCurrX = Math.min(this.mCurrX, this.mMaxX);
                    this.mCurrX = Math.max(this.mCurrX, this.mMinX);
                    this.mCurrY = this.mStartY + Math.round(n7 * (this.mFinalY - this.mStartY));
                    this.mCurrY = Math.min(this.mCurrY, this.mMaxY);
                    this.mCurrY = Math.max(this.mCurrY, this.mMinY);
                    if (this.mCurrX == this.mFinalX && this.mCurrY == this.mFinalY) {
                        this.mFinished = b;
                        break;
                    }
                    break;
                }
            }
        }
        else {
            this.mCurrX = this.mFinalX;
            this.mCurrY = this.mFinalY;
            this.mFinished = b;
        }
        return b;
    }
    
    public void fling(final int mStartX, final int mStartY, int n, int n2, final int mMinX, final int mMaxX, final int mMinY, final int mMaxY) {
        if (this.mFlywheel && (this.mFinished ^ true)) {
            final float currVelocity = this.getCurrVelocity();
            final float n3 = this.mFinalX - this.mStartX;
            final float n4 = this.mFinalY - this.mStartY;
            final float n5 = (float)Math.hypot(n3, n4);
            final float n6 = n3 / n5;
            final float n7 = n4 / n5;
            final float n8 = n6 * currVelocity;
            final float n9 = currVelocity * n7;
            if (Math.signum(n) == Math.signum(n8) && Math.signum(n2) == Math.signum(n9)) {
                n += (int)n8;
                n2 += (int)n9;
            }
        }
        this.mMode = 1;
        this.mFinished = false;
        final float mVelocity = (float)Math.hypot(n, n2);
        this.mVelocity = mVelocity;
        this.mDuration = this.getSplineFlingDuration(mVelocity);
        this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
        this.mStartX = mStartX;
        this.mStartY = mStartY;
        float n10;
        if (mVelocity == 0.0f) {
            n10 = 1.0f;
        }
        else {
            n10 = n / mVelocity;
        }
        float n11;
        if (mVelocity == 0.0f) {
            n11 = 1.0f;
        }
        else {
            n11 = n2 / mVelocity;
        }
        final double splineFlingDistance = this.getSplineFlingDistance(mVelocity);
        this.mDistance = (int)(Math.signum(mVelocity) * splineFlingDistance);
        this.mMinX = mMinX;
        this.mMaxX = mMaxX;
        this.mMinY = mMinY;
        this.mMaxY = mMaxY;
        this.mFinalX = (int)Math.round(n10 * splineFlingDistance) + mStartX;
        this.mFinalX = Math.min(this.mFinalX, this.mMaxX);
        this.mFinalX = Math.max(this.mFinalX, this.mMinX);
        this.mFinalY = (int)Math.round(n11 * splineFlingDistance) + mStartY;
        this.mFinalY = Math.min(this.mFinalY, this.mMaxY);
        this.mFinalY = Math.max(this.mFinalY, this.mMinY);
    }
    
    public final void forceFinished(final boolean mFinished) {
        this.mFinished = mFinished;
    }
    
    public float getCurrVelocity() {
        float mCurrVelocity;
        if (this.mMode == 1) {
            mCurrVelocity = this.mCurrVelocity;
        }
        else {
            mCurrVelocity = this.mVelocity - this.mDeceleration * this.timePassed() / 2000.0f;
        }
        return mCurrVelocity;
    }
    
    public final int getCurrX() {
        return this.mCurrX;
    }
    
    public final int getCurrY() {
        return this.mCurrY;
    }
    
    public final int getFinalX() {
        return this.mFinalX;
    }
    
    public final boolean isFinished() {
        return this.mFinished;
    }
    
    public void setFinalX(final int mFinalX) {
        this.mFinalX = mFinalX;
        this.mDeltaX = this.mFinalX - this.mStartX;
        this.mFinished = false;
    }
    
    public void setInterpolator(final TimeInterpolator mInterpolator) {
        this.mInterpolator = mInterpolator;
    }
    
    public void startScroll(final int mStartX, final int mStartY, final int n, final int n2, final int mDuration) {
        this.mMode = 0;
        this.mFinished = false;
        this.mDuration = mDuration;
        this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
        this.mStartX = mStartX;
        this.mStartY = mStartY;
        this.mFinalX = mStartX + n;
        this.mFinalY = mStartY + n2;
        this.mDeltaX = n;
        this.mDeltaY = n2;
        this.mDurationReciprocal = 1.0f / this.mDuration;
    }
    
    public int timePassed() {
        return (int)(AnimationUtils.currentAnimationTimeMillis() - this.mStartTime);
    }
}

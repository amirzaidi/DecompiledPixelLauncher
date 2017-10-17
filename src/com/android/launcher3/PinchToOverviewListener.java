// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.MotionEvent;
import android.view.ScaleGestureDetector$OnScaleGestureListener;
import android.content.Context;
import android.view.ScaleGestureDetector;
import android.animation.TimeInterpolator;
import com.android.launcher3.util.TouchController;
import android.view.ScaleGestureDetector$SimpleOnScaleGestureListener;

public class PinchToOverviewListener extends ScaleGestureDetector$SimpleOnScaleGestureListener implements TouchController
{
    private PinchAnimationManager mAnimationManager;
    private TimeInterpolator mInterpolator;
    private Launcher mLauncher;
    private boolean mPinchCanceled;
    private ScaleGestureDetector mPinchDetector;
    private boolean mPinchStarted;
    private float mPreviousProgress;
    private long mPreviousTimeMillis;
    private float mProgressDelta;
    private PinchThresholdManager mThresholdManager;
    private long mTimeDelta;
    private Workspace mWorkspace;
    
    public PinchToOverviewListener(final Launcher mLauncher) {
        this.mWorkspace = null;
        this.mPinchStarted = false;
        this.mPinchCanceled = false;
        this.mLauncher = mLauncher;
        this.mPinchDetector = new ScaleGestureDetector((Context)this.mLauncher, (ScaleGestureDetector$OnScaleGestureListener)this);
    }
    
    private void cancelPinch(final float n, final int n2) {
        if (this.mPinchCanceled) {
            return;
        }
        this.mPinchCanceled = true;
        float n3;
        if (this.mWorkspace.isInOverviewMode()) {
            n3 = 0.0f;
        }
        else {
            n3 = 1.0f;
        }
        this.mAnimationManager.animateToProgress(n, n3, n2, this.mThresholdManager);
        this.mPinchStarted = false;
    }
    
    private int computeDuration(final float n, final float n2) {
        return Math.min((int)(n / Math.abs(n2)), this.mAnimationManager.getNormalOverviewTransitionDuration());
    }
    
    public boolean onControllerInterceptTouchEvent(final MotionEvent motionEvent) {
        this.mPinchDetector.onTouchEvent(motionEvent);
        return this.mPinchStarted;
    }
    
    public boolean onControllerTouchEvent(final MotionEvent motionEvent) {
        if (this.mPinchStarted) {
            if (motionEvent.getPointerCount() <= 2) {
                return this.mPinchDetector.onTouchEvent(motionEvent);
            }
            this.cancelPinch(this.mPreviousProgress, -1);
        }
        return false;
    }
    
    public boolean onScale(final ScaleGestureDetector scaleGestureDetector) {
        final boolean b = true;
        final float n = 0.95f;
        final float n2 = 1.0f;
        if (this.mThresholdManager.getPassedThreshold() == n) {
            return b;
        }
        if (this.mLauncher.getDragController().isDragging()) {
            this.mLauncher.getDragController().cancelDrag();
        }
        final float n3 = scaleGestureDetector.getCurrentSpan() - scaleGestureDetector.getPreviousSpan();
        if ((n3 < 0.0f && this.mWorkspace.isInOverviewMode()) || (n3 > 0.0f && (this.mWorkspace.isInOverviewMode() ^ true))) {
            return false;
        }
        final int width = this.mWorkspace.getWidth();
        final float overviewModeShrinkFactor = this.mWorkspace.getOverviewModeShrinkFactor();
        float n4;
        if (this.mWorkspace.isInOverviewMode()) {
            n4 = overviewModeShrinkFactor;
        }
        else {
            n4 = n2;
        }
        final float interpolation = this.mInterpolator.getInterpolation((Math.max(overviewModeShrinkFactor, Math.min(n4 + n3 / width, n2)) - overviewModeShrinkFactor) / (n2 - overviewModeShrinkFactor));
        this.mAnimationManager.setAnimationProgress(interpolation);
        if (this.mThresholdManager.updateAndAnimatePassedThreshold(interpolation, this.mAnimationManager) == n) {
            return b;
        }
        this.mProgressDelta = interpolation - this.mPreviousProgress;
        this.mPreviousProgress = interpolation;
        this.mTimeDelta = System.currentTimeMillis() - this.mPreviousTimeMillis;
        this.mPreviousTimeMillis = System.currentTimeMillis();
        return false;
    }
    
    public boolean onScaleBegin(final ScaleGestureDetector scaleGestureDetector) {
        final int n = 100;
        final boolean mPinchStarted = true;
        if (this.mLauncher.mState != Launcher$State.WORKSPACE || this.mLauncher.isOnCustomContent()) {
            return false;
        }
        if (this.mAnimationManager != null && this.mAnimationManager.isAnimating()) {
            return false;
        }
        if (this.mLauncher.isWorkspaceLocked()) {
            return false;
        }
        if (this.mWorkspace == null) {
            this.mWorkspace = this.mLauncher.getWorkspace();
            this.mThresholdManager = new PinchThresholdManager(this.mWorkspace);
            this.mAnimationManager = new PinchAnimationManager(this.mLauncher);
        }
        if (this.mWorkspace.isSwitchingState() || this.mWorkspace.mScrollInteractionBegan) {
            return false;
        }
        if (AbstractFloatingView.getTopOpenView(this.mLauncher) != null) {
            return false;
        }
        float mPreviousProgress;
        if (this.mWorkspace.isInOverviewMode()) {
            mPreviousProgress = 0.0f;
        }
        else {
            mPreviousProgress = 1.0f;
        }
        this.mPreviousProgress = mPreviousProgress;
        this.mPreviousTimeMillis = System.currentTimeMillis();
        Object mInterpolator;
        if (this.mWorkspace.isInOverviewMode()) {
            mInterpolator = new LogDecelerateInterpolator(n, 0);
        }
        else {
            mInterpolator = new LogAccelerateInterpolator(n, 0);
        }
        this.mInterpolator = (TimeInterpolator)mInterpolator;
        this.mPinchStarted = mPinchStarted;
        this.mWorkspace.onPrepareStateTransition(mPinchStarted);
        return mPinchStarted;
    }
    
    public void onScaleEnd(final ScaleGestureDetector scaleGestureDetector) {
        final float n = 1.0f;
        int n2 = 1;
        super.onScaleEnd(scaleGestureDetector);
        final float n3 = this.mProgressDelta / this.mTimeDelta;
        final float passedThreshold = this.mThresholdManager.getPassedThreshold();
        int n4;
        if (this.mWorkspace.isInOverviewMode() && n3 >= 0.003f) {
            n4 = n2;
        }
        else if (!this.mWorkspace.isInOverviewMode() && n3 <= -0.003f) {
            n4 = n2;
        }
        else {
            n4 = 0;
        }
        if (n4 != 0 || passedThreshold >= 0.4f) {
            n2 = 0;
        }
        float mPreviousProgress = this.mPreviousProgress;
        if (this.mWorkspace.isInOverviewMode() || n2 != 0) {
            mPreviousProgress = n - this.mPreviousProgress;
        }
        final int computeDuration = this.computeDuration(mPreviousProgress, n3);
        if (n2 != 0) {
            this.cancelPinch(this.mPreviousProgress, computeDuration);
        }
        else if (passedThreshold < 0.95f) {
            float n5;
            if (this.mWorkspace.isInOverviewMode()) {
                n5 = n;
            }
            else {
                n5 = 0.0f;
            }
            this.mAnimationManager.animateToProgress(this.mPreviousProgress, n5, computeDuration, this.mThresholdManager);
        }
        else {
            this.mThresholdManager.reset();
            this.mWorkspace.onEndStateTransition();
        }
        this.mPinchStarted = false;
        this.mPinchCanceled = false;
    }
}

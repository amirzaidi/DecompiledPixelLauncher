// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import android.animation.AnimatorInflater;
import com.android.launcher3.Workspace$Direction;
import android.graphics.Color;
import com.android.launcher3.Utilities;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.AbstractFloatingView;
import android.view.MotionEvent;
import android.animation.Animator$AnimatorListener;
import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ObjectAnimator;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.util.Themes;
import android.content.Context;
import android.support.v4.view.b.a;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import com.android.launcher3.Workspace;
import com.android.launcher3.anim.SpringAnimationHandler;
import com.android.launcher3.Launcher;
import com.android.launcher3.Hotseat;
import com.android.launcher3.graphics.GradientView;
import android.animation.ArgbEvaluator;
import android.view.animation.Interpolator;
import android.animation.AnimatorSet;
import com.android.launcher3.util.TouchController;

public class AllAppsTransitionController implements TouchController, VerticalPullDetector$Listener, SearchUiManager$OnScrollRangeChangeListener
{
    private int mAllAppsBackgroundColor;
    private long mAnimationDuration;
    private AllAppsContainerView mAppsView;
    private AllAppsCaretController mCaretController;
    private float mContainerVelocity;
    private AnimatorSet mCurrentAnimation;
    private final Interpolator mDecelInterpolator;
    private final VerticalPullDetector mDetector;
    private AnimatorSet mDiscoBounceAnimation;
    private final ArgbEvaluator mEvaluator;
    private final Interpolator mFastOutSlowInInterpolator;
    private GradientView mGradientView;
    private Hotseat mHotseat;
    private final Interpolator mHotseatAccelInterpolator;
    private int mHotseatBackgroundColor;
    private final boolean mIsDarkTheme;
    private boolean mIsTranslateWithoutWorkspace;
    private final Launcher mLauncher;
    private boolean mNoIntercept;
    private float mProgress;
    private final VerticalPullDetector$ScrollInterpolator mScrollInterpolator;
    private float mShiftRange;
    private float mShiftStart;
    private SpringAnimationHandler mSpringAnimationHandler;
    private float mStatusBarHeight;
    private boolean mTouchEventStartedOnHotseat;
    private Workspace mWorkspace;
    private final Interpolator mWorkspaceAccelnterpolator;
    
    public AllAppsTransitionController(final Launcher mLauncher) {
        this.mWorkspaceAccelnterpolator = (Interpolator)new AccelerateInterpolator(2.0f);
        this.mHotseatAccelInterpolator = (Interpolator)new AccelerateInterpolator(1.5f);
        this.mDecelInterpolator = (Interpolator)new DecelerateInterpolator(3.0f);
        this.mFastOutSlowInInterpolator = (Interpolator)new a();
        this.mScrollInterpolator = new VerticalPullDetector$ScrollInterpolator();
        this.mIsTranslateWithoutWorkspace = false;
        this.mLauncher = mLauncher;
        (this.mDetector = new VerticalPullDetector((Context)mLauncher)).setListener(this);
        this.mShiftRange = 10.0f;
        this.mProgress = 1.0f;
        this.mEvaluator = new ArgbEvaluator();
        this.mAllAppsBackgroundColor = Themes.getAttrColor((Context)mLauncher, 16843827);
        this.mIsDarkTheme = Themes.getAttrBoolean((Context)this.mLauncher, 2130772010);
    }
    
    private void calculateDuration(final float n, final float n2) {
        this.mAnimationDuration = this.mDetector.calculateDuration(n, n2 / this.mShiftRange);
    }
    
    private void cancelAnimation() {
        if (this.mCurrentAnimation != null) {
            this.mCurrentAnimation.cancel();
            this.mCurrentAnimation = null;
        }
        this.cancelDiscoveryAnimation();
    }
    
    private void cleanUpAnimation() {
        this.mCurrentAnimation = null;
    }
    
    private boolean hasSpringAnimationHandler() {
        boolean b = false;
        if (FeatureFlags.LAUNCHER3_PHYSICS && this.mSpringAnimationHandler != null) {
            b = true;
        }
        return b;
    }
    
    private boolean isInDisallowRecatchBottomZone() {
        return this.mProgress > 0.9125f;
    }
    
    private boolean isInDisallowRecatchTopZone() {
        return this.mProgress < 0.0875f;
    }
    
    private void updateAllAppsBg(final float progress) {
        if (this.mGradientView == null) {
            (this.mGradientView = (GradientView)this.mLauncher.findViewById(2131624008)).setVisibility(0);
        }
        this.mGradientView.setProgress(progress);
    }
    
    private void updateLightStatusBar(final float n) {
        final int n2 = 1;
        int n3;
        if (n <= this.mShiftRange / 4.0f) {
            n3 = n2;
        }
        else {
            n3 = 0;
        }
        if (n3 != 0) {
            this.mLauncher.getSystemUiController().updateUiState(n2, this.mIsDarkTheme ^ true);
        }
        else {
            this.mLauncher.getSystemUiController().updateUiState(n2, 0);
        }
    }
    
    public boolean animateToAllApps(final AnimatorSet mCurrentAnimation, final long mAnimationDuration) {
        final int n = 1;
        if (mCurrentAnimation == null) {
            return n != 0;
        }
        Object interpolator;
        boolean b;
        if (this.mDetector.isIdleState()) {
            this.preparePull(n != 0);
            this.mAnimationDuration = mAnimationDuration;
            this.mShiftStart = this.mAppsView.getTranslationY();
            interpolator = this.mFastOutSlowInInterpolator;
            b = (n != 0);
        }
        else {
            this.mScrollInterpolator.setVelocityAtZero(Math.abs(this.mContainerVelocity));
            interpolator = this.mScrollInterpolator;
            final float mProgress = this.mProgress + this.mContainerVelocity * 16.0f / this.mShiftRange;
            if (mProgress >= 0.0f) {
                this.mProgress = mProgress;
            }
            b = false;
        }
        final float[] array = { this.mProgress, 0.0f };
        array[n] = 0.0f;
        final ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object)this, "progress", array);
        ofFloat.setDuration(this.mAnimationDuration);
        ofFloat.setInterpolator((TimeInterpolator)interpolator);
        mCurrentAnimation.play((Animator)ofFloat);
        mCurrentAnimation.addListener((Animator$AnimatorListener)new AllAppsTransitionController$1(this));
        this.mCurrentAnimation = mCurrentAnimation;
        return b;
    }
    
    public boolean animateToWorkspace(final AnimatorSet mCurrentAnimation, final long mAnimationDuration) {
        final float n = 1.0f;
        final int n2 = 1;
        if (mCurrentAnimation == null) {
            return n2 != 0;
        }
        Object interpolator;
        boolean b;
        if (this.mDetector.isIdleState()) {
            this.preparePull(n2 != 0);
            this.mAnimationDuration = mAnimationDuration;
            this.mShiftStart = this.mAppsView.getTranslationY();
            interpolator = this.mFastOutSlowInInterpolator;
            b = (n2 != 0);
        }
        else {
            this.mScrollInterpolator.setVelocityAtZero(Math.abs(this.mContainerVelocity));
            interpolator = this.mScrollInterpolator;
            final float mProgress = this.mProgress + this.mContainerVelocity * 16.0f / this.mShiftRange;
            if (mProgress <= n) {
                this.mProgress = mProgress;
            }
            b = false;
        }
        final float[] array = { this.mProgress, 0.0f };
        array[n2] = n;
        final ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object)this, "progress", array);
        ofFloat.setDuration(this.mAnimationDuration);
        ofFloat.setInterpolator((TimeInterpolator)interpolator);
        mCurrentAnimation.play((Animator)ofFloat);
        mCurrentAnimation.addListener((Animator$AnimatorListener)new AllAppsTransitionController$4(this));
        this.mCurrentAnimation = mCurrentAnimation;
        return b;
    }
    
    public void cancelDiscoveryAnimation() {
        if (this.mDiscoBounceAnimation == null) {
            return;
        }
        this.mDiscoBounceAnimation.cancel();
        this.mDiscoBounceAnimation = null;
    }
    
    public void finishPullDown() {
        this.mAppsView.setVisibility(4);
        this.mHotseat.setBackgroundTransparent(false);
        this.mHotseat.setVisibility(0);
        this.mAppsView.reset();
        if (this.hasSpringAnimationHandler()) {
            this.mSpringAnimationHandler.reset();
        }
        this.setProgress(1.0f);
    }
    
    public void finishPullUp() {
        this.mHotseat.setVisibility(4);
        if (this.hasSpringAnimationHandler()) {
            this.mSpringAnimationHandler.reset();
        }
        this.setProgress(0.0f);
    }
    
    public boolean isTransitioning() {
        return this.mDetector.isDraggingOrSettling();
    }
    
    public boolean onControllerInterceptTouchEvent(final MotionEvent motionEvent) {
        int n = 2;
        int mNoIntercept = 1;
        if (motionEvent.getAction() == 0) {
            this.mNoIntercept = false;
            this.mTouchEventStartedOnHotseat = this.mLauncher.getDragLayer().isEventOverHotseat(motionEvent);
            if (!this.mLauncher.isAllAppsVisible() && this.mLauncher.getWorkspace().workspaceInModalState()) {
                this.mNoIntercept = (mNoIntercept != 0);
            }
            else if (this.mLauncher.isAllAppsVisible() && (this.mAppsView.shouldContainerScroll(motionEvent) ^ true)) {
                this.mNoIntercept = (mNoIntercept != 0);
            }
            else if (AbstractFloatingView.getTopOpenView(this.mLauncher) != null) {
                this.mNoIntercept = (mNoIntercept != 0);
            }
            else {
                if (this.mDetector.isIdleState()) {
                    if (this.mLauncher.isAllAppsVisible()) {
                        mNoIntercept = 0;
                    }
                    else {
                        n = mNoIntercept;
                        mNoIntercept = 0;
                    }
                }
                else if (this.isInDisallowRecatchBottomZone()) {
                    n = mNoIntercept;
                    mNoIntercept = 0;
                }
                else if (this.isInDisallowRecatchTopZone()) {
                    mNoIntercept = 0;
                }
                else {
                    n = 3;
                }
                this.mDetector.setDetectableScrollConditions(n, mNoIntercept != 0);
            }
        }
        if (this.mNoIntercept) {
            return false;
        }
        this.mDetector.onTouchEvent(motionEvent);
        return (!this.mDetector.isSettlingState() || (!this.isInDisallowRecatchBottomZone() && !this.isInDisallowRecatchTopZone())) && this.mDetector.isDraggingOrSettling();
    }
    
    public boolean onControllerTouchEvent(final MotionEvent motionEvent) {
        if (this.hasSpringAnimationHandler()) {
            this.mSpringAnimationHandler.addMovement(motionEvent);
        }
        return this.mDetector.onTouchEvent(motionEvent);
    }
    
    public boolean onDrag(final float n, final float mContainerVelocity) {
        if (this.mAppsView == null) {
            return false;
        }
        this.mContainerVelocity = mContainerVelocity;
        this.setProgress(Math.min(Math.max(0.0f, this.mShiftStart + n), this.mShiftRange) / this.mShiftRange);
        return true;
    }
    
    public void onDragEnd(final float n, final boolean b) {
        final int n2 = 1;
        if (this.mAppsView == null) {
            return;
        }
        int n3;
        if (this.mTouchEventStartedOnHotseat) {
            n3 = 2;
        }
        else {
            n3 = n2;
        }
        if (b) {
            if (n < 0.0f) {
                this.calculateDuration(n, this.mAppsView.getTranslationY());
                if (!this.mLauncher.isAllAppsVisible()) {
                    this.mLauncher.getUserEventDispatcher().logActionOnContainer(4, n2, n3);
                }
                this.mLauncher.showAppsView(n2 != 0, false);
                if (this.hasSpringAnimationHandler()) {
                    this.mSpringAnimationHandler.animateToFinalPosition(0.0f, n2);
                }
            }
            else {
                this.calculateDuration(n, Math.abs(this.mShiftRange - this.mAppsView.getTranslationY()));
                this.mLauncher.showWorkspace(n2 != 0);
            }
        }
        else if (this.mAppsView.getTranslationY() > this.mShiftRange / 2.0f) {
            this.calculateDuration(n, Math.abs(this.mShiftRange - this.mAppsView.getTranslationY()));
            this.mLauncher.showWorkspace(n2 != 0);
        }
        else {
            this.calculateDuration(n, Math.abs(this.mAppsView.getTranslationY()));
            if (!this.mLauncher.isAllAppsVisible()) {
                this.mLauncher.getUserEventDispatcher().logActionOnContainer(3, n2, n3);
            }
            this.mLauncher.showAppsView(n2 != 0, false);
        }
    }
    
    public void onDragStart(final boolean b) {
        this.mCaretController.onDragStart();
        this.cancelAnimation();
        this.mCurrentAnimation = LauncherAnimUtils.createAnimatorSet();
        this.mShiftStart = this.mAppsView.getTranslationY();
        this.preparePull(b);
        if (this.hasSpringAnimationHandler()) {
            this.mSpringAnimationHandler.skipToEnd();
        }
    }
    
    public void onScrollRangeChanged(final int n) {
        this.mShiftRange = n;
        this.setProgress(this.mProgress);
    }
    
    public void preparePull(final boolean b) {
        if (b) {
            this.mStatusBarHeight = this.mLauncher.getDragLayer().getInsets().top;
            this.mHotseat.setVisibility(0);
            this.mHotseatBackgroundColor = this.mHotseat.getBackgroundDrawableColor();
            this.mHotseat.setBackgroundTransparent(true);
            if (!this.mLauncher.isAllAppsVisible()) {
                this.mLauncher.tryAndUpdatePredictedApps();
                this.mAppsView.setVisibility(0);
            }
        }
    }
    
    public void setProgress(final float mProgress) {
        final float n = 1.0f;
        final float n2 = 0.125f;
        final float n3 = this.mShiftRange * this.mProgress;
        this.mProgress = mProgress;
        final float translationY = mProgress * this.mShiftRange;
        final float boundToRange = Utilities.boundToRange(mProgress, 0.0f, n);
        final float alpha = n - boundToRange;
        final float interpolation = this.mWorkspaceAccelnterpolator.getInterpolation(boundToRange);
        final float interpolation2 = this.mHotseatAccelInterpolator.getInterpolation(boundToRange);
        (int)this.mEvaluator.evaluate(this.mDecelInterpolator.getInterpolation(alpha), (Object)this.mHotseatBackgroundColor, (Object)this.mAllAppsBackgroundColor);
        Color.alpha((int)this.mEvaluator.evaluate(alpha, (Object)this.mHotseatBackgroundColor, (Object)this.mAllAppsBackgroundColor));
        this.updateAllAppsBg(alpha);
        this.mAppsView.getContentView().setAlpha(alpha);
        this.mAppsView.setTranslationY(translationY);
        if (!this.mLauncher.getDeviceProfile().isVerticalBarLayout()) {
            this.mWorkspace.setHotseatTranslationAndAlpha(Workspace$Direction.Y, -this.mShiftRange + translationY, interpolation2);
        }
        else {
            this.mWorkspace.setHotseatTranslationAndAlpha(Workspace$Direction.Y, (-this.mShiftRange + translationY) * n2, interpolation2);
        }
        if (this.mIsTranslateWithoutWorkspace) {
            return;
        }
        this.mWorkspace.setWorkspaceYTranslationAndAlpha((-this.mShiftRange + translationY) * n2, interpolation);
        if (!this.mDetector.isDraggingState()) {
            this.mContainerVelocity = this.mDetector.computeVelocity(translationY - n3, System.currentTimeMillis());
        }
        this.mCaretController.updateCaret(mProgress, this.mContainerVelocity, this.mDetector.isDraggingState());
        this.updateLightStatusBar(translationY);
    }
    
    public void setupViews(final AllAppsContainerView mAppsView, final Hotseat mHotseat, final Workspace mWorkspace) {
        this.mAppsView = mAppsView;
        this.mHotseat = mHotseat;
        this.mWorkspace = mWorkspace;
        this.mHotseat.bringToFront();
        this.mCaretController = new AllAppsCaretController(this.mWorkspace.getPageIndicator().getCaretDrawable(), this.mLauncher);
        this.mAppsView.getSearchUiManager().addOnScrollRangeChangeListener(this);
        this.mSpringAnimationHandler = this.mAppsView.getSpringAnimationHandler();
    }
    
    public void showDiscoveryBounce() {
        this.cancelDiscoveryAnimation();
        (this.mDiscoBounceAnimation = (AnimatorSet)AnimatorInflater.loadAnimator((Context)this.mLauncher, 2131034112)).addListener((Animator$AnimatorListener)new AllAppsTransitionController$2(this));
        this.mDiscoBounceAnimation.setTarget((Object)this);
        this.mAppsView.post((Runnable)new AllAppsTransitionController$3(this));
    }
}

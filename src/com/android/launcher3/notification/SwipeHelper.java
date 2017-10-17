// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.notification;

import android.animation.Animator;
import android.animation.Animator$AnimatorListener;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.util.Property;
import android.animation.ObjectAnimator;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.content.Context;
import android.view.VelocityTracker;
import android.os.Handler;
import java.util.HashMap;
import android.view.View;

public class SwipeHelper
{
    private int DEFAULT_ESCAPE_ANIMATION_DURATION;
    private int MAX_DISMISS_VELOCITY;
    private int MAX_ESCAPE_ANIMATION_DURATION;
    private float SWIPE_ESCAPE_VELOCITY;
    private SwipeHelper$Callback mCallback;
    private boolean mCanCurrViewBeDimissed;
    private View mCurrView;
    private float mDensityScale;
    private boolean mDisableHwLayers;
    private HashMap mDismissPendingMap;
    private boolean mDragging;
    private int mFalsingThreshold;
    private FlingAnimationUtils mFlingAnimationUtils;
    private Handler mHandler;
    private float mInitialTouchPos;
    private SwipeHelper$LongPressListener mLongPressListener;
    private boolean mLongPressSent;
    private long mLongPressTimeout;
    private float mMaxSwipeProgress;
    private float mMinSwipeProgress;
    private float mPagingTouchSlop;
    private float mPerpendicularInitialTouchPos;
    private boolean mSnappingChild;
    private int mSwipeDirection;
    private final int[] mTmpPos;
    private boolean mTouchAboveFalsingThreshold;
    private float mTranslation;
    private VelocityTracker mVelocityTracker;
    private Runnable mWatchLongPress;
    
    public SwipeHelper(final int mSwipeDirection, final SwipeHelper$Callback mCallback, final Context context) {
        this.SWIPE_ESCAPE_VELOCITY = 100.0f;
        this.DEFAULT_ESCAPE_ANIMATION_DURATION = 200;
        this.MAX_ESCAPE_ANIMATION_DURATION = 400;
        this.MAX_DISMISS_VELOCITY = 4000;
        this.mMinSwipeProgress = 0.0f;
        this.mMaxSwipeProgress = 1.0f;
        this.mTranslation = 0.0f;
        this.mTmpPos = new int[2];
        this.mDismissPendingMap = new HashMap();
        this.mCallback = mCallback;
        this.mHandler = new Handler();
        this.mSwipeDirection = mSwipeDirection;
        this.mVelocityTracker = VelocityTracker.obtain();
        this.mDensityScale = context.getResources().getDisplayMetrics().density;
        this.mPagingTouchSlop = ViewConfiguration.get(context).getScaledPagingTouchSlop();
        this.mLongPressTimeout = (long)(ViewConfiguration.getLongPressTimeout() * 1.5f);
        this.mFalsingThreshold = context.getResources().getDimensionPixelSize(2131427478);
        this.mFlingAnimationUtils = new FlingAnimationUtils(context, this.getMaxEscapeAnimDuration() / 1000.0f);
    }
    
    private int getFalsingThreshold() {
        return (int)(this.mCallback.getFalsingThresholdFactor() * this.mFalsingThreshold);
    }
    
    private float getMaxVelocity() {
        return this.MAX_DISMISS_VELOCITY * this.mDensityScale;
    }
    
    private float getPerpendicularPos(final MotionEvent motionEvent) {
        float n;
        if (this.mSwipeDirection == 0) {
            n = motionEvent.getY();
        }
        else {
            n = motionEvent.getX();
        }
        return n;
    }
    
    private float getPos(final MotionEvent motionEvent) {
        float n;
        if (this.mSwipeDirection == 0) {
            n = motionEvent.getX();
        }
        else {
            n = motionEvent.getY();
        }
        return n;
    }
    
    private float getSwipeAlpha(final float n) {
        return Math.min(0.0f, Math.max(1.0f, n / 0.5f));
    }
    
    private float getSwipeProgressForOffset(final View view, final float n) {
        return Math.min(Math.max(this.mMinSwipeProgress, Math.abs(n / this.getSize(view))), this.mMaxSwipeProgress);
    }
    
    private float getVelocity(final VelocityTracker velocityTracker) {
        float n;
        if (this.mSwipeDirection == 0) {
            n = velocityTracker.getXVelocity();
        }
        else {
            n = velocityTracker.getYVelocity();
        }
        return n;
    }
    
    public static void invalidateGlobalRegion(final View view) {
        invalidateGlobalRegion(view, new RectF((float)view.getLeft(), (float)view.getTop(), (float)view.getRight(), (float)view.getBottom()));
    }
    
    public static void invalidateGlobalRegion(View view, final RectF rectF) {
        while (view.getParent() != null && view.getParent() instanceof View) {
            final View view2 = (View)view.getParent();
            view2.getMatrix().mapRect(rectF);
            view2.invalidate((int)Math.floor(rectF.left), (int)Math.floor(rectF.top), (int)Math.ceil(rectF.right), (int)Math.ceil(rectF.bottom));
            view = view2;
        }
    }
    
    private void updateSwipeProgressFromOffset(final View view, final boolean b) {
        this.updateSwipeProgressFromOffset(view, b, this.getTranslation(view));
    }
    
    private void updateSwipeProgressFromOffset(final View view, final boolean b, final float n) {
        final float swipeProgressForOffset = this.getSwipeProgressForOffset(view, n);
        if (!this.mCallback.updateSwipeProgress(view, b, swipeProgressForOffset) && b) {
            if (!this.mDisableHwLayers) {
                if (swipeProgressForOffset != 0.0f && swipeProgressForOffset != 1.0f) {
                    view.setLayerType(2, (Paint)null);
                }
                else {
                    view.setLayerType(0, (Paint)null);
                }
            }
            view.setAlpha(this.getSwipeAlpha(swipeProgressForOffset));
        }
        invalidateGlobalRegion(view);
    }
    
    protected ObjectAnimator createTranslationAnimation(final View view, final float n) {
        Property property;
        if (this.mSwipeDirection == 0) {
            property = View.TRANSLATION_X;
        }
        else {
            property = View.TRANSLATION_Y;
        }
        return ObjectAnimator.ofFloat((Object)view, property, new float[] { n });
    }
    
    public void dismissChild(final View view, final float n, final Runnable runnable, final long startDelay, final boolean b, long min, final boolean b2) {
        final boolean canChildBeDismissed = this.mCallback.canChildBeDismissed(view);
        int n2;
        if (view.getLayoutDirection() == 1) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        final boolean b3 = n == 0.0f && (this.getTranslation(view) == 0.0f || b2) && this.mSwipeDirection == 1 && true;
        int n3;
        if (n == 0.0f && (this.getTranslation(view) == 0.0f || b2)) {
            n3 = n2;
        }
        else {
            n3 = 0;
        }
        float size;
        if (n < 0.0f || (n == 0.0f && this.getTranslation(view) < 0.0f && (b2 ^ true)) || n3 != 0 || b3) {
            size = -this.getSize(view);
        }
        else {
            size = this.getSize(view);
        }
        if (min == 0L) {
            final long n4 = this.MAX_ESCAPE_ANIMATION_DURATION;
            if (n != 0.0f) {
                min = Math.min(n4, (int)(Math.abs(size - this.getTranslation(view)) * 1000.0f / Math.abs(n)));
            }
            else {
                min = this.DEFAULT_ESCAPE_ANIMATION_DURATION;
            }
        }
        if (!this.mDisableHwLayers) {
            view.setLayerType(2, (Paint)null);
        }
        final Animator viewTranslationAnimator = this.getViewTranslationAnimator(view, size, (ValueAnimator$AnimatorUpdateListener)new SwipeHelper$2(this, view, canChildBeDismissed));
        if (viewTranslationAnimator == null) {
            return;
        }
        if (b) {
            viewTranslationAnimator.setInterpolator((TimeInterpolator)Interpolators.FAST_OUT_LINEAR_IN);
            viewTranslationAnimator.setDuration(min);
        }
        else {
            this.mFlingAnimationUtils.applyDismissing(viewTranslationAnimator, this.getTranslation(view), size, n, this.getSize(view));
        }
        if (startDelay > 0L) {
            viewTranslationAnimator.setStartDelay(startDelay);
        }
        viewTranslationAnimator.addListener((Animator$AnimatorListener)new SwipeHelper$3(this, view, canChildBeDismissed, runnable));
        this.prepareDismissAnimation(view, viewTranslationAnimator);
        this.mDismissPendingMap.put(view, viewTranslationAnimator);
        viewTranslationAnimator.start();
    }
    
    public void dismissChild(final View view, final float n, final boolean b) {
        final long n2 = 0L;
        this.dismissChild(view, n, null, n2, b, n2, false);
    }
    
    protected float getEscapeVelocity() {
        return this.getUnscaledEscapeVelocity() * this.mDensityScale;
    }
    
    protected long getMaxEscapeAnimDuration() {
        return this.MAX_ESCAPE_ANIMATION_DURATION;
    }
    
    protected float getSize(final View view) {
        int n;
        if (this.mSwipeDirection == 0) {
            n = view.getMeasuredWidth();
        }
        else {
            n = view.getMeasuredHeight();
        }
        return n;
    }
    
    protected float getTranslation(final View view) {
        float n;
        if (this.mSwipeDirection == 0) {
            n = view.getTranslationX();
        }
        else {
            n = view.getTranslationY();
        }
        return n;
    }
    
    protected float getUnscaledEscapeVelocity() {
        return this.SWIPE_ESCAPE_VELOCITY;
    }
    
    protected Animator getViewTranslationAnimator(final View view, final float n, final ValueAnimator$AnimatorUpdateListener valueAnimator$AnimatorUpdateListener) {
        final ObjectAnimator translationAnimation = this.createTranslationAnimation(view, n);
        if (valueAnimator$AnimatorUpdateListener != null) {
            translationAnimation.addUpdateListener(valueAnimator$AnimatorUpdateListener);
        }
        return (Animator)translationAnimation;
    }
    
    protected boolean handleUpEvent(final MotionEvent motionEvent, final View view, final float n, final float n2) {
        return false;
    }
    
    protected boolean isDismissGesture(final MotionEvent motionEvent) {
        boolean canChildBeDismissed = false;
        if ((!this.mCallback.isAntiFalsingNeeded() || !(this.mTouchAboveFalsingThreshold ^ true)) && (this.swipedFastEnough() || this.swipedFarEnough()) && motionEvent.getActionMasked() == 1) {
            canChildBeDismissed = this.mCallback.canChildBeDismissed(this.mCurrView);
        }
        return canChildBeDismissed;
    }
    
    public void onDownUpdate(final View view) {
    }
    
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        boolean mLongPressSent = true;
        switch (motionEvent.getAction()) {
            case 0: {
                this.mTouchAboveFalsingThreshold = false;
                this.mDragging = false;
                this.mSnappingChild = false;
                this.mLongPressSent = false;
                this.mVelocityTracker.clear();
                this.mCurrView = this.mCallback.getChildAtPosition(motionEvent);
                if (this.mCurrView == null) {
                    break;
                }
                this.onDownUpdate(this.mCurrView);
                this.mCanCurrViewBeDimissed = this.mCallback.canChildBeDismissed(this.mCurrView);
                this.mVelocityTracker.addMovement(motionEvent);
                this.mInitialTouchPos = this.getPos(motionEvent);
                this.mPerpendicularInitialTouchPos = this.getPerpendicularPos(motionEvent);
                this.mTranslation = this.getTranslation(this.mCurrView);
                if (this.mLongPressListener != null) {
                    if (this.mWatchLongPress == null) {
                        this.mWatchLongPress = new SwipeHelper$1(this, motionEvent);
                    }
                    this.mHandler.postDelayed(this.mWatchLongPress, this.mLongPressTimeout);
                    break;
                }
                break;
            }
            case 2: {
                if (this.mCurrView == null || !(this.mLongPressSent ^ true)) {
                    break;
                }
                this.mVelocityTracker.addMovement(motionEvent);
                final float pos = this.getPos(motionEvent);
                final float perpendicularPos = this.getPerpendicularPos(motionEvent);
                final float n = pos - this.mInitialTouchPos;
                final float n2 = perpendicularPos - this.mPerpendicularInitialTouchPos;
                if (Math.abs(n) > this.mPagingTouchSlop && Math.abs(n) > Math.abs(n2)) {
                    this.mCallback.onBeginDrag(this.mCurrView);
                    this.mDragging = mLongPressSent;
                    this.mInitialTouchPos = this.getPos(motionEvent);
                    this.mTranslation = this.getTranslation(this.mCurrView);
                    this.removeLongPressCallback();
                    break;
                }
                break;
            }
            case 1:
            case 3: {
                boolean mLongPressSent2;
                if (!this.mDragging) {
                    mLongPressSent2 = this.mLongPressSent;
                }
                else {
                    mLongPressSent2 = mLongPressSent;
                }
                this.mDragging = false;
                this.mCurrView = null;
                this.mLongPressSent = false;
                this.removeLongPressCallback();
                if (mLongPressSent2) {
                    return mLongPressSent;
                }
                break;
            }
        }
        if (!this.mDragging) {
            mLongPressSent = this.mLongPressSent;
        }
        return mLongPressSent;
    }
    
    protected void onMoveUpdate(final View view, final float n, final float n2) {
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        final boolean mTouchAboveFalsingThreshold = true;
        if (this.mLongPressSent) {
            return mTouchAboveFalsingThreshold;
        }
        if (this.mDragging) {
            this.mVelocityTracker.addMovement(motionEvent);
            switch (motionEvent.getAction()) {
                case 2:
                case 4: {
                    if (this.mCurrView != null) {
                        final float n = this.getPos(motionEvent) - this.mInitialTouchPos;
                        final float abs = Math.abs(n);
                        if (abs >= this.getFalsingThreshold()) {
                            this.mTouchAboveFalsingThreshold = mTouchAboveFalsingThreshold;
                        }
                        float n2;
                        if (this.mCallback.canChildBeDismissed(this.mCurrView) ^ true) {
                            final float size = this.getSize(this.mCurrView);
                            n2 = 0.25f * size;
                            if (abs >= size) {
                                if (n <= 0.0f) {
                                    n2 = -n2;
                                }
                            }
                            else {
                                n2 *= (float)Math.sin(n / size * 1.5707963267948966);
                            }
                        }
                        else {
                            n2 = n;
                        }
                        this.setTranslation(this.mCurrView, this.mTranslation + n2);
                        this.updateSwipeProgressFromOffset(this.mCurrView, this.mCanCurrViewBeDimissed);
                        this.onMoveUpdate(this.mCurrView, this.mTranslation + n2, n2);
                        break;
                    }
                    break;
                }
                case 1:
                case 3: {
                    if (this.mCurrView != null) {
                        this.mVelocityTracker.computeCurrentVelocity(1000, this.getMaxVelocity());
                        final float velocity = this.getVelocity(this.mVelocityTracker);
                        if (!this.handleUpEvent(motionEvent, this.mCurrView, velocity, this.getTranslation(this.mCurrView))) {
                            if (this.isDismissGesture(motionEvent)) {
                                this.dismissChild(this.mCurrView, velocity, this.swipedFastEnough() ^ true);
                            }
                            else {
                                this.mCallback.onDragCancelled(this.mCurrView);
                                this.snapChild(this.mCurrView, 0.0f, velocity);
                            }
                            this.mCurrView = null;
                        }
                        this.mDragging = false;
                        break;
                    }
                    break;
                }
            }
            return mTouchAboveFalsingThreshold;
        }
        if (this.mCallback.getChildAtPosition(motionEvent) != null) {
            this.onInterceptTouchEvent(motionEvent);
            return mTouchAboveFalsingThreshold;
        }
        this.removeLongPressCallback();
        return false;
    }
    
    public void onTranslationUpdate(final View view, final float n, final boolean b) {
        this.updateSwipeProgressFromOffset(view, b, n);
    }
    
    protected void prepareDismissAnimation(final View view, final Animator animator) {
    }
    
    protected void prepareSnapBackAnimation(final View view, final Animator animator) {
    }
    
    public void removeLongPressCallback() {
        if (this.mWatchLongPress != null) {
            this.mHandler.removeCallbacks(this.mWatchLongPress);
            this.mWatchLongPress = null;
        }
    }
    
    public void setDisableHardwareLayers(final boolean mDisableHwLayers) {
        this.mDisableHwLayers = mDisableHwLayers;
    }
    
    protected void setTranslation(final View view, final float n) {
        if (view == null) {
            return;
        }
        if (this.mSwipeDirection == 0) {
            view.setTranslationX(n);
        }
        else {
            view.setTranslationY(n);
        }
    }
    
    public void snapChild(final View view, final float n, final float n2) {
        final boolean canChildBeDismissed = this.mCallback.canChildBeDismissed(view);
        final Animator viewTranslationAnimator = this.getViewTranslationAnimator(view, n, (ValueAnimator$AnimatorUpdateListener)new SwipeHelper$4(this, view, canChildBeDismissed));
        if (viewTranslationAnimator == null) {
            return;
        }
        viewTranslationAnimator.setDuration(150L);
        viewTranslationAnimator.addListener((Animator$AnimatorListener)new SwipeHelper$5(this, view, canChildBeDismissed, n));
        this.prepareSnapBackAnimation(view, viewTranslationAnimator);
        this.mSnappingChild = true;
        viewTranslationAnimator.start();
    }
    
    protected boolean swipedFarEnough() {
        return Math.abs(this.getTranslation(this.mCurrView)) > this.getSize(this.mCurrView) * 0.4;
    }
    
    protected boolean swipedFastEnough() {
        boolean b = true;
        final float velocity = this.getVelocity(this.mVelocityTracker);
        final float translation = this.getTranslation(this.mCurrView);
        if (Math.abs(velocity) > this.getEscapeVelocity()) {
            if ((velocity > 0.0f && b) != (translation > 0.0f && b)) {
                b = false;
            }
        }
        else {
            b = false;
        }
        return b;
    }
}

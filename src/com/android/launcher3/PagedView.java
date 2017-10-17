// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.Animator;
import android.os.Bundle;
import android.animation.TimeInterpolator;
import android.util.DisplayMetrics;
import android.view.View$MeasureSpec;
import android.animation.LayoutTransition;
import android.animation.LayoutTransition$TransitionListener;
import android.view.accessibility.AccessibilityNodeInfo$AccessibilityAction;
import android.view.accessibility.AccessibilityNodeInfo;
import com.android.launcher3.util.Themes;
import android.view.ViewConfiguration;
import android.view.ViewGroup$LayoutParams;
import java.util.ArrayList;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.animation.ObjectAnimator;
import android.animation.Animator$AnimatorListener;
import com.android.launcher3.anim.PropertyListBuilder;
import android.view.MotionEvent;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.content.Context;
import android.view.VelocityTracker;
import com.android.launcher3.pageindicators.PageIndicator;
import android.view.View$OnLongClickListener;
import android.view.View;
import android.view.animation.Interpolator;
import android.graphics.Rect;
import android.graphics.Matrix;
import android.view.ViewGroup$OnHierarchyChangeListener;
import android.view.ViewGroup;

public abstract class PagedView extends ViewGroup implements ViewGroup$OnHierarchyChangeListener
{
    private static int REORDERING_DROP_REPOSITION_DURATION;
    static int REORDERING_REORDER_REPOSITION_DURATION;
    private static int REORDERING_SIDE_PAGE_HOVER_TIMEOUT;
    private static final int[] sTmpIntPoint;
    private static final Matrix sTmpInvMatrix;
    private static final float[] sTmpPoint;
    private static final Rect sTmpRect;
    protected int mActivePointerId;
    protected boolean mAllowOverScroll;
    private boolean mCancelTap;
    private int mChildCountOnLastLayout;
    protected int mCurrentPage;
    private Interpolator mDefaultInterpolator;
    private float mDownMotionX;
    private float mDownMotionY;
    private float mDownScrollX;
    View mDragView;
    private float mDragViewBaselineLeft;
    protected boolean mFirstLayout;
    protected int mFlingThresholdVelocity;
    private boolean mFreeScroll;
    private int mFreeScrollMaxScrollX;
    private int mFreeScrollMinScrollX;
    protected final Rect mInsets;
    protected boolean mIsPageInTransition;
    private boolean mIsReordering;
    protected final boolean mIsRtl;
    private float mLastMotionX;
    private float mLastMotionXRemainder;
    private float mLastMotionY;
    protected View$OnLongClickListener mLongClickListener;
    protected int mMaxScrollX;
    private int mMaximumVelocity;
    protected int mMinFlingVelocity;
    private float mMinScale;
    protected int mMinSnapVelocity;
    protected int mNextPage;
    private int mNormalChildHeight;
    protected int mOverScrollX;
    protected PageIndicator mPageIndicator;
    int mPageIndicatorViewId;
    private int[] mPageScrolls;
    int mPageSpacing;
    private float mParentDownMotionX;
    private float mParentDownMotionY;
    private int mPostReorderingPreZoomInRemainingAnimationCount;
    private Runnable mPostReorderingPreZoomInRunnable;
    private boolean mReorderingStarted;
    protected LauncherScroller mScroller;
    int mSidePageHoverIndex;
    private Runnable mSidePageHoverRunnable;
    protected int[] mTempVisiblePagesRange;
    private float mTotalMotionX;
    protected int mTouchSlop;
    protected int mTouchState;
    protected int mUnboundedScrollX;
    private boolean mUseMinScale;
    private VelocityTracker mVelocityTracker;
    private Rect mViewport;
    protected boolean mWasInOverscroll;
    
    static {
        final int n = 2;
        PagedView.REORDERING_DROP_REPOSITION_DURATION = 200;
        PagedView.REORDERING_REORDER_REPOSITION_DURATION = 300;
        PagedView.REORDERING_SIDE_PAGE_HOVER_TIMEOUT = 80;
        sTmpInvMatrix = new Matrix();
        sTmpPoint = new float[n];
        sTmpIntPoint = new int[n];
        sTmpRect = new Rect();
    }
    
    public PagedView(final Context context) {
        this(context, null);
    }
    
    public PagedView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public PagedView(final Context context, final AttributeSet set, final int n) {
        final boolean b = true;
        final int mSidePageHoverIndex = -1;
        super(context, set, n);
        this.mFreeScroll = false;
        this.mFreeScrollMinScrollX = mSidePageHoverIndex;
        this.mFreeScrollMaxScrollX = mSidePageHoverIndex;
        this.mFirstLayout = b;
        this.mNextPage = mSidePageHoverIndex;
        this.mPageSpacing = 0;
        this.mTouchState = 0;
        this.mAllowOverScroll = b;
        this.mTempVisiblePagesRange = new int[2];
        this.mActivePointerId = mSidePageHoverIndex;
        this.mIsPageInTransition = false;
        this.mWasInOverscroll = false;
        this.mViewport = new Rect();
        this.mMinScale = 1.0f;
        this.mUseMinScale = false;
        this.mSidePageHoverIndex = mSidePageHoverIndex;
        this.mReorderingStarted = false;
        this.mInsets = new Rect();
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, R$styleable.PagedView, n, 0);
        this.mPageIndicatorViewId = obtainStyledAttributes.getResourceId(0, mSidePageHoverIndex);
        obtainStyledAttributes.recycle();
        this.setHapticFeedbackEnabled(false);
        this.mIsRtl = Utilities.isRtl(this.getResources());
        this.init();
    }
    
    private void abortScrollerAnimation(final boolean b) {
        this.mScroller.abortAnimation();
        if (b) {
            this.mNextPage = -1;
        }
    }
    
    private void acquireVelocityTrackerAndAddMovement(final MotionEvent motionEvent) {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
    }
    
    private void animateDragViewToOriginalPosition() {
        if (this.mDragView != null) {
            final ObjectAnimator setDuration = LauncherAnimUtils.ofPropertyValuesHolder(this.mDragView, new PropertyListBuilder().scale(1.0f).translationX(0.0f).translationY(0.0f).build()).setDuration((long)PagedView.REORDERING_DROP_REPOSITION_DURATION);
            ((Animator)setDuration).addListener((Animator$AnimatorListener)new PagedView$3(this));
            ((Animator)setDuration).start();
        }
    }
    
    private float distanceInfluenceForSnapDuration(final float n) {
        return (float)Math.sin((float)((n - 0.5f) * 0.4712389167638204));
    }
    
    private void forceFinishScroller(final boolean b) {
        this.mScroller.forceFinished(true);
        if (b) {
            this.mNextPage = -1;
        }
    }
    
    private int getNearestHoverOverPageIndex() {
        if (this.mDragView != null) {
            final int n = (int)(this.mDragView.getLeft() + this.mDragView.getMeasuredWidth() / 2 + this.mDragView.getTranslationX());
            this.getFreeScrollPageRange(this.mTempVisiblePagesRange);
            int n2 = -1 >>> 1;
            int indexOfChild = this.indexOfChild(this.mDragView);
            for (int i = this.mTempVisiblePagesRange[0]; i <= this.mTempVisiblePagesRange[1]; ++i) {
                final View page = this.getPageAt(i);
                final int abs = Math.abs(n - (page.getMeasuredWidth() / 2 + page.getLeft()));
                if (abs < n2) {
                    indexOfChild = i;
                    n2 = abs;
                }
            }
            return indexOfChild;
        }
        return -1;
    }
    
    private int getPageNearestToCenterOfScreen(final int n) {
        final int n2 = this.getViewportOffsetX() + n + this.getViewportWidth() / 2;
        int n3 = -1 >>> 1;
        int n4 = -1;
        int abs;
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i, n3 = abs) {
            abs = Math.abs(this.getPageAt(i).getMeasuredWidth() / 2 + (this.getViewportOffsetX() + this.getChildOffset(i)) - n2);
            if (abs < n3) {
                n4 = i;
            }
            else {
                abs = n3;
            }
        }
        return n4;
    }
    
    private boolean isTouchPointInViewportWithBuffer(final int n, final int n2) {
        PagedView.sTmpRect.set(this.mViewport.left - this.mViewport.width() / 2, this.mViewport.top, this.mViewport.right + this.mViewport.width() / 2, this.mViewport.bottom);
        return PagedView.sTmpRect.contains(n, n2);
    }
    
    private float[] mapPointFromParentToView(final View view, final float n, final float n2) {
        PagedView.sTmpPoint[0] = n - view.getLeft();
        PagedView.sTmpPoint[1] = n2 - view.getTop();
        view.getMatrix().invert(PagedView.sTmpInvMatrix);
        PagedView.sTmpInvMatrix.mapPoints(PagedView.sTmpPoint);
        return PagedView.sTmpPoint;
    }
    
    private float[] mapPointFromViewToParent(final View view, final float n, final float n2) {
        final int n3 = 1;
        PagedView.sTmpPoint[0] = n;
        PagedView.sTmpPoint[n3] = n2;
        view.getMatrix().mapPoints(PagedView.sTmpPoint);
        final float[] sTmpPoint = PagedView.sTmpPoint;
        sTmpPoint[0] += view.getLeft();
        final float[] sTmpPoint2 = PagedView.sTmpPoint;
        sTmpPoint2[n3] += view.getTop();
        return PagedView.sTmpPoint;
    }
    
    private void onSecondaryPointerUp(final MotionEvent motionEvent) {
        int n = 0;
        final int n2 = (motionEvent.getAction() & 0xFF00) >> 8;
        if (motionEvent.getPointerId(n2) == this.mActivePointerId) {
            if (n2 == 0) {
                n = 1;
            }
            final float x = motionEvent.getX(n);
            this.mDownMotionX = x;
            this.mLastMotionX = x;
            this.mLastMotionY = motionEvent.getY(n);
            this.mLastMotionXRemainder = 0.0f;
            this.mActivePointerId = motionEvent.getPointerId(n);
            if (this.mVelocityTracker != null) {
                this.mVelocityTracker.clear();
            }
        }
    }
    
    private float overScrollInfluenceCurve(final float n) {
        final float n2 = 1.0f;
        final float n3 = n - n2;
        return n3 * (n3 * n3) + n2;
    }
    
    private void releaseVelocityTracker() {
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.clear();
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }
    
    private void removeMarkerForView() {
        if (this.mPageIndicator != null && (this.isReordering(false) ^ true)) {
            this.mPageIndicator.removeMarker();
        }
    }
    
    private void resetTouchState() {
        this.releaseVelocityTracker();
        this.endReordering();
        this.mCancelTap = false;
        this.mTouchState = 0;
        this.mActivePointerId = -1;
    }
    
    private void sendScrollAccessibilityEvent() {
        if (((AccessibilityManager)this.getContext().getSystemService("accessibility")).isEnabled() && this.mCurrentPage != this.getNextPage()) {
            final AccessibilityEvent obtain = AccessibilityEvent.obtain(4096);
            obtain.setScrollable(true);
            obtain.setScrollX(this.getScrollX());
            obtain.setScrollY(this.getScrollY());
            obtain.setMaxScrollX(this.mMaxScrollX);
            obtain.setMaxScrollY(0);
            this.sendAccessibilityEventUnchecked(obtain);
        }
    }
    
    private void setEnableFreeScroll(final boolean mFreeScroll) {
        final int n = 1;
        final boolean mFreeScroll2 = this.mFreeScroll;
        this.mFreeScroll = mFreeScroll;
        if (this.mFreeScroll) {
            this.updateFreescrollBounds();
            this.getFreeScrollPageRange(this.mTempVisiblePagesRange);
            if (this.getCurrentPage() < this.mTempVisiblePagesRange[0]) {
                this.setCurrentPage(this.mTempVisiblePagesRange[0]);
            }
            else if (this.getCurrentPage() > this.mTempVisiblePagesRange[n]) {
                this.setCurrentPage(this.mTempVisiblePagesRange[n]);
            }
        }
        else if (mFreeScroll2) {
            this.snapToPage(this.getNextPage());
        }
        this.setEnableOverscroll(mFreeScroll ^ true);
    }
    
    private void updateDragViewTranslationDuringDrag() {
        if (this.mDragView != null) {
            final float translationX = this.mLastMotionX - this.mDownMotionX + (this.getScrollX() - this.mDownScrollX) + (this.mDragViewBaselineLeft - this.mDragView.getLeft());
            final float translationY = this.mLastMotionY - this.mDownMotionY;
            this.mDragView.setTranslationX(translationX);
            this.mDragView.setTranslationY(translationY);
        }
    }
    
    private void updatePageIndicator() {
        if (this.mPageIndicator != null) {
            this.mPageIndicator.setContentDescription((CharSequence)this.getPageIndicatorDescription());
            if (!this.isReordering(false)) {
                this.mPageIndicator.setActiveMarker(this.getNextPage());
            }
        }
    }
    
    private int validateNewPage(int max) {
        if (this.mFreeScroll) {
            this.getFreeScrollPageRange(this.mTempVisiblePagesRange);
            max = Math.max(this.mTempVisiblePagesRange[0], Math.min(max, this.mTempVisiblePagesRange[1]));
        }
        return Utilities.boundToRange(max, 0, this.getPageCount() - 1);
    }
    
    public void addFocusables(final ArrayList list, final int n, final int n2) {
        if (this.getDescendantFocusability() == 393216) {
            return;
        }
        if (this.mCurrentPage >= 0 && this.mCurrentPage < this.getPageCount()) {
            this.getPageAt(this.mCurrentPage).addFocusables(list, n, n2);
        }
        if (n == 17) {
            if (this.mCurrentPage > 0) {
                this.getPageAt(this.mCurrentPage - 1).addFocusables(list, n, n2);
            }
        }
        else if (n == 66 && this.mCurrentPage < this.getPageCount() - 1) {
            this.getPageAt(this.mCurrentPage + 1).addFocusables(list, n, n2);
        }
    }
    
    public void addFullScreenPage(final View view) {
        final PagedView$LayoutParams generateDefaultLayoutParams = this.generateDefaultLayoutParams();
        generateDefaultLayoutParams.isFullScreenPage = true;
        super.addView(view, 0, (ViewGroup$LayoutParams)generateDefaultLayoutParams);
    }
    
    protected void cancelCurrentPageLongPress() {
        final View page = this.getPageAt(this.mCurrentPage);
        if (page != null) {
            page.cancelLongPress();
        }
    }
    
    protected boolean checkLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof PagedView$LayoutParams;
    }
    
    protected int computeMaxScrollX() {
        int n = 0;
        final int childCount = this.getChildCount();
        if (childCount > 0) {
            if (!this.mIsRtl) {
                n = childCount - 1;
            }
            return this.getScrollForPage(n);
        }
        return 0;
    }
    
    public void computeScroll() {
        this.computeScrollHelper();
    }
    
    protected boolean computeScrollHelper() {
        return this.computeScrollHelper(true);
    }
    
    protected boolean computeScrollHelper(final boolean b) {
        final boolean b2 = true;
        final int mNextPage = -1;
        final float n = 1.0f;
        if (this.mScroller.computeScrollOffset()) {
            if (this.getUnboundedScrollX() != this.mScroller.getCurrX() || this.getScrollY() != this.mScroller.getCurrY() || this.mOverScrollX != this.mScroller.getCurrX()) {
                float scaleX;
                if (this.mFreeScroll) {
                    scaleX = this.getScaleX();
                }
                else {
                    scaleX = n;
                }
                this.scrollTo((int)(n / scaleX * this.mScroller.getCurrX()), this.mScroller.getCurrY());
            }
            if (b) {
                this.invalidate();
            }
            return b2;
        }
        if (this.mNextPage != mNextPage && b) {
            this.sendScrollAccessibilityEvent();
            final int mCurrentPage = this.mCurrentPage;
            this.mCurrentPage = this.validateNewPage(this.mNextPage);
            this.mNextPage = mNextPage;
            this.notifyPageSwitchListener(mCurrentPage);
            if (this.mTouchState == 0) {
                this.pageEndTransition();
            }
            this.onPostReorderingAnimationCompleted();
            if (((AccessibilityManager)this.getContext().getSystemService("accessibility")).isEnabled()) {
                this.announceForAccessibility((CharSequence)this.getCurrentPageDescription());
            }
            return b2;
        }
        return false;
    }
    
    protected void dampedOverScroll(final float n) {
        final int viewportWidth = this.getViewportWidth();
        final float n2 = n / viewportWidth;
        if (Float.compare(n2, 0.0f) == 0) {
            return;
        }
        float n3 = this.overScrollInfluenceCurve(Math.abs(n2)) * (n2 / Math.abs(n2));
        if (Math.abs(n3) >= 1.0f) {
            n3 /= Math.abs(n3);
        }
        final int round = Math.round(n3 * 0.07f * viewportWidth);
        if (n < 0.0f) {
            super.scrollTo(this.mOverScrollX = round, this.getScrollY());
        }
        else {
            super.scrollTo(this.mOverScrollX = round + this.mMaxScrollX, this.getScrollY());
        }
        this.invalidate();
    }
    
    protected void determineScrollingStart(final MotionEvent motionEvent) {
        this.determineScrollingStart(motionEvent, 1.0f);
    }
    
    protected void determineScrollingStart(final MotionEvent motionEvent, final float n) {
        final boolean mTouchState = true;
        final int pointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
        if (pointerIndex == -1) {
            return;
        }
        final float x = motionEvent.getX(pointerIndex);
        if (!this.isTouchPointInViewportWithBuffer((int)x, (int)motionEvent.getY(pointerIndex))) {
            return;
        }
        if ((int)Math.abs(x - this.mLastMotionX) > Math.round(this.mTouchSlop * n) && mTouchState) {
            this.mTouchState = (mTouchState ? 1 : 0);
            this.mTotalMotionX += Math.abs(this.mLastMotionX - x);
            this.mLastMotionX = x;
            this.mLastMotionXRemainder = 0.0f;
            this.onScrollInteractionBegin();
            this.pageBeginTransition();
            this.requestDisallowInterceptTouchEvent(mTouchState);
        }
    }
    
    public void disableFreeScroll() {
        this.setEnableFreeScroll(false);
    }
    
    public boolean dispatchUnhandledMove(final View view, int n) {
        final int n2 = 66;
        final int n3 = 17;
        final boolean b = true;
        if (super.dispatchUnhandledMove(view, n)) {
            return b;
        }
        if (this.mIsRtl) {
            if (n == n3) {
                n = n2;
            }
            else if (n == n2) {
                n = n3;
            }
        }
        if (n == n3) {
            if (this.getCurrentPage() > 0) {
                this.snapToPage(this.getCurrentPage() - 1);
                return b;
            }
        }
        else if (n == n2 && this.getCurrentPage() < this.getPageCount() - 1) {
            this.snapToPage(this.getCurrentPage() + 1);
            return b;
        }
        return false;
    }
    
    public boolean enableFreeScroll() {
        final boolean enableFreeScroll = true;
        this.setEnableFreeScroll(enableFreeScroll);
        return enableFreeScroll;
    }
    
    void endReordering() {
        if (!this.mReorderingStarted) {
            return;
        }
        this.mReorderingStarted = false;
        this.mPostReorderingPreZoomInRunnable = new PagedView$4(this);
        this.mPostReorderingPreZoomInRemainingAnimationCount = 2;
        this.snapToPage(this.indexOfChild(this.mDragView), 0);
        this.animateDragViewToOriginalPosition();
    }
    
    public void focusableViewAvailable(final View view) {
        for (View page = this.getPageAt(this.mCurrentPage), view2 = view; view2 != page; view2 = (View)view2.getParent()) {
            if (view2 == this) {
                return;
            }
            if (!(view2.getParent() instanceof View)) {
                return;
            }
        }
        super.focusableViewAvailable(view);
    }
    
    protected PagedView$LayoutParams generateDefaultLayoutParams() {
        final int n = -2;
        return new PagedView$LayoutParams(n, n);
    }
    
    protected ViewGroup$LayoutParams generateLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return new PagedView$LayoutParams(viewGroup$LayoutParams);
    }
    
    public PagedView$LayoutParams generateLayoutParams(final AttributeSet set) {
        return new PagedView$LayoutParams(this.getContext(), set);
    }
    
    protected int getChildGap() {
        return 0;
    }
    
    protected int getChildOffset(final int n) {
        if (n < 0 || n > this.getChildCount() - 1) {
            return 0;
        }
        return this.getPageAt(n).getLeft() - this.getViewportOffsetX();
    }
    
    public int getCurrentPage() {
        return this.mCurrentPage;
    }
    
    protected String getCurrentPageDescription() {
        return this.getContext().getString(2131492934, new Object[] { this.getNextPage() + 1, this.getChildCount() });
    }
    
    protected void getFreeScrollPageRange(final int[] array) {
        array[0] = 0;
        array[1] = Math.max(0, this.getChildCount() - 1);
    }
    
    public int getLayoutTransitionOffsetForPage(final int n) {
        if (this.mPageScrolls != null && n < this.mPageScrolls.length && n >= 0) {
            final View child = this.getChildAt(n);
            int n2;
            if (!((PagedView$LayoutParams)child.getLayoutParams()).isFullScreenPage) {
                if (this.mIsRtl) {
                    n2 = this.getPaddingRight();
                }
                else {
                    n2 = this.getPaddingLeft();
                }
            }
            else {
                n2 = 0;
            }
            return (int)(child.getX() - (n2 + this.mPageScrolls[n] + this.getViewportOffsetX()));
        }
        return 0;
    }
    
    public int getNextPage() {
        int n;
        if (this.mNextPage != -1) {
            n = this.mNextPage;
        }
        else {
            n = this.mCurrentPage;
        }
        return n;
    }
    
    public int getNormalChildHeight() {
        return this.mNormalChildHeight;
    }
    
    public View getPageAt(final int n) {
        return this.getChildAt(n);
    }
    
    public int getPageCount() {
        return this.getChildCount();
    }
    
    public PageIndicator getPageIndicator() {
        return this.mPageIndicator;
    }
    
    protected String getPageIndicatorDescription() {
        return this.getCurrentPageDescription();
    }
    
    int getPageNearestToCenterOfScreen() {
        return this.getPageNearestToCenterOfScreen(this.getScrollX());
    }
    
    protected int getPageSnapDuration() {
        if (this.isInOverScroll()) {
            return 270;
        }
        return 750;
    }
    
    public int getScrollForPage(final int n) {
        if (this.mPageScrolls != null && n < this.mPageScrolls.length && n >= 0) {
            return this.mPageScrolls[n];
        }
        return 0;
    }
    
    protected float getScrollProgress(final int n, final View view, final int n2) {
        final float n3 = 1.0f;
        final int n4 = n - (this.getViewportWidth() / 2 + this.getScrollForPage(n2));
        final int childCount = this.getChildCount();
        int n5 = n2 + 1;
        if ((n4 < 0 && (this.mIsRtl ^ true)) || (n4 > 0 && this.mIsRtl)) {
            n5 = n2 - 1;
        }
        int abs;
        if (n5 < 0 || n5 > childCount - 1) {
            abs = view.getMeasuredWidth() + this.mPageSpacing;
        }
        else {
            abs = Math.abs(this.getScrollForPage(n5) - this.getScrollForPage(n2));
        }
        return Math.max(Math.min(n4 / (abs * n3), n3), -1.0f);
    }
    
    protected int getUnboundedScrollX() {
        return this.mUnboundedScrollX;
    }
    
    public int getViewportHeight() {
        return this.mViewport.height();
    }
    
    int getViewportOffsetX() {
        return (this.getMeasuredWidth() - this.getViewportWidth()) / 2;
    }
    
    int getViewportOffsetY() {
        return (this.getMeasuredHeight() - this.getViewportHeight()) / 2;
    }
    
    int getViewportWidth() {
        return this.mViewport.width();
    }
    
    protected int indexToPage(final int n) {
        return n;
    }
    
    protected void init() {
        this.mScroller = new LauncherScroller(this.getContext());
        this.setDefaultInterpolator((Interpolator)new PagedView$ScrollInterpolator());
        this.mCurrentPage = 0;
        final ViewConfiguration value = ViewConfiguration.get(this.getContext());
        this.mTouchSlop = value.getScaledPagingTouchSlop();
        this.mMaximumVelocity = value.getScaledMaximumFlingVelocity();
        final float density = this.getResources().getDisplayMetrics().density;
        this.mFlingThresholdVelocity = (int)(500.0f * density);
        this.mMinFlingVelocity = (int)(250.0f * density);
        this.mMinSnapVelocity = (int)(density * 1500.0f);
        this.setOnHierarchyChangeListener((ViewGroup$OnHierarchyChangeListener)this);
        this.setWillNotDraw(false);
        Themes.getAttrColor(this.getContext(), 16843982);
    }
    
    public void initParentViews(final View view) {
        if (this.mPageIndicatorViewId > -1) {
            (this.mPageIndicator = (PageIndicator)view.findViewById(this.mPageIndicatorViewId)).setMarkersCount(this.getChildCount());
            this.mPageIndicator.setContentDescription((CharSequence)this.getPageIndicatorDescription());
        }
    }
    
    protected boolean isInOverScroll() {
        boolean b = true;
        if (this.mOverScrollX <= this.mMaxScrollX && this.mOverScrollX >= 0) {
            b = false;
        }
        return b;
    }
    
    protected boolean isPageInTransition() {
        return this.mIsPageInTransition;
    }
    
    boolean isReordering(final boolean b) {
        final boolean mIsReordering = this.mIsReordering;
        boolean b2;
        if (b) {
            b2 = (this.mTouchState == 4 & mIsReordering);
        }
        else {
            b2 = mIsReordering;
        }
        return b2;
    }
    
    protected void notifyPageSwitchListener(final int n) {
        this.updatePageIndicator();
    }
    
    public void onChildViewAdded(final View view, final View view2) {
        if (this.mPageIndicator != null && (this.isReordering(false) ^ true)) {
            this.mPageIndicator.addMarker();
        }
        this.updateFreescrollBounds();
        this.invalidate();
    }
    
    public void onChildViewRemoved(final View view, final View view2) {
        this.updateFreescrollBounds();
        this.mCurrentPage = this.validateNewPage(this.mCurrentPage);
        this.invalidate();
    }
    
    public void onEndReordering() {
        this.mIsReordering = false;
    }
    
    public boolean onGenericMotionEvent(final MotionEvent motionEvent) {
        final int n = 9;
        boolean b = false;
        final boolean b2 = true;
        if ((motionEvent.getSource() & 0x2) != 0x0) {
            switch (motionEvent.getAction()) {
                case 8: {
                    float n2;
                    float n3;
                    if ((motionEvent.getMetaState() & 0x1) != 0x0) {
                        n2 = motionEvent.getAxisValue(n);
                        n3 = 0.0f;
                    }
                    else {
                        n3 = -motionEvent.getAxisValue(n);
                        n2 = motionEvent.getAxisValue(10);
                    }
                    if (n2 != 0.0f || n3 != 0.0f) {
                        if (this.mIsRtl) {
                            if (n2 < 0.0f || n3 < 0.0f) {
                                b = b2;
                            }
                        }
                        else if (n2 > 0.0f || n3 > 0.0f) {
                            b = b2;
                        }
                        if (b) {
                            this.scrollRight();
                        }
                        else {
                            this.scrollLeft();
                        }
                        return b2;
                    }
                    break;
                }
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }
    
    public boolean onHoverEvent(final MotionEvent motionEvent) {
        return true;
    }
    
    public void onInitializeAccessibilityEvent(final AccessibilityEvent accessibilityEvent) {
        int scrollable = 1;
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (this.getPageCount() <= scrollable) {
            scrollable = 0;
        }
        accessibilityEvent.setScrollable((boolean)(scrollable != 0));
    }
    
    public void onInitializeAccessibilityNodeInfo(final AccessibilityNodeInfo accessibilityNodeInfo) {
        int scrollable = 1;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (this.getPageCount() <= scrollable) {
            scrollable = 0;
        }
        accessibilityNodeInfo.setScrollable((boolean)(scrollable != 0));
        if (this.getCurrentPage() < this.getPageCount() - 1) {
            accessibilityNodeInfo.addAction(4096);
        }
        if (this.getCurrentPage() > 0) {
            accessibilityNodeInfo.addAction(8192);
        }
        accessibilityNodeInfo.setClassName((CharSequence)this.getClass().getName());
        accessibilityNodeInfo.setLongClickable(false);
        accessibilityNodeInfo.removeAction(AccessibilityNodeInfo$AccessibilityAction.ACTION_LONG_CLICK);
    }
    
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        int mTouchState = 1;
        this.acquireVelocityTrackerAndAddMovement(motionEvent);
        if (this.getChildCount() <= 0) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        final int action = motionEvent.getAction();
        if (action == 2 && this.mTouchState == mTouchState) {
            return mTouchState != 0;
        }
        switch (action & 0xFF) {
            case 2: {
                if (this.mActivePointerId != -1) {
                    this.determineScrollingStart(motionEvent);
                    break;
                }
                break;
            }
            case 0: {
                final float x = motionEvent.getX();
                final float y = motionEvent.getY();
                this.mDownMotionX = x;
                this.mDownMotionY = y;
                this.mDownScrollX = this.getScrollX();
                this.mLastMotionX = x;
                this.mLastMotionY = y;
                final float[] mapPointFromViewToParent = this.mapPointFromViewToParent((View)this, x, y);
                this.mParentDownMotionX = mapPointFromViewToParent[0];
                this.mParentDownMotionY = mapPointFromViewToParent[mTouchState];
                this.mLastMotionXRemainder = 0.0f;
                this.mTotalMotionX = 0.0f;
                this.mActivePointerId = motionEvent.getPointerId(0);
                final int abs = Math.abs(this.mScroller.getFinalX() - this.mScroller.getCurrX());
                int n;
                if (this.mScroller.isFinished() || abs < this.mTouchSlop / 3) {
                    n = mTouchState;
                }
                else {
                    n = 0;
                }
                if (n != 0) {
                    this.mTouchState = 0;
                    if (!this.mScroller.isFinished() && (this.mFreeScroll ^ true)) {
                        this.setCurrentPage(this.getNextPage());
                        this.pageEndTransition();
                        break;
                    }
                    break;
                }
                else {
                    if (this.isTouchPointInViewportWithBuffer((int)this.mDownMotionX, (int)this.mDownMotionY)) {
                        this.mTouchState = mTouchState;
                        break;
                    }
                    this.mTouchState = 0;
                    break;
                }
                break;
            }
            case 1:
            case 3: {
                this.resetTouchState();
                break;
            }
            case 6: {
                this.onSecondaryPointerUp(motionEvent);
                this.releaseVelocityTracker();
                break;
            }
        }
        if (this.mTouchState == 0) {
            mTouchState = 0;
        }
        return mTouchState != 0;
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        if (this.getChildCount() == 0) {
            return;
        }
        final int childCount = this.getChildCount();
        final int viewportOffsetX = this.getViewportOffsetX();
        final int viewportOffsetY = this.getViewportOffsetY();
        this.mViewport.offset(viewportOffsetX, viewportOffsetY);
        int n5;
        if (this.mIsRtl) {
            n5 = childCount - 1;
        }
        else {
            n5 = 0;
        }
        int n6;
        if (this.mIsRtl) {
            n6 = -1;
        }
        else {
            n6 = childCount;
        }
        int n7;
        if (this.mIsRtl) {
            n7 = -1;
        }
        else {
            n7 = 1;
        }
        final int n8 = this.getPaddingTop() + this.getPaddingBottom();
        int paddingLeft;
        if (((PagedView$LayoutParams)this.getChildAt(n5).getLayoutParams()).isFullScreenPage) {
            paddingLeft = 0;
        }
        else {
            paddingLeft = this.getPaddingLeft();
        }
        int n9 = viewportOffsetX + paddingLeft;
        if (this.mPageScrolls == null || childCount != this.mChildCountOnLastLayout) {
            this.mPageScrolls = new int[childCount];
        }
        int n13;
        for (int i = n5; i != n6; i += n7, n9 = n13) {
            final View page = this.getPageAt(i);
            if (page.getVisibility() != 8) {
                final PagedView$LayoutParams pagedView$LayoutParams = (PagedView$LayoutParams)page.getLayoutParams();
                int n10;
                if (pagedView$LayoutParams.isFullScreenPage) {
                    n10 = viewportOffsetY;
                }
                else {
                    n10 = this.getPaddingTop() + viewportOffsetY + this.mInsets.top + (this.getViewportHeight() - this.mInsets.top - this.mInsets.bottom - n8 - page.getMeasuredHeight()) / 2;
                }
                final int measuredWidth = page.getMeasuredWidth();
                page.layout(n9, n10, page.getMeasuredWidth() + n9, page.getMeasuredHeight() + n10);
                int paddingLeft2;
                if (pagedView$LayoutParams.isFullScreenPage) {
                    paddingLeft2 = 0;
                }
                else {
                    paddingLeft2 = this.getPaddingLeft();
                }
                this.mPageScrolls[i] = n9 - paddingLeft2 - viewportOffsetX;
                final int mPageSpacing = this.mPageSpacing;
                final int n11 = i + n7;
                PagedView$LayoutParams pagedView$LayoutParams2;
                if (n11 != n6) {
                    pagedView$LayoutParams2 = (PagedView$LayoutParams)this.getPageAt(n11).getLayoutParams();
                }
                else {
                    pagedView$LayoutParams2 = null;
                }
                int n12;
                if (pagedView$LayoutParams.isFullScreenPage) {
                    n12 = this.getPaddingLeft();
                }
                else if (pagedView$LayoutParams2 != null) {
                    if (pagedView$LayoutParams2.isFullScreenPage) {
                        n12 = this.getPaddingRight();
                    }
                    else {
                        n12 = mPageSpacing;
                    }
                }
                else {
                    n12 = mPageSpacing;
                }
                n13 = n12 + measuredWidth + this.getChildGap() + n9;
            }
            else {
                n13 = n9;
            }
        }
        final LayoutTransition layoutTransition = this.getLayoutTransition();
        if (layoutTransition != null && layoutTransition.isRunning()) {
            layoutTransition.addTransitionListener((LayoutTransition$TransitionListener)new PagedView$1(this));
        }
        else {
            this.updateMaxScrollX();
        }
        if (this.mFirstLayout && this.mCurrentPage >= 0 && this.mCurrentPage < childCount) {
            this.updateCurrentPageScroll();
            this.mFirstLayout = false;
        }
        if (this.mScroller.isFinished() && this.mChildCountOnLastLayout != childCount) {
            this.setCurrentPage(this.getNextPage());
        }
        this.mChildCountOnLastLayout = childCount;
        if (this.isReordering(true)) {
            this.updateDragViewTranslationDuringDrag();
        }
    }
    
    protected void onMeasure(final int n, final int n2) {
        if (this.getChildCount() == 0) {
            super.onMeasure(n, n2);
            return;
        }
        final int mode = View$MeasureSpec.getMode(n);
        final int size = View$MeasureSpec.getSize(n);
        final int mode2 = View$MeasureSpec.getMode(n2);
        final int size2 = View$MeasureSpec.getSize(n2);
        final DisplayMetrics displayMetrics = this.getResources().getDisplayMetrics();
        final int max = Math.max(displayMetrics.widthPixels + this.mInsets.left + this.mInsets.right, displayMetrics.heightPixels + this.mInsets.top + this.mInsets.bottom);
        final int n3 = (int)(max * 2.0f);
        final int n4 = (int)(max * 2.0f);
        int n7;
        int n8;
        if (this.mUseMinScale) {
            final int n5 = (int)(n3 / this.mMinScale);
            final int n6 = (int)(n4 / this.mMinScale);
            n7 = n5;
            n8 = n6;
        }
        else {
            n8 = size2;
            n7 = size;
        }
        this.mViewport.set(0, 0, size, size2);
        if (mode == 0 || mode2 == 0) {
            super.onMeasure(n, n2);
            return;
        }
        if (size <= 0 || size2 <= 0) {
            super.onMeasure(n, n2);
            return;
        }
        final int n9 = this.getPaddingTop() + this.getPaddingBottom();
        final int n10 = this.getPaddingLeft() + this.getPaddingRight();
        int n11 = 0;
        int n17;
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i, n11 = n17) {
            final View page = this.getPageAt(i);
            if (page.getVisibility() != 8) {
                final PagedView$LayoutParams pagedView$LayoutParams = (PagedView$LayoutParams)page.getLayoutParams();
                int mNormalChildHeight;
                int n15;
                int viewportWidth;
                int n16;
                if (!pagedView$LayoutParams.isFullScreenPage) {
                    int n12;
                    if (pagedView$LayoutParams.width == -2) {
                        n12 = -1 << -1;
                    }
                    else {
                        n12 = 1073741824;
                    }
                    int n13;
                    if (pagedView$LayoutParams.height == -2) {
                        n13 = -1 << -1;
                    }
                    else {
                        n13 = 1073741824;
                    }
                    final int n14 = this.getViewportWidth() - n10 - this.mInsets.left - this.mInsets.right;
                    mNormalChildHeight = this.getViewportHeight() - n9 - this.mInsets.top - this.mInsets.bottom;
                    this.mNormalChildHeight = mNormalChildHeight;
                    n15 = n12;
                    viewportWidth = n14;
                    n16 = n13;
                }
                else {
                    viewportWidth = this.getViewportWidth();
                    final int viewportHeight = this.getViewportHeight();
                    n15 = 1073741824;
                    n16 = 1073741824;
                    mNormalChildHeight = viewportHeight;
                }
                if (n11 == 0) {
                    n17 = viewportWidth;
                }
                else {
                    n17 = n11;
                }
                page.measure(View$MeasureSpec.makeMeasureSpec(viewportWidth, n15), View$MeasureSpec.makeMeasureSpec(mNormalChildHeight, n16));
            }
            else {
                n17 = n11;
            }
        }
        this.setMeasuredDimension(n7, n8);
    }
    
    protected void onPageBeginTransition() {
    }
    
    protected void onPageEndTransition() {
        this.mWasInOverscroll = false;
    }
    
    void onPostReorderingAnimationCompleted() {
        --this.mPostReorderingPreZoomInRemainingAnimationCount;
        if (this.mPostReorderingPreZoomInRunnable != null && this.mPostReorderingPreZoomInRemainingAnimationCount == 0) {
            this.mPostReorderingPreZoomInRunnable.run();
            this.mPostReorderingPreZoomInRunnable = null;
        }
    }
    
    protected boolean onRequestFocusInDescendants(final int n, final Rect rect) {
        int n2;
        if (this.mNextPage != -1) {
            n2 = this.mNextPage;
        }
        else {
            n2 = this.mCurrentPage;
        }
        final View page = this.getPageAt(n2);
        return page != null && page.requestFocus(n, rect);
    }
    
    protected void onScrollInteractionBegin() {
    }
    
    protected void onScrollInteractionEnd() {
    }
    
    public void onStartReordering() {
        this.mTouchState = 4;
        this.mIsReordering = true;
        this.invalidate();
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        final int n = 4;
        final int mSidePageHoverIndex = -1;
        final int n2 = 1;
        int n3 = 0;
        super.onTouchEvent(motionEvent);
        if (this.getChildCount() <= 0) {
            return super.onTouchEvent(motionEvent);
        }
        this.acquireVelocityTrackerAndAddMovement(motionEvent);
        switch (motionEvent.getAction() & 0xFF) {
            case 0: {
                if (!this.mScroller.isFinished()) {
                    this.abortScrollerAnimation(false);
                }
                final float x = motionEvent.getX();
                this.mLastMotionX = x;
                this.mDownMotionX = x;
                final float y = motionEvent.getY();
                this.mLastMotionY = y;
                this.mDownMotionY = y;
                this.mDownScrollX = this.getScrollX();
                final float[] mapPointFromViewToParent = this.mapPointFromViewToParent((View)this, this.mLastMotionX, this.mLastMotionY);
                this.mParentDownMotionX = mapPointFromViewToParent[0];
                this.mParentDownMotionY = mapPointFromViewToParent[n2];
                this.mLastMotionXRemainder = 0.0f;
                this.mTotalMotionX = 0.0f;
                this.mActivePointerId = motionEvent.getPointerId(0);
                if (this.mTouchState == n2) {
                    this.onScrollInteractionBegin();
                    this.pageBeginTransition();
                    break;
                }
                break;
            }
            case 2: {
                if (this.mTouchState == n2) {
                    final int pointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                    if (pointerIndex == mSidePageHoverIndex) {
                        return n2 != 0;
                    }
                    final float x2 = motionEvent.getX(pointerIndex);
                    final float n4 = this.mLastMotionX + this.mLastMotionXRemainder - x2;
                    this.mTotalMotionX += Math.abs(n4);
                    if (Math.abs(n4) >= 1.0f) {
                        this.scrollBy((int)n4, 0);
                        this.mLastMotionX = x2;
                        this.mLastMotionXRemainder = n4 - (int)n4;
                        break;
                    }
                    this.awakenScrollBars();
                    break;
                }
                else {
                    if (this.mTouchState != n) {
                        this.determineScrollingStart(motionEvent);
                        break;
                    }
                    this.mLastMotionX = motionEvent.getX();
                    this.mLastMotionY = motionEvent.getY();
                    final float[] mapPointFromViewToParent2 = this.mapPointFromViewToParent((View)this, this.mLastMotionX, this.mLastMotionY);
                    this.mParentDownMotionX = mapPointFromViewToParent2[0];
                    this.mParentDownMotionY = mapPointFromViewToParent2[n2];
                    this.updateDragViewTranslationDuringDrag();
                    final int indexOfChild = this.indexOfChild(this.mDragView);
                    final int nearestHoverOverPageIndex = this.getNearestHoverOverPageIndex();
                    if (nearestHoverOverPageIndex <= 0 || nearestHoverOverPageIndex == this.indexOfChild(this.mDragView)) {
                        this.removeCallbacks(this.mSidePageHoverRunnable);
                        this.mSidePageHoverIndex = mSidePageHoverIndex;
                        break;
                    }
                    this.mTempVisiblePagesRange[0] = 0;
                    this.mTempVisiblePagesRange[n2] = this.getPageCount() - 1;
                    this.getFreeScrollPageRange(this.mTempVisiblePagesRange);
                    if (this.mTempVisiblePagesRange[0] <= nearestHoverOverPageIndex && nearestHoverOverPageIndex <= this.mTempVisiblePagesRange[n2] && nearestHoverOverPageIndex != this.mSidePageHoverIndex && this.mScroller.isFinished()) {
                        this.mSidePageHoverIndex = nearestHoverOverPageIndex;
                        this.postDelayed(this.mSidePageHoverRunnable = new PagedView$2(this, nearestHoverOverPageIndex, indexOfChild), (long)PagedView.REORDERING_SIDE_PAGE_HOVER_TIMEOUT);
                        break;
                    }
                    break;
                }
                break;
            }
            case 1: {
                if (this.mTouchState == n2) {
                    final int mActivePointerId = this.mActivePointerId;
                    final float x3 = motionEvent.getX(motionEvent.findPointerIndex(mActivePointerId));
                    final VelocityTracker mVelocityTracker = this.mVelocityTracker;
                    mVelocityTracker.computeCurrentVelocity(1000, (float)this.mMaximumVelocity);
                    final int n5 = (int)mVelocityTracker.getXVelocity(mActivePointerId);
                    final int n6 = (int)(x3 - this.mDownMotionX);
                    final int measuredWidth = this.getPageAt(this.mCurrentPage).getMeasuredWidth();
                    int n7;
                    if (Math.abs(n6) > measuredWidth * 0.4f) {
                        n7 = n2;
                    }
                    else {
                        n7 = 0;
                    }
                    this.mTotalMotionX += Math.abs(this.mLastMotionX + this.mLastMotionXRemainder - x3);
                    final boolean b = this.mTotalMotionX > 25.0f && this.shouldFlingForVelocity(n5);
                    if (!this.mFreeScroll) {
                        int n8;
                        if (Math.abs(n6) > measuredWidth * 0.33f && Math.signum(n5) != Math.signum(n6)) {
                            if (b) {
                                n8 = n2;
                            }
                            else {
                                n8 = 0;
                            }
                        }
                        else {
                            n8 = 0;
                        }
                        int n9;
                        if (this.mIsRtl ? (n6 > 0) : (n6 < 0)) {
                            n9 = n2;
                        }
                        else {
                            n9 = 0;
                        }
                        Label_1133: {
                            if (this.mIsRtl) {
                                if (n5 <= 0) {
                                    break Label_1133;
                                }
                            }
                            else if (n5 >= 0) {
                                break Label_1133;
                            }
                            n3 = n2;
                        }
                        if (((n7 != 0 && (n9 ^ 0x1) != 0x0 && (b ^ true)) || (b && (n3 ^ 0x1))) && this.mCurrentPage > 0) {
                            int mCurrentPage;
                            if (n8 != 0) {
                                mCurrentPage = this.mCurrentPage;
                            }
                            else {
                                mCurrentPage = this.mCurrentPage - 1;
                            }
                            this.snapToPageWithVelocity(mCurrentPage, n5);
                        }
                        else if (((n7 != 0 && n9 != 0 && (b ^ true)) || (b && n3)) && this.mCurrentPage < this.getChildCount() - 1) {
                            int mCurrentPage2;
                            if (n8 != 0) {
                                mCurrentPage2 = this.mCurrentPage;
                            }
                            else {
                                mCurrentPage2 = this.mCurrentPage + 1;
                            }
                            this.snapToPageWithVelocity(mCurrentPage2, n5);
                        }
                        else {
                            this.snapToDestination();
                        }
                    }
                    else {
                        if (!this.mScroller.isFinished()) {
                            this.abortScrollerAnimation(n2 != 0);
                        }
                        final float scaleX = this.getScaleX();
                        final int n10 = (int)(-n5 * scaleX);
                        final int n11 = (int)(this.getScrollX() * scaleX);
                        this.mScroller.setInterpolator((TimeInterpolator)this.mDefaultInterpolator);
                        this.mScroller.fling(n11, this.getScrollY(), n10, 0, -1 << -1, -1 >>> 1, 0, 0);
                        this.mNextPage = this.getPageNearestToCenterOfScreen((int)(this.mScroller.getFinalX() / scaleX));
                        this.invalidate();
                    }
                    this.onScrollInteractionEnd();
                }
                else if (this.mTouchState == 2) {
                    final int max = Math.max(0, this.mCurrentPage - 1);
                    if (max != this.mCurrentPage) {
                        this.snapToPage(max);
                    }
                    else {
                        this.snapToDestination();
                    }
                }
                else if (this.mTouchState == 3) {
                    final int min = Math.min(this.getChildCount() - 1, this.mCurrentPage + 1);
                    if (min != this.mCurrentPage) {
                        this.snapToPage(min);
                    }
                    else {
                        this.snapToDestination();
                    }
                }
                else if (this.mTouchState == n) {
                    this.mLastMotionX = motionEvent.getX();
                    this.mLastMotionY = motionEvent.getY();
                    final float[] mapPointFromViewToParent3 = this.mapPointFromViewToParent((View)this, this.mLastMotionX, this.mLastMotionY);
                    this.mParentDownMotionX = mapPointFromViewToParent3[0];
                    this.mParentDownMotionY = mapPointFromViewToParent3[n2];
                    this.updateDragViewTranslationDuringDrag();
                }
                else if (!this.mCancelTap) {
                    this.onUnhandledTap(motionEvent);
                }
                this.removeCallbacks(this.mSidePageHoverRunnable);
                this.resetTouchState();
                break;
            }
            case 3: {
                if (this.mTouchState == n2) {
                    this.snapToDestination();
                    this.onScrollInteractionEnd();
                }
                this.resetTouchState();
                break;
            }
            case 6: {
                this.onSecondaryPointerUp(motionEvent);
                this.releaseVelocityTracker();
                break;
            }
        }
        return n2 != 0;
    }
    
    protected void onUnhandledTap(final MotionEvent motionEvent) {
        Launcher.getLauncher(this.getContext()).onClick((View)this);
    }
    
    protected void overScroll(final float n) {
        this.dampedOverScroll(n);
    }
    
    protected void pageBeginTransition() {
        if (!this.mIsPageInTransition) {
            this.mIsPageInTransition = true;
            this.onPageBeginTransition();
        }
    }
    
    protected void pageEndTransition() {
        if (this.mIsPageInTransition) {
            this.mIsPageInTransition = false;
            this.onPageEndTransition();
        }
    }
    
    public boolean performAccessibilityAction(final int n, final Bundle bundle) {
        final boolean b = true;
        if (super.performAccessibilityAction(n, bundle)) {
            return b;
        }
        switch (n) {
            case 4096: {
                if (this.getCurrentPage() < this.getPageCount() - 1) {
                    this.scrollRight();
                    return b;
                }
                break;
            }
            case 8192: {
                if (this.getCurrentPage() > 0) {
                    this.scrollLeft();
                    return b;
                }
                break;
            }
        }
        return false;
    }
    
    public boolean performLongClick() {
        this.mCancelTap = true;
        return super.performLongClick();
    }
    
    public void removeAllViewsInLayout() {
        if (this.mPageIndicator != null) {
            this.mPageIndicator.setMarkersCount(0);
        }
        super.removeAllViewsInLayout();
    }
    
    public void removeView(final View view) {
        this.removeMarkerForView();
        super.removeView(view);
    }
    
    public void removeViewAt(final int n) {
        this.removeMarkerForView();
        super.removeViewAt(n);
    }
    
    public void removeViewInLayout(final View view) {
        this.removeMarkerForView();
        super.removeViewInLayout(view);
    }
    
    public void requestChildFocus(final View view, final View view2) {
        super.requestChildFocus(view, view2);
        final int indexToPage = this.indexToPage(this.indexOfChild(view));
        if (indexToPage >= 0 && indexToPage != this.getCurrentPage() && (this.isInTouchMode() ^ true)) {
            this.snapToPage(indexToPage);
        }
    }
    
    public boolean requestChildRectangleOnScreen(final View view, final Rect rect, final boolean b) {
        final int indexToPage = this.indexToPage(this.indexOfChild(view));
        if (indexToPage != this.mCurrentPage || (this.mScroller.isFinished() ^ true)) {
            this.snapToPage(indexToPage);
            return true;
        }
        return false;
    }
    
    public void requestDisallowInterceptTouchEvent(final boolean b) {
        if (b) {
            this.getPageAt(this.mCurrentPage).cancelLongPress();
        }
        super.requestDisallowInterceptTouchEvent(b);
    }
    
    public void scrollBy(final int n, final int n2) {
        this.scrollTo(this.getUnboundedScrollX() + n, this.getScrollY() + n2);
    }
    
    public void scrollLeft() {
        if (this.getNextPage() > 0) {
            this.snapToPage(this.getNextPage() - 1);
        }
    }
    
    public void scrollRight() {
        if (this.getNextPage() < this.getChildCount() - 1) {
            this.snapToPage(this.getNextPage() + 1);
        }
    }
    
    public void scrollTo(int max, final int n) {
        final int n2 = 1;
        if (this.mFreeScroll) {
            if (!this.mScroller.isFinished() && (max > this.mFreeScrollMaxScrollX || max < this.mFreeScrollMinScrollX)) {
                this.forceFinishScroller(false);
            }
            max = Math.max(Math.min(max, this.mFreeScrollMaxScrollX), this.mFreeScrollMinScrollX);
        }
        this.mUnboundedScrollX = max;
        final boolean b = (this.mIsRtl ? (max > this.mMaxScrollX) : (max < 0)) && n2;
        final boolean b2 = (this.mIsRtl ? (max < 0) : (max > this.mMaxScrollX)) && n2;
        if (b) {
            int mMaxScrollX;
            if (this.mIsRtl) {
                mMaxScrollX = this.mMaxScrollX;
            }
            else {
                mMaxScrollX = 0;
            }
            super.scrollTo(mMaxScrollX, n);
            if (this.mAllowOverScroll) {
                this.mWasInOverscroll = (n2 != 0);
                if (this.mIsRtl) {
                    this.overScroll(max - this.mMaxScrollX);
                }
                else {
                    this.overScroll(max);
                }
            }
        }
        else if (b2) {
            int mMaxScrollX2;
            if (this.mIsRtl) {
                mMaxScrollX2 = 0;
            }
            else {
                mMaxScrollX2 = this.mMaxScrollX;
            }
            super.scrollTo(mMaxScrollX2, n);
            if (this.mAllowOverScroll) {
                this.mWasInOverscroll = (n2 != 0);
                if (this.mIsRtl) {
                    this.overScroll(max);
                }
                else {
                    this.overScroll(max - this.mMaxScrollX);
                }
            }
        }
        else {
            if (this.mWasInOverscroll) {
                this.overScroll(0.0f);
                this.mWasInOverscroll = false;
            }
            super.scrollTo(this.mOverScrollX = max, n);
        }
        if (this.isReordering(n2 != 0)) {
            final float[] mapPointFromParentToView = this.mapPointFromParentToView((View)this, this.mParentDownMotionX, this.mParentDownMotionY);
            this.mLastMotionX = mapPointFromParentToView[0];
            this.mLastMotionY = mapPointFromParentToView[n2];
            this.updateDragViewTranslationDuringDrag();
        }
    }
    
    public void sendAccessibilityEvent(final int n) {
        if (n != 4096) {
            super.sendAccessibilityEvent(n);
        }
    }
    
    public void setCurrentPage(final int n) {
        if (!this.mScroller.isFinished()) {
            this.abortScrollerAnimation(true);
        }
        if (this.getChildCount() == 0) {
            return;
        }
        final int mCurrentPage = this.mCurrentPage;
        this.mCurrentPage = this.validateNewPage(n);
        this.updateCurrentPageScroll();
        this.notifyPageSwitchListener(mCurrentPage);
        this.invalidate();
    }
    
    protected void setDefaultInterpolator(final Interpolator mDefaultInterpolator) {
        this.mDefaultInterpolator = mDefaultInterpolator;
        this.mScroller.setInterpolator((TimeInterpolator)this.mDefaultInterpolator);
    }
    
    protected void setEnableOverscroll(final boolean mAllowOverScroll) {
        this.mAllowOverScroll = mAllowOverScroll;
    }
    
    public void setMinScale(final float mMinScale) {
        this.mMinScale = mMinScale;
        this.mUseMinScale = true;
        this.requestLayout();
    }
    
    public void setOnLongClickListener(final View$OnLongClickListener onLongClickListener) {
        this.mLongClickListener = onLongClickListener;
        for (int pageCount = this.getPageCount(), i = 0; i < pageCount; ++i) {
            this.getPageAt(i).setOnLongClickListener(onLongClickListener);
        }
        super.setOnLongClickListener(onLongClickListener);
    }
    
    public void setPageSpacing(final int mPageSpacing) {
        this.mPageSpacing = mPageSpacing;
        this.requestLayout();
    }
    
    public void setScaleX(final float scaleX) {
        final int n = 1;
        super.setScaleX(scaleX);
        if (this.isReordering(n != 0)) {
            final float[] mapPointFromParentToView = this.mapPointFromParentToView((View)this, this.mParentDownMotionX, this.mParentDownMotionY);
            this.mLastMotionX = mapPointFromParentToView[0];
            this.mLastMotionY = mapPointFromParentToView[n];
            this.updateDragViewTranslationDuringDrag();
        }
    }
    
    protected boolean shouldFlingForVelocity(final int n) {
        return Math.abs(n) > this.mFlingThresholdVelocity;
    }
    
    protected void snapToDestination() {
        this.snapToPage(this.getPageNearestToCenterOfScreen(), this.getPageSnapDuration());
    }
    
    public void snapToPage(final int n) {
        this.snapToPage(n, 750);
    }
    
    protected void snapToPage(final int n, final int n2) {
        this.snapToPage(n, n2, false, null);
    }
    
    protected void snapToPage(final int n, final int n2, final int n3) {
        this.snapToPage(n, n2, n3, false, null);
    }
    
    protected void snapToPage(final int n, final int n2, final int n3, final boolean b, final TimeInterpolator interpolator) {
        this.mNextPage = this.validateNewPage(n);
        this.awakenScrollBars(n3);
        int abs;
        if (b) {
            abs = 0;
        }
        else if (n3 == 0) {
            abs = Math.abs(n2);
        }
        else {
            abs = n3;
        }
        if (abs != 0) {
            this.pageBeginTransition();
        }
        if (!this.mScroller.isFinished()) {
            this.abortScrollerAnimation(false);
        }
        if (interpolator != null) {
            this.mScroller.setInterpolator(interpolator);
        }
        else {
            this.mScroller.setInterpolator((TimeInterpolator)this.mDefaultInterpolator);
        }
        this.mScroller.startScroll(this.getUnboundedScrollX(), 0, n2, 0, abs);
        this.updatePageIndicator();
        if (b) {
            this.computeScroll();
            this.pageEndTransition();
        }
        this.invalidate();
    }
    
    protected void snapToPage(final int n, final int n2, final TimeInterpolator timeInterpolator) {
        this.snapToPage(n, n2, false, timeInterpolator);
    }
    
    protected void snapToPage(final int n, final int n2, final boolean b, final TimeInterpolator timeInterpolator) {
        final int validateNewPage = this.validateNewPage(n);
        this.snapToPage(validateNewPage, this.getScrollForPage(validateNewPage) - this.getUnboundedScrollX(), n2, b, timeInterpolator);
    }
    
    public void snapToPageImmediately(final int n) {
        this.snapToPage(n, 750, true, null);
    }
    
    protected void snapToPageWithVelocity(final int n, final int n2) {
        final float n3 = 1.0f;
        final int validateNewPage = this.validateNewPage(n);
        final int n4 = this.getViewportWidth() / 2;
        final int n5 = this.getScrollForPage(validateNewPage) - this.getUnboundedScrollX();
        if (Math.abs(n2) < this.mMinFlingVelocity) {
            this.snapToPage(validateNewPage, 750);
            return;
        }
        this.snapToPage(validateNewPage, n5, Math.round(Math.abs((n4 * this.distanceInfluenceForSnapDuration(Math.min(n3, Math.abs(n5) * n3 / (n4 * 2))) + n4) / Math.max(this.mMinSnapVelocity, Math.abs(n2))) * 1000.0f) * 4);
    }
    
    public boolean startReordering(final View view) {
        final float n = 1.15f;
        final int mReorderingStarted = 1;
        final int indexOfChild = this.indexOfChild(view);
        if (this.mTouchState != 0 || indexOfChild <= 0) {
            return false;
        }
        this.mTempVisiblePagesRange[0] = 0;
        this.mTempVisiblePagesRange[mReorderingStarted] = this.getPageCount() - 1;
        this.getFreeScrollPageRange(this.mTempVisiblePagesRange);
        this.mReorderingStarted = (mReorderingStarted != 0);
        if (this.mTempVisiblePagesRange[0] <= indexOfChild && indexOfChild <= this.mTempVisiblePagesRange[mReorderingStarted]) {
            this.mDragView = this.getChildAt(indexOfChild);
            this.mDragView.animate().scaleX(n).scaleY(n).setDuration((long)100).start();
            this.mDragViewBaselineLeft = this.mDragView.getLeft();
            this.snapToPage(this.getPageNearestToCenterOfScreen());
            this.disableFreeScroll();
            this.onStartReordering();
            return mReorderingStarted != 0;
        }
        return false;
    }
    
    protected void updateCurrentPageScroll() {
        int scrollForPage;
        if (this.mCurrentPage >= 0 && this.mCurrentPage < this.getPageCount()) {
            scrollForPage = this.getScrollForPage(this.mCurrentPage);
        }
        else {
            scrollForPage = 0;
        }
        this.scrollTo(scrollForPage, 0);
        this.mScroller.setFinalX(scrollForPage);
        this.forceFinishScroller(true);
    }
    
    void updateFreescrollBounds() {
        final int n = 1;
        this.getFreeScrollPageRange(this.mTempVisiblePagesRange);
        if (this.mIsRtl) {
            this.mFreeScrollMinScrollX = this.getScrollForPage(this.mTempVisiblePagesRange[n]);
            this.mFreeScrollMaxScrollX = this.getScrollForPage(this.mTempVisiblePagesRange[0]);
        }
        else {
            this.mFreeScrollMinScrollX = this.getScrollForPage(this.mTempVisiblePagesRange[0]);
            this.mFreeScrollMaxScrollX = this.getScrollForPage(this.mTempVisiblePagesRange[n]);
        }
    }
    
    void updateMaxScrollX() {
        this.mMaxScrollX = this.computeMaxScrollX();
    }
}

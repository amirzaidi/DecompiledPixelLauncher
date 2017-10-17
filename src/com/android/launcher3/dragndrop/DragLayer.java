// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import com.android.launcher3.DropTargetBar;
import android.view.accessibility.AccessibilityEvent;
import com.android.launcher3.widget.WidgetsBottomSheet;
import android.view.accessibility.AccessibilityManager;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.InsettableFrameLayout$LayoutParams;
import android.widget.FrameLayout$LayoutParams;
import android.view.KeyEvent;
import android.graphics.Region$Op;
import android.graphics.Canvas;
import android.view.ViewGroup$LayoutParams;
import com.android.launcher3.folder.FolderIcon;
import android.widget.TextView;
import com.android.launcher3.CellLayout$LayoutParams;
import com.android.launcher3.ShortcutAndWidgetContainer;
import android.content.res.Resources;
import android.view.animation.Interpolator;
import android.animation.Animator$AnimatorListener;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.view.ViewGroup;
import android.view.LayoutInflater;
import com.android.launcher3.CellLayout;
import com.android.launcher3.LauncherAppWidgetHostView;
import java.util.ArrayList;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.AbstractFloatingView;
import android.view.MotionEvent;
import com.android.launcher3.Utilities;
import android.view.animation.DecelerateInterpolator;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.PinchToOverviewListener;
import com.android.launcher3.Launcher;
import android.graphics.Rect;
import com.android.launcher3.keyboard.ViewGroupFocusHelper;
import android.animation.ValueAnimator;
import com.android.launcher3.AppWidgetResizeFrame;
import android.animation.TimeInterpolator;
import android.view.View;
import com.android.launcher3.allapps.AllAppsTransitionController;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.InsettableFrameLayout;

public class DragLayer extends InsettableFrameLayout
{
    private TouchController mActiveController;
    private AllAppsTransitionController mAllAppsController;
    View mAnchorView;
    int mAnchorViewInitialScrollX;
    private float mBackgroundAlpha;
    private int mChildCountOnLastUpdate;
    private final TimeInterpolator mCubicEaseOutInterpolator;
    private AppWidgetResizeFrame mCurrentResizeFrame;
    DragController mDragController;
    private ValueAnimator mDropAnim;
    DragView mDropView;
    private final ViewGroupFocusHelper mFocusIndicatorHelper;
    private final Rect mHighlightRect;
    private final Rect mHitRect;
    private boolean mHoverPointClosesFolder;
    private final boolean mIsRtl;
    private Launcher mLauncher;
    private PinchToOverviewListener mPinchListener;
    private final Rect mScrollChildPosition;
    private final int[] mTmpXY;
    private int mTopViewIndex;
    private DragLayer$TouchCompleteListener mTouchCompleteListener;
    
    public DragLayer(final Context context, final AttributeSet set) {
        super(context, set);
        this.mTmpXY = new int[2];
        this.mDropAnim = null;
        this.mCubicEaseOutInterpolator = (TimeInterpolator)new DecelerateInterpolator(1.5f);
        this.mDropView = null;
        this.mAnchorViewInitialScrollX = 0;
        this.mAnchorView = null;
        this.mHoverPointClosesFolder = false;
        this.mHitRect = new Rect();
        this.mHighlightRect = new Rect();
        this.mChildCountOnLastUpdate = -1;
        this.mBackgroundAlpha = 0.0f;
        this.mScrollChildPosition = new Rect();
        this.mPinchListener = null;
        this.setMotionEventSplittingEnabled(false);
        this.setChildrenDrawingOrderEnabled(true);
        this.mIsRtl = Utilities.isRtl(this.getResources());
        this.mFocusIndicatorHelper = new ViewGroupFocusHelper((View)this);
    }
    
    private boolean handleTouchDown(final MotionEvent motionEvent, final boolean b) {
        boolean b2 = true;
        final AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView(this.mLauncher);
        if (topOpenView != null && b) {
            final ExtendedEditText activeTextView = topOpenView.getActiveTextView();
            if (activeTextView != null) {
                if (!this.isEventOverView((View)activeTextView, motionEvent)) {
                    activeTextView.dispatchBackKey();
                    return b2;
                }
            }
            else if (!this.isEventOverView((View)topOpenView, motionEvent)) {
                if (!this.isInAccessibleDrag()) {
                    this.mLauncher.getUserEventDispatcher().logActionTapOutside(LoggerUtils.newContainerTarget(topOpenView.getLogContainerType()));
                    topOpenView.close(b2);
                    final View extendedTouchView = topOpenView.getExtendedTouchView();
                    if (extendedTouchView != null) {
                        b2 = (this.isEventOverView(extendedTouchView, motionEvent) ^ true);
                    }
                    return b2;
                }
                if (!this.isEventOverDropTargetBar(motionEvent)) {
                    return b2;
                }
            }
        }
        return false;
    }
    
    private boolean isEventOverDropTargetBar(final MotionEvent motionEvent) {
        return this.isEventOverView((View)this.mLauncher.getDropTargetBar(), motionEvent);
    }
    
    private boolean isEventOverFolder(final Folder folder, final MotionEvent motionEvent) {
        return this.isEventOverView((View)folder, motionEvent);
    }
    
    private boolean isInAccessibleDrag() {
        return this.mLauncher.getAccessibilityDelegate().isInAccessibleDrag();
    }
    
    private void sendTapOutsideFolderAccessibilityEvent(final boolean b) {
        int n;
        if (b) {
            n = 2131492937;
        }
        else {
            n = 2131492936;
        }
        Utilities.sendCustomAccessibilityEvent((View)this, 8, this.getContext().getString(n));
    }
    
    private void updateChildIndices() {
        this.mTopViewIndex = -1;
        final int childCount = this.getChildCount();
        for (int i = 0; i < childCount; ++i) {
            if (this.getChildAt(i) instanceof DragView) {
                this.mTopViewIndex = i;
            }
        }
        this.mChildCountOnLastUpdate = childCount;
    }
    
    public void addChildrenForAccessibility(final ArrayList list) {
        final AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView(this.mLauncher);
        if (topOpenView != null) {
            list.add(topOpenView);
            if (this.isInAccessibleDrag()) {
                list.add(this.mLauncher.getDropTargetBar());
            }
        }
        else {
            super.addChildrenForAccessibility(list);
        }
    }
    
    public void addFocusables(final ArrayList list, final int n, final int n2) {
        final AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView(this.mLauncher);
        if (topOpenView != null) {
            ((View)topOpenView).addFocusables(list, n);
        }
        else {
            super.addFocusables(list, n, n2);
        }
    }
    
    public void addResizeFrame(final LauncherAppWidgetHostView launcherAppWidgetHostView, final CellLayout cellLayout) {
        this.clearResizeFrame();
        (this.mCurrentResizeFrame = (AppWidgetResizeFrame)LayoutInflater.from((Context)this.mLauncher).inflate(2130968587, (ViewGroup)this, false)).setupForWidget(launcherAppWidgetHostView, cellLayout, this);
        ((DragLayer$LayoutParams)this.mCurrentResizeFrame.getLayoutParams()).customPosition = true;
        this.addView((View)this.mCurrentResizeFrame);
        this.mCurrentResizeFrame.snapToWidget(false);
    }
    
    public void animateView(final DragView mDropView, final ValueAnimator$AnimatorUpdateListener valueAnimator$AnimatorUpdateListener, final int n, final TimeInterpolator interpolator, final Runnable runnable, final int n2, final View mAnchorView) {
        if (this.mDropAnim != null) {
            this.mDropAnim.cancel();
        }
        (this.mDropView = mDropView).cancelAnimation();
        this.mDropView.requestLayout();
        if (mAnchorView != null) {
            this.mAnchorViewInitialScrollX = mAnchorView.getScrollX();
        }
        this.mAnchorView = mAnchorView;
        (this.mDropAnim = new ValueAnimator()).setInterpolator(interpolator);
        this.mDropAnim.setDuration((long)n);
        final ValueAnimator mDropAnim = this.mDropAnim;
        final float[] array;
        final float[] floatValues = array = new float[2];
        array[0] = 0.0f;
        array[1] = 1.0f;
        mDropAnim.setFloatValues(floatValues);
        this.mDropAnim.addUpdateListener(valueAnimator$AnimatorUpdateListener);
        this.mDropAnim.addListener((Animator$AnimatorListener)new DragLayer$3(this, runnable, n2));
        this.mDropAnim.start();
    }
    
    public void animateView(final DragView dragView, final Rect rect, final Rect rect2, final float n, final float n2, final float n3, final float n4, final float n5, int max, final Interpolator interpolator, final Interpolator interpolator2, final Runnable runnable, final int n6, final View view) {
        final float n7 = (float)Math.hypot(rect2.left - rect.left, rect2.top - rect.top);
        final Resources resources = this.getResources();
        final float n8 = resources.getInteger(2131558420);
        if (max < 0) {
            int integer = resources.getInteger(2131558416);
            if (n7 < n8) {
                integer *= (int)this.mCubicEaseOutInterpolator.getInterpolation(n7 / n8);
            }
            max = Math.max(integer, resources.getInteger(2131558415));
        }
        TimeInterpolator mCubicEaseOutInterpolator;
        if (interpolator2 == null || interpolator == null) {
            mCubicEaseOutInterpolator = this.mCubicEaseOutInterpolator;
        }
        else {
            mCubicEaseOutInterpolator = null;
        }
        this.animateView(dragView, (ValueAnimator$AnimatorUpdateListener)new DragLayer$2(this, dragView, interpolator2, interpolator, n2, dragView.getScaleX(), n3, n4, n5, n, dragView.getAlpha(), rect, rect2), max, mCubicEaseOutInterpolator, runnable, n6, view);
    }
    
    public void animateViewIntoPosition(final DragView dragView, final int n, final int n2, final int n3, final int n4, final float n5, final float n6, final float n7, final float n8, final float n9, final Runnable runnable, final int n10, final int n11, final View view) {
        this.animateView(dragView, new Rect(n, n2, dragView.getMeasuredWidth() + n, dragView.getMeasuredHeight() + n2), new Rect(n3, n4, dragView.getMeasuredWidth() + n3, dragView.getMeasuredHeight() + n4), n5, n6, n7, n8, n9, n11, null, null, runnable, n10, view);
    }
    
    public void animateViewIntoPosition(final DragView dragView, final View view, final int n, final Runnable runnable, final View view2) {
        final ShortcutAndWidgetContainer shortcutAndWidgetContainer = (ShortcutAndWidgetContainer)view.getParent();
        final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)view.getLayoutParams();
        shortcutAndWidgetContainer.measureChild(view);
        final Rect rect = new Rect();
        this.getViewRectRelativeToSelf(dragView, rect);
        final int[] array = new int[2];
        final float scaleX = view.getScaleX();
        array[0] = cellLayout$LayoutParams.x + (int)(view.getMeasuredWidth() * (1.0f - scaleX) / 2.0f);
        array[1] = cellLayout$LayoutParams.y + (int)(view.getMeasuredHeight() * (1.0f - scaleX) / 2.0f);
        final float n2 = this.getDescendantCoordRelativeToSelf((View)view.getParent(), array) * scaleX;
        final int n3 = array[0];
        final int n4 = array[1];
        float n5;
        int n7;
        int n8;
        if (view instanceof TextView) {
            final TextView textView = (TextView)view;
            n5 = n2 / dragView.getIntrinsicIconScaleFactor();
            int n6 = (int)(Math.round(textView.getPaddingTop() * n5) + n4 - dragView.getMeasuredHeight() * (1.0f - n5) / 2.0f);
            if (dragView.getDragVisualizeOffset() != null) {
                n6 -= Math.round(dragView.getDragVisualizeOffset().y * n5);
            }
            n7 = n3 - (dragView.getMeasuredWidth() - Math.round(n2 * view.getMeasuredWidth())) / 2;
            n8 = n6;
        }
        else if (view instanceof FolderIcon) {
            n8 = (int)((int)(Math.round((view.getPaddingTop() - dragView.getDragRegionTop()) * n2) + n4 - dragView.getBlurSizeOutline() * n2 / 2.0f) - (1.0f - n2) * dragView.getMeasuredHeight() / 2.0f);
            n7 = n3 - (dragView.getMeasuredWidth() - Math.round(view.getMeasuredWidth() * n2)) / 2;
            n5 = n2;
        }
        else {
            n8 = n4 - Math.round((dragView.getHeight() - view.getMeasuredHeight()) * n2) / 2;
            n7 = n3 - Math.round((dragView.getMeasuredWidth() - view.getMeasuredWidth()) * n2) / 2;
            n5 = n2;
        }
        final int left = rect.left;
        final int top = rect.top;
        view.setVisibility(4);
        this.animateViewIntoPosition(dragView, left, top, n7, n8, 1.0f, 1.0f, 1.0f, n5, n5, new DragLayer$1(this, view, runnable), 0, n, view2);
    }
    
    public void animateViewIntoPosition(final DragView dragView, final View view, final Runnable runnable, final View view2) {
        this.animateViewIntoPosition(dragView, view, -1, runnable, view2);
    }
    
    public void animateViewIntoPosition(final DragView dragView, final int[] array, final float n, final float n2, final float n3, final int n4, final Runnable runnable, final int n5) {
        final Rect rect = new Rect();
        this.getViewRectRelativeToSelf(dragView, rect);
        this.animateViewIntoPosition(dragView, rect.left, rect.top, array[0], array[1], n, 1.0f, 1.0f, n2, n3, runnable, n4, n5, null);
    }
    
    public void bringChildToFront(final View view) {
        super.bringChildToFront(view);
        this.updateChildIndices();
    }
    
    protected boolean checkLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof DragLayer$LayoutParams;
    }
    
    public void clearAnimatedView() {
        if (this.mDropAnim != null) {
            this.mDropAnim.cancel();
        }
        if (this.mDropView != null) {
            this.mDragController.onDeferredEndDrag(this.mDropView);
        }
        this.mDropView = null;
        this.invalidate();
    }
    
    public void clearResizeFrame() {
        if (this.mCurrentResizeFrame != null) {
            this.mCurrentResizeFrame.commitResize();
            this.removeView((View)this.mCurrentResizeFrame);
            this.mCurrentResizeFrame = null;
        }
    }
    
    protected void dispatchDraw(final Canvas canvas) {
        if (this.mBackgroundAlpha > 0.0f) {
            this.mLauncher.getWorkspace().computeScrollWithoutInvalidation();
            final int n = (int)(this.mBackgroundAlpha * 255.0f);
            final CellLayout currentDragOverlappingLayout = this.mLauncher.getWorkspace().getCurrentDragOverlappingLayout();
            canvas.save();
            if (currentDragOverlappingLayout != null && currentDragOverlappingLayout != this.mLauncher.getHotseat().getLayout()) {
                this.getDescendantRectRelativeToSelf((View)currentDragOverlappingLayout, this.mHighlightRect);
                canvas.clipRect(this.mHighlightRect, Region$Op.DIFFERENCE);
            }
            canvas.drawColor(n << 24 | 0x0);
            canvas.restore();
        }
        this.mFocusIndicatorHelper.draw(canvas);
        super.dispatchDraw(canvas);
    }
    
    public boolean dispatchKeyEvent(final KeyEvent keyEvent) {
        return this.mDragController.dispatchKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }
    
    public boolean dispatchUnhandledMove(final View view, final int n) {
        boolean dispatchUnhandledMove = true;
        if (AbstractFloatingView.getTopOpenView(this.mLauncher) == null || !dispatchUnhandledMove) {
            dispatchUnhandledMove = this.mDragController.dispatchUnhandledMove(view, n);
        }
        return dispatchUnhandledMove;
    }
    
    protected DragLayer$LayoutParams generateDefaultLayoutParams() {
        final int n = -2;
        return new DragLayer$LayoutParams(n, n);
    }
    
    public DragLayer$LayoutParams generateLayoutParams(final AttributeSet set) {
        return new DragLayer$LayoutParams(this.getContext(), set);
    }
    
    protected DragLayer$LayoutParams generateLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return new DragLayer$LayoutParams(viewGroup$LayoutParams);
    }
    
    public View getAnimatedView() {
        return this.mDropView;
    }
    
    public float getBackgroundAlpha() {
        return this.mBackgroundAlpha;
    }
    
    protected int getChildDrawingOrder(final int n, final int n2) {
        if (this.mChildCountOnLastUpdate != n) {
            this.updateChildIndices();
        }
        if (this.mTopViewIndex == -1) {
            return n2;
        }
        if (n2 == n - 1) {
            return this.mTopViewIndex;
        }
        if (n2 < this.mTopViewIndex) {
            return n2;
        }
        return n2 + 1;
    }
    
    public float getDescendantCoordRelativeToSelf(final View view, final int[] array) {
        return this.getDescendantCoordRelativeToSelf(view, array, false);
    }
    
    public float getDescendantCoordRelativeToSelf(final View view, final int[] array, final boolean b) {
        return Utilities.getDescendantCoordRelativeToAncestor(view, (View)this, array, b);
    }
    
    public float getDescendantRectRelativeToSelf(final View view, final Rect rect) {
        final int n = 1;
        this.mTmpXY[0] = 0;
        this.mTmpXY[n] = 0;
        final float descendantCoordRelativeToSelf = this.getDescendantCoordRelativeToSelf(view, this.mTmpXY);
        rect.set(this.mTmpXY[0], this.mTmpXY[n], (int)(this.mTmpXY[0] + view.getMeasuredWidth() * descendantCoordRelativeToSelf), (int)(this.mTmpXY[n] + view.getMeasuredHeight() * descendantCoordRelativeToSelf));
        return descendantCoordRelativeToSelf;
    }
    
    public ViewGroupFocusHelper getFocusIndicatorHelper() {
        return this.mFocusIndicatorHelper;
    }
    
    public float getLocationInDragLayer(final View view, final int[] array) {
        array[1] = (array[0] = 0);
        return this.getDescendantCoordRelativeToSelf(view, array);
    }
    
    public void getViewRectRelativeToSelf(final View view, final Rect rect) {
        final int n = 1;
        final int[] array = new int[2];
        this.getLocationInWindow(array);
        final int n2 = array[0];
        final int n3 = array[n];
        view.getLocationInWindow(array);
        final int n4 = array[0];
        final int n5 = array[n];
        final int n6 = n4 - n2;
        final int n7 = n5 - n3;
        rect.set(n6, n7, view.getMeasuredWidth() + n6, view.getMeasuredHeight() + n7);
    }
    
    public void invalidateScrim() {
        if (this.mBackgroundAlpha > 0.0f) {
            this.invalidate();
        }
    }
    
    public boolean isEventOverView(final View view, final MotionEvent motionEvent) {
        this.getDescendantRectRelativeToSelf(view, this.mHitRect);
        return this.mHitRect.contains((int)motionEvent.getX(), (int)motionEvent.getY());
    }
    
    public void mapCoordInSelfToDescendant(final View view, final int[] array) {
        Utilities.mapCoordInSelfToDescendant(view, (View)this, array);
    }
    
    public void onAccessibilityStateChanged(final boolean b) {
        PinchToOverviewListener mPinchListener;
        if (FeatureFlags.LAUNCHER3_DISABLE_PINCH_TO_OVERVIEW || b) {
            mPinchListener = null;
        }
        else {
            mPinchListener = new PinchToOverviewListener(this.mLauncher);
        }
        this.mPinchListener = mPinchListener;
    }
    
    public void onChildViewAdded(final View view, final View view2) {
        super.onChildViewAdded(view, view2);
        this.updateChildIndices();
    }
    
    public void onChildViewRemoved(final View view, final View view2) {
        this.updateChildIndices();
    }
    
    public boolean onHoverEvent(final MotionEvent motionEvent) {
        return false;
    }
    
    public boolean onInterceptHoverEvent(final MotionEvent motionEvent) {
        final boolean b = true;
        if (this.mLauncher == null || this.mLauncher.getWorkspace() == null) {
            return false;
        }
        final Folder open = Folder.getOpen(this.mLauncher);
        if (open == null) {
            return false;
        }
        if (((AccessibilityManager)this.getContext().getSystemService("accessibility")).isTouchExplorationEnabled()) {
            switch (motionEvent.getAction()) {
                case 9: {
                    boolean b2;
                    if (!this.isEventOverFolder(open, motionEvent)) {
                        b2 = (this.isInAccessibleDrag() && this.isEventOverDropTargetBar(motionEvent));
                    }
                    else {
                        b2 = b;
                    }
                    if (!b2) {
                        this.sendTapOutsideFolderAccessibilityEvent(open.isEditingName());
                        return this.mHoverPointClosesFolder = b;
                    }
                    this.mHoverPointClosesFolder = false;
                    break;
                }
                case 7: {
                    boolean b3;
                    if (!this.isEventOverFolder(open, motionEvent)) {
                        b3 = (this.isInAccessibleDrag() && this.isEventOverDropTargetBar(motionEvent));
                    }
                    else {
                        b3 = b;
                    }
                    if (!b3 && (this.mHoverPointClosesFolder ^ true)) {
                        this.sendTapOutsideFolderAccessibilityEvent(open.isEditingName());
                        return this.mHoverPointClosesFolder = b;
                    }
                    if (!b3) {
                        return b;
                    }
                    this.mHoverPointClosesFolder = false;
                    break;
                }
            }
        }
        return false;
    }
    
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        final boolean b = true;
        final int action = motionEvent.getAction();
        if (action == 0) {
            this.mAllAppsController.cancelDiscoveryAnimation();
            if (this.handleTouchDown(motionEvent, b)) {
                return b;
            }
        }
        else if (action == (b ? 1 : 0) || action == 3) {
            if (this.mTouchCompleteListener != null) {
                this.mTouchCompleteListener.onTouchComplete();
            }
            this.mTouchCompleteListener = null;
        }
        this.mActiveController = null;
        if (this.mCurrentResizeFrame != null && this.mCurrentResizeFrame.onControllerInterceptTouchEvent(motionEvent)) {
            this.mActiveController = this.mCurrentResizeFrame;
            return b;
        }
        this.clearResizeFrame();
        if (this.mDragController.onControllerInterceptTouchEvent(motionEvent)) {
            this.mActiveController = this.mDragController;
            return b;
        }
        if (FeatureFlags.LAUNCHER3_ALL_APPS_PULL_UP && this.mAllAppsController.onControllerInterceptTouchEvent(motionEvent)) {
            this.mActiveController = this.mAllAppsController;
            return b;
        }
        final WidgetsBottomSheet open = WidgetsBottomSheet.getOpen(this.mLauncher);
        if (open != null && open.onControllerInterceptTouchEvent(motionEvent)) {
            this.mActiveController = open;
            return b;
        }
        if (this.mPinchListener != null && this.mPinchListener.onControllerInterceptTouchEvent(motionEvent)) {
            this.mActiveController = this.mPinchListener;
            return b;
        }
        return false;
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        super.onLayout(b, n, n2, n3, n4);
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
            final View child = this.getChildAt(i);
            final FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams)child.getLayoutParams();
            if (frameLayout$LayoutParams instanceof DragLayer$LayoutParams) {
                final DragLayer$LayoutParams dragLayer$LayoutParams = (DragLayer$LayoutParams)frameLayout$LayoutParams;
                if (dragLayer$LayoutParams.customPosition) {
                    child.layout(dragLayer$LayoutParams.x, dragLayer$LayoutParams.y, dragLayer$LayoutParams.x + dragLayer$LayoutParams.width, dragLayer$LayoutParams.height + dragLayer$LayoutParams.y);
                }
            }
        }
    }
    
    protected boolean onRequestFocusInDescendants(final int n, final Rect rect) {
        final AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView(this.mLauncher);
        if (topOpenView != null) {
            return ((View)topOpenView).requestFocus(n, rect);
        }
        return super.onRequestFocusInDescendants(n, rect);
    }
    
    public boolean onRequestSendAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        final AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView(this.mLauncher);
        if (topOpenView == null) {
            return super.onRequestSendAccessibilityEvent(view, accessibilityEvent);
        }
        if (view == topOpenView) {
            return super.onRequestSendAccessibilityEvent(view, accessibilityEvent);
        }
        return this.isInAccessibleDrag() && view instanceof DropTargetBar && super.onRequestSendAccessibilityEvent((View)view, accessibilityEvent);
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        final boolean b = true;
        final int action = motionEvent.getAction();
        if (action == 0) {
            if (this.handleTouchDown(motionEvent, false)) {
                return b;
            }
        }
        else if (action == (b ? 1 : 0) || action == 3) {
            if (this.mTouchCompleteListener != null) {
                this.mTouchCompleteListener.onTouchComplete();
            }
            this.mTouchCompleteListener = null;
        }
        return this.mActiveController != null && this.mActiveController.onControllerTouchEvent(motionEvent);
    }
    
    public void setBackgroundAlpha(final float mBackgroundAlpha) {
        if (mBackgroundAlpha != this.mBackgroundAlpha) {
            this.mBackgroundAlpha = mBackgroundAlpha;
            this.invalidate();
        }
    }
    
    public void setInsets(final Rect insets) {
        int backgroundResource = 0;
        super.setInsets(insets);
        if (insets.top != 0) {
            backgroundResource = 2130837587;
        }
        this.setBackgroundResource(backgroundResource);
    }
    
    public void setTouchCompleteListener(final DragLayer$TouchCompleteListener mTouchCompleteListener) {
        this.mTouchCompleteListener = mTouchCompleteListener;
    }
    
    public void setup(final Launcher mLauncher, final DragController mDragController, final AllAppsTransitionController mAllAppsController) {
        this.mLauncher = mLauncher;
        this.mDragController = mDragController;
        this.mAllAppsController = mAllAppsController;
        this.onAccessibilityStateChanged(((AccessibilityManager)this.mLauncher.getSystemService("accessibility")).isEnabled());
    }
}

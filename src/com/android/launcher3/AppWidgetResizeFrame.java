// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.util.Property;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.Animator;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.animation.PropertyValuesHolder;
import com.android.launcher3.dragndrop.DragLayer$LayoutParams;
import com.android.launcher3.util.FocusLogic;
import android.view.KeyEvent;
import android.os.Bundle;
import android.appwidget.AppWidgetHostView;
import android.view.MotionEvent;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.accessibility.DragViewStateAnnouncer;
import com.android.launcher3.dragndrop.DragLayer;
import android.view.View;
import android.graphics.Rect;
import android.graphics.Point;
import com.android.launcher3.util.TouchController;
import android.view.View$OnKeyListener;
import android.widget.FrameLayout;

public class AppWidgetResizeFrame extends FrameLayout implements View$OnKeyListener, TouchController
{
    private static Point[] sCellSize;
    private static final Rect sTmpRect;
    private final int mBackgroundPadding;
    private final AppWidgetResizeFrame$IntRange mBaselineX;
    private final AppWidgetResizeFrame$IntRange mBaselineY;
    private boolean mBottomBorderActive;
    private int mBottomTouchRegionAdjustment;
    private CellLayout mCellLayout;
    private int mDeltaX;
    private int mDeltaXAddOn;
    private final AppWidgetResizeFrame$IntRange mDeltaXRange;
    private int mDeltaY;
    private int mDeltaYAddOn;
    private final AppWidgetResizeFrame$IntRange mDeltaYRange;
    private final int[] mDirectionVector;
    private final View[] mDragHandles;
    private DragLayer mDragLayer;
    private final int[] mLastDirectionVector;
    private final Launcher mLauncher;
    private boolean mLeftBorderActive;
    private int mMinHSpan;
    private int mMinVSpan;
    private int mResizeMode;
    private boolean mRightBorderActive;
    private int mRunningHInc;
    private int mRunningVInc;
    private final DragViewStateAnnouncer mStateAnnouncer;
    private final AppWidgetResizeFrame$IntRange mTempRange1;
    private final AppWidgetResizeFrame$IntRange mTempRange2;
    private final int[] mTmpPt;
    private boolean mTopBorderActive;
    private int mTopTouchRegionAdjustment;
    private final int mTouchTargetWidth;
    private Rect mWidgetPadding;
    private LauncherAppWidgetHostView mWidgetView;
    private int mXDown;
    private int mYDown;
    
    static {
        sTmpRect = new Rect();
    }
    
    public AppWidgetResizeFrame(final Context context) {
        this(context, null);
    }
    
    public AppWidgetResizeFrame(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public AppWidgetResizeFrame(final Context context, final AttributeSet set, final int n) {
        final int n2 = 2;
        super(context, set, n);
        this.mDragHandles = new View[4];
        this.mDirectionVector = new int[n2];
        this.mLastDirectionVector = new int[n2];
        this.mTmpPt = new int[n2];
        this.mTempRange1 = new AppWidgetResizeFrame$IntRange(null);
        this.mTempRange2 = new AppWidgetResizeFrame$IntRange(null);
        this.mDeltaXRange = new AppWidgetResizeFrame$IntRange(null);
        this.mBaselineX = new AppWidgetResizeFrame$IntRange(null);
        this.mDeltaYRange = new AppWidgetResizeFrame$IntRange(null);
        this.mBaselineY = new AppWidgetResizeFrame$IntRange(null);
        this.mTopTouchRegionAdjustment = 0;
        this.mBottomTouchRegionAdjustment = 0;
        this.mLauncher = Launcher.getLauncher(context);
        this.mStateAnnouncer = DragViewStateAnnouncer.createFor((View)this);
        this.mBackgroundPadding = this.getResources().getDimensionPixelSize(2131427365);
        this.mTouchTargetWidth = this.mBackgroundPadding * 2;
    }
    
    private void getSnappedRectRelativeToDragLayer(final Rect rect) {
        final float scaleToFit = this.mWidgetView.getScaleToFit();
        this.mDragLayer.getViewRectRelativeToSelf((View)this.mWidgetView, rect);
        final int n = this.mBackgroundPadding * 2 + (int)((rect.width() - this.mWidgetPadding.left - this.mWidgetPadding.right) * scaleToFit);
        final int n2 = this.mBackgroundPadding * 2 + (int)((rect.height() - this.mWidgetPadding.top - this.mWidgetPadding.bottom) * scaleToFit);
        final int left = (int)(rect.left - this.mBackgroundPadding + this.mWidgetPadding.left * scaleToFit);
        final int top = (int)(scaleToFit * this.mWidgetPadding.top + (rect.top - this.mBackgroundPadding));
        rect.left = left;
        rect.top = top;
        rect.right = rect.left + n;
        rect.bottom = rect.top + n2;
    }
    
    private static int getSpanIncrement(final float n) {
        int round;
        if (Math.abs(n) > 0.66f) {
            round = Math.round(n);
        }
        else {
            round = 0;
        }
        return round;
    }
    
    public static Rect getWidgetSizeRanges(final Context context, final int n, final int n2, Rect rect) {
        final int n3 = 1;
        if (AppWidgetResizeFrame.sCellSize == null) {
            final InvariantDeviceProfile idp = LauncherAppState.getIDP(context);
            (AppWidgetResizeFrame.sCellSize = new Point[2])[0] = idp.landscapeProfile.getCellSize();
            AppWidgetResizeFrame.sCellSize[n3] = idp.portraitProfile.getCellSize();
        }
        if (rect == null) {
            rect = new Rect();
        }
        final float density = context.getResources().getDisplayMetrics().density;
        rect.set((int)(AppWidgetResizeFrame.sCellSize[n3].x * n / density), (int)(AppWidgetResizeFrame.sCellSize[0].y * n2 / density), (int)(AppWidgetResizeFrame.sCellSize[0].x * n / density), (int)(AppWidgetResizeFrame.sCellSize[n3].y * n2 / density));
        return rect;
    }
    
    private boolean handleTouchDown(final MotionEvent motionEvent) {
        final Rect rect = new Rect();
        final int mxDown = (int)motionEvent.getX();
        final int myDown = (int)motionEvent.getY();
        this.getHitRect(rect);
        if (rect.contains(mxDown, myDown) && this.beginResizeIfPointInRegion(mxDown - this.getLeft(), myDown - this.getTop())) {
            this.mXDown = mxDown;
            this.mYDown = myDown;
            return true;
        }
        return false;
    }
    
    private void onTouchUp() {
        final int cellWidth = this.mCellLayout.getCellWidth();
        final int cellHeight = this.mCellLayout.getCellHeight();
        this.mDeltaXAddOn = cellWidth * this.mRunningHInc;
        this.mDeltaYAddOn = this.mRunningVInc * cellHeight;
        this.mDeltaX = 0;
        this.mDeltaY = 0;
        this.post((Runnable)new AppWidgetResizeFrame$1(this));
    }
    
    private void resizeWidgetIfNeeded(final boolean b) {
        final float n = this.mCellLayout.getCellWidth();
        final float n2 = this.mCellLayout.getCellHeight();
        final int spanIncrement = getSpanIncrement((this.mDeltaX + this.mDeltaXAddOn) / n - this.mRunningHInc);
        final int spanIncrement2 = getSpanIncrement((this.mDeltaY + this.mDeltaYAddOn) / n2 - this.mRunningVInc);
        if (!b && spanIncrement == 0 && spanIncrement2 == 0) {
            return;
        }
        this.mDirectionVector[0] = 0;
        this.mDirectionVector[1] = 0;
        final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)this.mWidgetView.getLayoutParams();
        final int cellHSpan = cellLayout$LayoutParams.cellHSpan;
        final int cellVSpan = cellLayout$LayoutParams.cellVSpan;
        int n3;
        if (cellLayout$LayoutParams.useTmpCoords) {
            n3 = cellLayout$LayoutParams.tmpCellX;
        }
        else {
            n3 = cellLayout$LayoutParams.cellX;
        }
        int n4;
        if (cellLayout$LayoutParams.useTmpCoords) {
            n4 = cellLayout$LayoutParams.tmpCellY;
        }
        else {
            n4 = cellLayout$LayoutParams.cellY;
        }
        this.mTempRange1.set(n3, cellHSpan + n3);
        final int applyDeltaAndBound = this.mTempRange1.applyDeltaAndBound(this.mLeftBorderActive, this.mRightBorderActive, spanIncrement, this.mMinHSpan, this.mCellLayout.getCountX(), this.mTempRange2);
        final int start = this.mTempRange2.start;
        final int size = this.mTempRange2.size();
        if (applyDeltaAndBound != 0) {
            final int[] mDirectionVector = this.mDirectionVector;
            int n5;
            if (this.mLeftBorderActive) {
                n5 = -1;
            }
            else {
                n5 = 1;
            }
            mDirectionVector[0] = n5;
        }
        this.mTempRange1.set(n4, cellVSpan + n4);
        final int applyDeltaAndBound2 = this.mTempRange1.applyDeltaAndBound(this.mTopBorderActive, this.mBottomBorderActive, spanIncrement2, this.mMinVSpan, this.mCellLayout.getCountY(), this.mTempRange2);
        final int start2 = this.mTempRange2.start;
        final int size2 = this.mTempRange2.size();
        if (applyDeltaAndBound2 != 0) {
            final int[] mDirectionVector2 = this.mDirectionVector;
            int n6;
            if (this.mTopBorderActive) {
                n6 = -1;
            }
            else {
                n6 = 1;
            }
            mDirectionVector2[1] = n6;
        }
        if (!b && applyDeltaAndBound2 == 0 && applyDeltaAndBound == 0) {
            return;
        }
        if (b) {
            this.mDirectionVector[0] = this.mLastDirectionVector[0];
            this.mDirectionVector[1] = this.mLastDirectionVector[1];
        }
        else {
            this.mLastDirectionVector[0] = this.mDirectionVector[0];
            this.mLastDirectionVector[1] = this.mDirectionVector[1];
        }
        if (this.mCellLayout.createAreaForResize(start, start2, size, size2, (View)this.mWidgetView, this.mDirectionVector, b)) {
            if (this.mStateAnnouncer != null && (cellLayout$LayoutParams.cellHSpan != size || cellLayout$LayoutParams.cellVSpan != size2)) {
                this.mStateAnnouncer.announce(this.mLauncher.getString(2131492988, new Object[] { size, size2 }));
            }
            cellLayout$LayoutParams.tmpCellX = start;
            cellLayout$LayoutParams.tmpCellY = start2;
            cellLayout$LayoutParams.cellHSpan = size;
            cellLayout$LayoutParams.cellVSpan = size2;
            this.mRunningVInc += applyDeltaAndBound2;
            this.mRunningHInc += applyDeltaAndBound;
            if (!b) {
                updateWidgetSizeRanges(this.mWidgetView, this.mLauncher, size, size2);
            }
        }
        this.mWidgetView.requestLayout();
    }
    
    static void updateWidgetSizeRanges(final AppWidgetHostView appWidgetHostView, final Launcher launcher, final int n, final int n2) {
        getWidgetSizeRanges((Context)launcher, n, n2, AppWidgetResizeFrame.sTmpRect);
        appWidgetHostView.updateAppWidgetSize((Bundle)null, AppWidgetResizeFrame.sTmpRect.left, AppWidgetResizeFrame.sTmpRect.top, AppWidgetResizeFrame.sTmpRect.right, AppWidgetResizeFrame.sTmpRect.bottom);
    }
    
    public boolean beginResizeIfPointInRegion(final int n, final int n2) {
        final int n3 = 1;
        float alpha = 1.0f;
        final int n4 = 2;
        int mRightBorderActive;
        if ((this.mResizeMode & 0x1) != 0x0) {
            mRightBorderActive = n3;
        }
        else {
            mRightBorderActive = 0;
        }
        int mBottomBorderActive;
        if ((this.mResizeMode & 0x2) != 0x0) {
            mBottomBorderActive = n3;
        }
        else {
            mBottomBorderActive = 0;
        }
        this.mLeftBorderActive = (n < this.mTouchTargetWidth && mRightBorderActive);
        if (n <= this.getWidth() - this.mTouchTargetWidth) {
            mRightBorderActive = (false ? 1 : 0);
        }
        this.mRightBorderActive = (mRightBorderActive != 0);
        this.mTopBorderActive = (n2 < this.mTouchTargetWidth + this.mTopTouchRegionAdjustment && mBottomBorderActive);
        if (n2 <= this.getHeight() - this.mTouchTargetWidth + this.mBottomTouchRegionAdjustment) {
            mBottomBorderActive = (false ? 1 : 0);
        }
        this.mBottomBorderActive = (mBottomBorderActive != 0);
        boolean mBottomBorderActive2;
        if (!this.mLeftBorderActive && !this.mRightBorderActive && !this.mTopBorderActive) {
            mBottomBorderActive2 = this.mBottomBorderActive;
        }
        else {
            mBottomBorderActive2 = (n3 != 0);
        }
        if (mBottomBorderActive2) {
            final View view = this.mDragHandles[0];
            float alpha2;
            if (this.mLeftBorderActive) {
                alpha2 = alpha;
            }
            else {
                alpha2 = 0.0f;
            }
            view.setAlpha(alpha2);
            final View view2 = this.mDragHandles[n4];
            float alpha3;
            if (this.mRightBorderActive) {
                alpha3 = alpha;
            }
            else {
                alpha3 = 0.0f;
            }
            view2.setAlpha(alpha3);
            final View view3 = this.mDragHandles[n3];
            float alpha4;
            if (this.mTopBorderActive) {
                alpha4 = alpha;
            }
            else {
                alpha4 = 0.0f;
            }
            view3.setAlpha(alpha4);
            final View view4 = this.mDragHandles[3];
            if (!this.mBottomBorderActive) {
                alpha = 0.0f;
            }
            view4.setAlpha(alpha);
        }
        if (this.mLeftBorderActive) {
            this.mDeltaXRange.set(-this.getLeft(), this.getWidth() - this.mTouchTargetWidth * 2);
        }
        else if (this.mRightBorderActive) {
            this.mDeltaXRange.set(this.mTouchTargetWidth * 2 - this.getWidth(), this.mDragLayer.getWidth() - this.getRight());
        }
        else {
            this.mDeltaXRange.set(0, 0);
        }
        this.mBaselineX.set(this.getLeft(), this.getRight());
        if (this.mTopBorderActive) {
            this.mDeltaYRange.set(-this.getTop(), this.getHeight() - this.mTouchTargetWidth * 2);
        }
        else if (this.mBottomBorderActive) {
            this.mDeltaYRange.set(this.mTouchTargetWidth * 2 - this.getHeight(), this.mDragLayer.getHeight() - this.getBottom());
        }
        else {
            this.mDeltaYRange.set(0, 0);
        }
        this.mBaselineY.set(this.getTop(), this.getBottom());
        return mBottomBorderActive2;
    }
    
    public void commitResize() {
        this.resizeWidgetIfNeeded(true);
        this.requestLayout();
    }
    
    public boolean onControllerInterceptTouchEvent(final MotionEvent motionEvent) {
        return motionEvent.getAction() == 0 && this.handleTouchDown(motionEvent);
    }
    
    public boolean onControllerTouchEvent(final MotionEvent motionEvent) {
        final int action = motionEvent.getAction();
        final int n = (int)motionEvent.getX();
        final int n2 = (int)motionEvent.getY();
        switch (action) {
            case 0: {
                return this.handleTouchDown(motionEvent);
            }
            case 2: {
                this.visualizeResizeForDelta(n - this.mXDown, n2 - this.mYDown);
                break;
            }
            case 1:
            case 3: {
                this.visualizeResizeForDelta(n - this.mXDown, n2 - this.mYDown);
                this.onTouchUp();
                this.mYDown = 0;
                this.mXDown = 0;
                break;
            }
        }
        return true;
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        for (int i = 0; i < 4; ++i) {
            this.mDragHandles[i] = this.getChildAt(i);
        }
    }
    
    public boolean onKey(final View view, final int n, final KeyEvent keyEvent) {
        if (FocusLogic.shouldConsume(n)) {
            this.mDragLayer.clearResizeFrame();
            this.mWidgetView.requestFocus();
            return true;
        }
        return false;
    }
    
    public void setupForWidget(final LauncherAppWidgetHostView mWidgetView, final CellLayout mCellLayout, final DragLayer mDragLayer) {
        final int n = 2;
        final int n2 = 1;
        final int n3 = 8;
        this.mCellLayout = mCellLayout;
        this.mWidgetView = mWidgetView;
        final LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo = (LauncherAppWidgetProviderInfo)mWidgetView.getAppWidgetInfo();
        this.mResizeMode = launcherAppWidgetProviderInfo.resizeMode;
        this.mDragLayer = mDragLayer;
        this.mMinHSpan = launcherAppWidgetProviderInfo.minSpanX;
        this.mMinVSpan = launcherAppWidgetProviderInfo.minSpanY;
        if (!launcherAppWidgetProviderInfo.isCustomWidget) {
            this.mWidgetPadding = AppWidgetHostView.getDefaultPaddingForWidget(this.getContext(), mWidgetView.getAppWidgetInfo().provider, (Rect)null);
        }
        else {
            final int dimensionPixelSize = this.getContext().getResources().getDimensionPixelSize(2131427363);
            this.mWidgetPadding = new Rect(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        }
        if (this.mResizeMode == n2) {
            this.mDragHandles[n2].setVisibility(n3);
            this.mDragHandles[3].setVisibility(n3);
        }
        else if (this.mResizeMode == n) {
            this.mDragHandles[0].setVisibility(n3);
            this.mDragHandles[n].setVisibility(n3);
        }
        this.mCellLayout.markCellsAsUnoccupiedForView((View)this.mWidgetView);
        this.setOnKeyListener((View$OnKeyListener)this);
    }
    
    public void snapToWidget(final boolean b) {
        final float alpha = 1.0f;
        final int n = 4;
        final int n2 = 2;
        final int focusableInTouchMode = 1;
        int i = 0;
        this.getSnappedRectRelativeToDragLayer(AppWidgetResizeFrame.sTmpRect);
        final int width = AppWidgetResizeFrame.sTmpRect.width();
        final int height = AppWidgetResizeFrame.sTmpRect.height();
        final int left = AppWidgetResizeFrame.sTmpRect.left;
        final int top = AppWidgetResizeFrame.sTmpRect.top;
        if (top < 0) {
            this.mTopTouchRegionAdjustment = -top;
        }
        else {
            this.mTopTouchRegionAdjustment = 0;
        }
        if (top + height > this.mDragLayer.getHeight()) {
            this.mBottomTouchRegionAdjustment = -(top + height - this.mDragLayer.getHeight());
        }
        else {
            this.mBottomTouchRegionAdjustment = 0;
        }
        final DragLayer$LayoutParams dragLayer$LayoutParams = (DragLayer$LayoutParams)this.getLayoutParams();
        if (!b) {
            dragLayer$LayoutParams.width = width;
            dragLayer$LayoutParams.height = height;
            dragLayer$LayoutParams.x = left;
            dragLayer$LayoutParams.y = top;
            while (i < n) {
                this.mDragHandles[i].setAlpha(alpha);
                ++i;
            }
            this.requestLayout();
        }
        else {
            final int[] array = new int[n2];
            array[0] = dragLayer$LayoutParams.width;
            array[focusableInTouchMode] = width;
            final PropertyValuesHolder ofInt = PropertyValuesHolder.ofInt("width", array);
            final int[] array2 = new int[n2];
            array2[0] = dragLayer$LayoutParams.height;
            array2[focusableInTouchMode] = height;
            final PropertyValuesHolder ofInt2 = PropertyValuesHolder.ofInt("height", array2);
            final int[] array3 = new int[n2];
            array3[0] = dragLayer$LayoutParams.x;
            array3[focusableInTouchMode] = left;
            final PropertyValuesHolder ofInt3 = PropertyValuesHolder.ofInt("x", array3);
            final int[] array4 = new int[n2];
            array4[0] = dragLayer$LayoutParams.y;
            array4[focusableInTouchMode] = top;
            final PropertyValuesHolder ofInt4 = PropertyValuesHolder.ofInt("y", array4);
            final PropertyValuesHolder[] array5 = new PropertyValuesHolder[n];
            array5[0] = ofInt;
            array5[focusableInTouchMode] = ofInt2;
            array5[n2] = ofInt3;
            array5[3] = ofInt4;
            final ObjectAnimator ofPropertyValuesHolder = LauncherAnimUtils.ofPropertyValuesHolder(dragLayer$LayoutParams, (View)this, array5);
            ofPropertyValuesHolder.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new AppWidgetResizeFrame$2(this));
            final AnimatorSet animatorSet = LauncherAnimUtils.createAnimatorSet();
            animatorSet.play((Animator)ofPropertyValuesHolder);
            for (int j = 0; j < n; ++j) {
                final View view = this.mDragHandles[j];
                final Property alpha2 = AppWidgetResizeFrame.ALPHA;
                final float[] array6 = new float[focusableInTouchMode];
                array6[0] = alpha;
                animatorSet.play((Animator)LauncherAnimUtils.ofFloat(view, alpha2, array6));
            }
            animatorSet.setDuration(150L);
            animatorSet.start();
        }
        this.setFocusableInTouchMode((boolean)(focusableInTouchMode != 0));
        this.requestFocus();
    }
    
    public void visualizeResizeForDelta(final int n, final int n2) {
        this.mDeltaX = this.mDeltaXRange.clamp(n);
        this.mDeltaY = this.mDeltaYRange.clamp(n2);
        final DragLayer$LayoutParams dragLayer$LayoutParams = (DragLayer$LayoutParams)this.getLayoutParams();
        this.mDeltaX = this.mDeltaXRange.clamp(n);
        this.mBaselineX.applyDelta(this.mLeftBorderActive, this.mRightBorderActive, this.mDeltaX, this.mTempRange1);
        dragLayer$LayoutParams.x = this.mTempRange1.start;
        dragLayer$LayoutParams.width = this.mTempRange1.size();
        this.mDeltaY = this.mDeltaYRange.clamp(n2);
        this.mBaselineY.applyDelta(this.mTopBorderActive, this.mBottomBorderActive, this.mDeltaY, this.mTempRange1);
        dragLayer$LayoutParams.y = this.mTempRange1.start;
        dragLayer$LayoutParams.height = this.mTempRange1.size();
        this.resizeWidgetIfNeeded(false);
        this.getSnappedRectRelativeToDragLayer(AppWidgetResizeFrame.sTmpRect);
        if (this.mLeftBorderActive) {
            dragLayer$LayoutParams.width = AppWidgetResizeFrame.sTmpRect.width() + AppWidgetResizeFrame.sTmpRect.left - dragLayer$LayoutParams.x;
        }
        if (this.mTopBorderActive) {
            dragLayer$LayoutParams.height = AppWidgetResizeFrame.sTmpRect.height() + AppWidgetResizeFrame.sTmpRect.top - dragLayer$LayoutParams.y;
        }
        if (this.mRightBorderActive) {
            dragLayer$LayoutParams.x = AppWidgetResizeFrame.sTmpRect.left;
        }
        if (this.mBottomBorderActive) {
            dragLayer$LayoutParams.y = AppWidgetResizeFrame.sTmpRect.top;
        }
        this.requestLayout();
    }
}

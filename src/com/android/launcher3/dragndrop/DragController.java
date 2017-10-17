// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.content.res.Resources;
import android.content.Context;
import com.android.launcher3.accessibility.DragViewStateAnnouncer;
import android.view.inputmethod.InputMethodManager;
import android.graphics.Point;
import android.graphics.Bitmap;
import android.view.DragEvent;
import android.view.MotionEvent;
import android.content.ComponentName;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.util.ItemInfoMatcher;
import android.view.KeyEvent;
import com.android.launcher3.DragSource;
import java.util.Iterator;
import java.util.Collection;
import android.os.IBinder;
import android.view.View;
import com.android.launcher3.Launcher;
import com.android.launcher3.DropTarget;
import java.util.ArrayList;
import com.android.launcher3.DropTarget$DragObject;
import android.graphics.Rect;
import com.android.launcher3.util.TouchController;

public class DragController implements DragDriver$EventListener, TouchController
{
    private final int[] mCoordinatesTemp;
    int mDistanceSinceScroll;
    private DragDriver mDragDriver;
    private Rect mDragLayerRect;
    private DropTarget$DragObject mDragObject;
    private ArrayList mDropTargets;
    private FlingToDeleteHelper mFlingToDeleteHelper;
    private boolean mIsInPreDrag;
    private DropTarget mLastDropTarget;
    int[] mLastTouch;
    long mLastTouchUpTime;
    Launcher mLauncher;
    private ArrayList mListeners;
    private int mMotionDownX;
    private int mMotionDownY;
    private View mMoveTarget;
    private DragOptions mOptions;
    private Rect mRectTemp;
    private int[] mTmpPoint;
    private IBinder mWindowToken;
    
    public DragController(final Launcher mLauncher) {
        final int n = 2;
        this.mRectTemp = new Rect();
        this.mCoordinatesTemp = new int[n];
        this.mDragDriver = null;
        this.mDropTargets = new ArrayList();
        this.mListeners = new ArrayList();
        this.mLastTouch = new int[n];
        this.mLastTouchUpTime = -1;
        this.mDistanceSinceScroll = 0;
        this.mTmpPoint = new int[n];
        this.mDragLayerRect = new Rect();
        this.mLauncher = mLauncher;
        this.mFlingToDeleteHelper = new FlingToDeleteHelper(mLauncher);
    }
    
    private void callOnDragEnd() {
        if (this.mIsInPreDrag && this.mOptions.preDragCondition != null) {
            this.mOptions.preDragCondition.onPreDragEnd(this.mDragObject, false);
        }
        this.mIsInPreDrag = false;
        this.mOptions = null;
        final Iterator<DragController$DragListener> iterator = new ArrayList<DragController$DragListener>(this.mListeners).iterator();
        while (iterator.hasNext()) {
            iterator.next().onDragEnd();
        }
    }
    
    private void callOnDragStart() {
        if (this.mOptions.preDragCondition != null) {
            this.mOptions.preDragCondition.onPreDragEnd(this.mDragObject, true);
        }
        this.mIsInPreDrag = false;
        final Iterator<DragController$DragListener> iterator = new ArrayList<DragController$DragListener>(this.mListeners).iterator();
        while (iterator.hasNext()) {
            iterator.next().onDragStart(this.mDragObject, this.mOptions);
        }
    }
    
    private void checkTouchMove(final DropTarget mLastDropTarget) {
        if (mLastDropTarget != null) {
            if (this.mLastDropTarget != mLastDropTarget) {
                if (this.mLastDropTarget != null) {
                    this.mLastDropTarget.onDragExit(this.mDragObject);
                }
                mLastDropTarget.onDragEnter(this.mDragObject);
            }
            mLastDropTarget.onDragOver(this.mDragObject);
        }
        else if (this.mLastDropTarget != null) {
            this.mLastDropTarget.onDragExit(this.mDragObject);
        }
        this.mLastDropTarget = mLastDropTarget;
    }
    
    private void drop(final DropTarget mLastDropTarget, final Runnable runnable) {
        int dragComplete = 1;
        final int[] mCoordinatesTemp = this.mCoordinatesTemp;
        this.mDragObject.x = mCoordinatesTemp[0];
        this.mDragObject.y = mCoordinatesTemp[dragComplete];
        if (mLastDropTarget != this.mLastDropTarget) {
            if (this.mLastDropTarget != null) {
                this.mLastDropTarget.onDragExit(this.mDragObject);
            }
            if ((this.mLastDropTarget = mLastDropTarget) != null) {
                mLastDropTarget.onDragEnter(this.mDragObject);
            }
        }
        this.mDragObject.dragComplete = (dragComplete != 0);
        while (true) {
            Label_0304: {
                if (mLastDropTarget == null) {
                    break Label_0304;
                }
                mLastDropTarget.onDragExit(this.mDragObject);
                if (!mLastDropTarget.acceptDrop(this.mDragObject)) {
                    break Label_0304;
                }
                if (runnable != null) {
                    runnable.run();
                }
                else if (!this.mIsInPreDrag) {
                    mLastDropTarget.onDrop(this.mDragObject);
                }
                final boolean b = dragComplete != 0;
                View view;
                if (mLastDropTarget instanceof View) {
                    view = (View)mLastDropTarget;
                }
                else {
                    view = null;
                }
                if (!this.mIsInPreDrag) {
                    this.mLauncher.getUserEventDispatcher().logDragNDrop(this.mDragObject, view);
                    final DragSource dragSource = this.mDragObject.dragSource;
                    final DropTarget$DragObject mDragObject = this.mDragObject;
                    if (runnable == null) {
                        dragComplete = 0;
                    }
                    dragSource.onDropCompleted(view, mDragObject, dragComplete != 0, b);
                }
                return;
            }
            final boolean b = false;
            continue;
        }
    }
    
    private void endDrag() {
        if (this.isDragging()) {
            this.mDragDriver = null;
            boolean deferDragViewCleanupPostAnimation = false;
            if (this.mDragObject.dragView != null) {
                deferDragViewCleanupPostAnimation = this.mDragObject.deferDragViewCleanupPostAnimation;
                if (!deferDragViewCleanupPostAnimation) {
                    this.mDragObject.dragView.remove();
                }
                else if (this.mIsInPreDrag) {
                    this.animateDragViewToOriginalPosition(null, null, -1);
                }
                this.mDragObject.dragView = null;
            }
            if (!deferDragViewCleanupPostAnimation) {
                this.callOnDragEnd();
            }
        }
        this.mFlingToDeleteHelper.releaseVelocityTracker();
    }
    
    private DropTarget findDropTarget(final int x, final int y, final int[] array) {
        final Rect mRectTemp = this.mRectTemp;
        final ArrayList mDropTargets = this.mDropTargets;
        for (int i = mDropTargets.size() - 1; i >= 0; --i) {
            final DropTarget dropTarget = mDropTargets.get(i);
            if (dropTarget.isDropEnabled()) {
                dropTarget.getHitRectRelativeToDragLayer(mRectTemp);
                this.mDragObject.x = x;
                this.mDragObject.y = y;
                if (mRectTemp.contains(x, y)) {
                    array[0] = x;
                    array[1] = y;
                    this.mLauncher.getDragLayer().mapCoordInSelfToDescendant((View)dropTarget, array);
                    return dropTarget;
                }
            }
        }
        return null;
    }
    
    private int[] getClampedDragLayerPos(final float n, final float n2) {
        this.mLauncher.getDragLayer().getLocalVisibleRect(this.mDragLayerRect);
        this.mTmpPoint[0] = (int)Math.max(this.mDragLayerRect.left, Math.min(n, this.mDragLayerRect.right - 1));
        this.mTmpPoint[1] = (int)Math.max(this.mDragLayerRect.top, Math.min(n2, this.mDragLayerRect.bottom - 1));
        return this.mTmpPoint;
    }
    
    private void handleMoveEvent(final int n, final int n2) {
        final int n3 = 1;
        this.mDragObject.dragView.move(n, n2);
        final int[] mCoordinatesTemp = this.mCoordinatesTemp;
        final DropTarget dropTarget = this.findDropTarget(n, n2, mCoordinatesTemp);
        this.mDragObject.x = mCoordinatesTemp[0];
        this.mDragObject.y = mCoordinatesTemp[n3];
        this.checkTouchMove(dropTarget);
        this.mDistanceSinceScroll += (int)Math.hypot(this.mLastTouch[0] - n, this.mLastTouch[n3] - n2);
        this.mLastTouch[0] = n;
        this.mLastTouch[n3] = n2;
        if (this.mIsInPreDrag && this.mOptions.preDragCondition != null && this.mOptions.preDragCondition.shouldStartDrag(this.mDistanceSinceScroll)) {
            this.callOnDragStart();
        }
    }
    
    public void addDragListener(final DragController$DragListener dragController$DragListener) {
        this.mListeners.add(dragController$DragListener);
    }
    
    public void addDropTarget(final DropTarget dropTarget) {
        this.mDropTargets.add(dropTarget);
    }
    
    public void animateDragViewToOriginalPosition(final Runnable runnable, final View view, final int n) {
        this.mDragObject.dragView.animateTo(this.mMotionDownX, this.mMotionDownY, new DragController$1(this, view, runnable), n);
    }
    
    public void cancelDrag() {
        final boolean b = true;
        if (this.isDragging()) {
            if (this.mLastDropTarget != null) {
                this.mLastDropTarget.onDragExit(this.mDragObject);
            }
            this.mDragObject.deferDragViewCleanupPostAnimation = false;
            this.mDragObject.cancelled = b;
            this.mDragObject.dragComplete = b;
            if (!this.mIsInPreDrag) {
                this.mDragObject.dragSource.onDropCompleted(null, this.mDragObject, false, false);
            }
        }
        this.endDrag();
    }
    
    public void completeAccessibleDrag(final int[] array) {
        final int n = 1;
        final int[] mCoordinatesTemp = this.mCoordinatesTemp;
        final DropTarget dropTarget = this.findDropTarget(array[0], array[n], mCoordinatesTemp);
        this.mDragObject.x = mCoordinatesTemp[0];
        this.mDragObject.y = mCoordinatesTemp[n];
        this.checkTouchMove(dropTarget);
        dropTarget.prepareAccessibilityDrop();
        this.drop(dropTarget, null);
        this.endDrag();
    }
    
    public boolean dispatchKeyEvent(final KeyEvent keyEvent) {
        return this.mDragDriver != null;
    }
    
    public boolean dispatchUnhandledMove(final View view, final int n) {
        return this.mMoveTarget != null && this.mMoveTarget.dispatchUnhandledMove(view, n);
    }
    
    public void forceTouchMove() {
        final int n = 1;
        final int[] mCoordinatesTemp = this.mCoordinatesTemp;
        final DropTarget dropTarget = this.findDropTarget(this.mLastTouch[0], this.mLastTouch[n], mCoordinatesTemp);
        this.mDragObject.x = mCoordinatesTemp[0];
        this.mDragObject.y = mCoordinatesTemp[n];
        this.checkTouchMove(dropTarget);
    }
    
    public float getDistanceDragged() {
        return this.mDistanceSinceScroll;
    }
    
    public long getLastGestureUpTime() {
        if (this.mDragDriver != null) {
            return System.currentTimeMillis();
        }
        return this.mLastTouchUpTime;
    }
    
    public boolean isDragging() {
        return this.mDragDriver != null || (this.mOptions != null && this.mOptions.isAccessibleDrag);
    }
    
    public void onAppsRemoved(final ItemInfoMatcher itemInfoMatcher) {
        if (this.mDragObject != null) {
            final ItemInfo dragInfo = this.mDragObject.dragInfo;
            if (dragInfo instanceof ShortcutInfo) {
                final ComponentName targetComponent = dragInfo.getTargetComponent();
                if (targetComponent != null && itemInfoMatcher.matches(dragInfo, targetComponent)) {
                    this.cancelDrag();
                }
            }
        }
    }
    
    public boolean onControllerInterceptTouchEvent(final MotionEvent motionEvent) {
        boolean onInterceptTouchEvent = false;
        if (this.mOptions != null && this.mOptions.isAccessibleDrag) {
            return false;
        }
        this.mFlingToDeleteHelper.recordMotionEvent(motionEvent);
        final int action = motionEvent.getAction();
        final int[] clampedDragLayerPos = this.getClampedDragLayerPos(motionEvent.getX(), motionEvent.getY());
        final int mMotionDownX = clampedDragLayerPos[0];
        final int mMotionDownY = clampedDragLayerPos[1];
        switch (action) {
            case 0: {
                this.mMotionDownX = mMotionDownX;
                this.mMotionDownY = mMotionDownY;
                break;
            }
            case 1: {
                this.mLastTouchUpTime = System.currentTimeMillis();
                break;
            }
        }
        if (this.mDragDriver != null) {
            onInterceptTouchEvent = this.mDragDriver.onInterceptTouchEvent(motionEvent);
        }
        return onInterceptTouchEvent;
    }
    
    public boolean onControllerTouchEvent(final MotionEvent motionEvent) {
        if (this.mDragDriver != null && this.mOptions != null && !this.mOptions.isAccessibleDrag) {
            this.mFlingToDeleteHelper.recordMotionEvent(motionEvent);
            final int action = motionEvent.getAction();
            final int[] clampedDragLayerPos = this.getClampedDragLayerPos(motionEvent.getX(), motionEvent.getY());
            final int mMotionDownX = clampedDragLayerPos[0];
            final int mMotionDownY = clampedDragLayerPos[1];
            switch (action) {
                case 0: {
                    this.mMotionDownX = mMotionDownX;
                    this.mMotionDownY = mMotionDownY;
                    break;
                }
            }
            return this.mDragDriver.onTouchEvent(motionEvent);
        }
        return false;
    }
    
    void onDeferredEndDrag(final DragView dragView) {
        dragView.remove();
        if (this.mDragObject.deferDragViewCleanupPostAnimation) {
            this.callOnDragEnd();
        }
    }
    
    public boolean onDragEvent(final long n, final DragEvent dragEvent) {
        this.mFlingToDeleteHelper.recordDragEvent(n, dragEvent);
        return this.mDragDriver != null && this.mDragDriver.onDragEvent(dragEvent);
    }
    
    public void onDragViewAnimationEnd() {
        if (this.mDragDriver != null) {
            this.mDragDriver.onDragViewAnimationEnd();
        }
    }
    
    public void onDriverDragCancel() {
        this.cancelDrag();
    }
    
    public void onDriverDragEnd(final float n, final float n2) {
        final Runnable flingAnimation = this.mFlingToDeleteHelper.getFlingAnimation(this.mDragObject);
        DropTarget dropTarget;
        if (flingAnimation != null) {
            dropTarget = this.mFlingToDeleteHelper.getDropTarget();
        }
        else {
            dropTarget = this.findDropTarget((int)n, (int)n2, this.mCoordinatesTemp);
        }
        this.drop(dropTarget, flingAnimation);
        this.endDrag();
    }
    
    public void onDriverDragExitWindow() {
        if (this.mLastDropTarget != null) {
            this.mLastDropTarget.onDragExit(this.mDragObject);
            this.mLastDropTarget = null;
        }
    }
    
    public void onDriverDragMove(final float n, final float n2) {
        final int[] clampedDragLayerPos = this.getClampedDragLayerPos(n, n2);
        this.handleMoveEvent(clampedDragLayerPos[0], clampedDragLayerPos[1]);
    }
    
    public void prepareAccessibleDrag(final int mMotionDownX, final int mMotionDownY) {
        this.mMotionDownX = mMotionDownX;
        this.mMotionDownY = mMotionDownY;
    }
    
    public void removeDragListener(final DragController$DragListener dragController$DragListener) {
        this.mListeners.remove(dragController$DragListener);
    }
    
    public void removeDropTarget(final DropTarget dropTarget) {
        this.mDropTargets.remove(dropTarget);
    }
    
    public void resetLastGestureUpTime() {
        this.mLastTouchUpTime = -1;
    }
    
    public void setMoveTarget(final View mMoveTarget) {
        this.mMoveTarget = mMoveTarget;
    }
    
    public void setWindowToken(final IBinder mWindowToken) {
        this.mWindowToken = mWindowToken;
    }
    
    public DragView startDrag(final Bitmap bitmap, final int n, final int n2, final DragSource dragSource, final ItemInfo itemInfo, final Point point, final Rect rect, final float n3, final DragOptions mOptions) {
        ((InputMethodManager)this.mLauncher.getSystemService((Class)InputMethodManager.class)).hideSoftInputFromWindow(this.mWindowToken, 0);
        this.mOptions = mOptions;
        if (this.mOptions.systemDndStartPoint != null) {
            this.mMotionDownX = this.mOptions.systemDndStartPoint.x;
            this.mMotionDownY = this.mOptions.systemDndStartPoint.y;
        }
        final int n4 = this.mMotionDownX - n;
        final int n5 = this.mMotionDownY - n2;
        int left;
        if (rect == null) {
            left = 0;
        }
        else {
            left = rect.left;
        }
        int top;
        if (rect == null) {
            top = 0;
        }
        else {
            top = rect.top;
        }
        this.mLastDropTarget = null;
        this.mDragObject = new DropTarget$DragObject();
        this.mIsInPreDrag = (this.mOptions.preDragCondition != null && (this.mOptions.preDragCondition.shouldStartDrag(0.0) ^ true));
        final Resources resources = this.mLauncher.getResources();
        float n6;
        if (this.mIsInPreDrag) {
            n6 = resources.getDimensionPixelSize(2131427447);
        }
        else {
            n6 = 0.0f;
        }
        final DragView dragView = new DragView(this.mLauncher, bitmap, n4, n5, n3, n6);
        (this.mDragObject.dragView = dragView).setItemInfo(itemInfo);
        this.mDragObject.dragComplete = false;
        if (this.mOptions.isAccessibleDrag) {
            this.mDragObject.xOffset = bitmap.getWidth() / 2;
            this.mDragObject.yOffset = bitmap.getHeight() / 2;
            this.mDragObject.accessibleDrag = true;
        }
        else {
            this.mDragObject.xOffset = this.mMotionDownX - (n + left);
            this.mDragObject.yOffset = this.mMotionDownY - (n2 + top);
            this.mDragObject.stateAnnouncer = DragViewStateAnnouncer.createFor((View)dragView);
            this.mDragDriver = DragDriver.create((Context)this.mLauncher, this, this.mDragObject, this.mOptions);
        }
        this.mDragObject.dragSource = dragSource;
        this.mDragObject.dragInfo = itemInfo;
        (this.mDragObject.originalDragInfo = new ItemInfo()).copyFrom(itemInfo);
        if (point != null) {
            dragView.setDragVisualizeOffset(new Point(point));
        }
        if (rect != null) {
            dragView.setDragRegion(new Rect(rect));
        }
        this.mLauncher.getDragLayer().performHapticFeedback(0);
        dragView.show(this.mMotionDownX, this.mMotionDownY);
        this.mDistanceSinceScroll = 0;
        if (!this.mIsInPreDrag) {
            this.callOnDragStart();
        }
        else if (this.mOptions.preDragCondition != null) {
            this.mOptions.preDragCondition.onPreDragStart(this.mDragObject);
        }
        this.mLastTouch[0] = this.mMotionDownX;
        this.mLastTouch[1] = this.mMotionDownY;
        this.handleMoveEvent(this.mMotionDownX, this.mMotionDownY);
        this.mLauncher.getUserEventDispatcher().resetActionDurationMillis();
        return dragView;
    }
}

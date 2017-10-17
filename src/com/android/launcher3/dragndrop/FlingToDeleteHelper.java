// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.view.MotionEvent;
import android.os.SystemClock;
import android.view.DragEvent;
import com.android.launcher3.util.FlingAnimation;
import com.android.launcher3.DropTarget$DragObject;
import com.android.launcher3.DropTarget;
import android.content.Context;
import android.view.ViewConfiguration;
import android.graphics.PointF;
import android.view.VelocityTracker;
import com.android.launcher3.Launcher;
import com.android.launcher3.ButtonDropTarget;

public class FlingToDeleteHelper
{
    private ButtonDropTarget mDropTarget;
    private final int mFlingToDeleteThresholdVelocity;
    private final Launcher mLauncher;
    private VelocityTracker mVelocityTracker;
    
    public FlingToDeleteHelper(final Launcher mLauncher) {
        this.mLauncher = mLauncher;
        this.mFlingToDeleteThresholdVelocity = mLauncher.getResources().getDimensionPixelSize(2131427424);
    }
    
    private float getAngleBetweenVectors(final PointF pointF, final PointF pointF2) {
        return (float)Math.acos((pointF.x * pointF2.x + pointF.y * pointF2.y) / (pointF.length() * pointF2.length()));
    }
    
    private PointF isFlingingToDelete() {
        final float n = -1.0f;
        if (this.mDropTarget == null) {
            this.mDropTarget = (ButtonDropTarget)this.mLauncher.findViewById(2131624004);
        }
        if (this.mDropTarget == null || (this.mDropTarget.isDropEnabled() ^ true)) {
            return null;
        }
        this.mVelocityTracker.computeCurrentVelocity(1000, (float)ViewConfiguration.get((Context)this.mLauncher).getScaledMaximumFlingVelocity());
        final PointF pointF = new PointF(this.mVelocityTracker.getXVelocity(), this.mVelocityTracker.getYVelocity());
        float n2 = 36.0f;
        if (this.mVelocityTracker.getYVelocity() < this.mFlingToDeleteThresholdVelocity) {
            n2 = this.getAngleBetweenVectors(pointF, new PointF(0.0f, n));
        }
        else if (this.mLauncher.getDeviceProfile().isVerticalBarLayout() && this.mVelocityTracker.getXVelocity() < this.mFlingToDeleteThresholdVelocity) {
            n2 = this.getAngleBetweenVectors(pointF, new PointF(n, 0.0f));
        }
        if (n2 <= Math.toRadians(35.0)) {
            return pointF;
        }
        return null;
    }
    
    public DropTarget getDropTarget() {
        return this.mDropTarget;
    }
    
    public Runnable getFlingAnimation(final DropTarget$DragObject dropTarget$DragObject) {
        final PointF flingingToDelete = this.isFlingingToDelete();
        if (flingingToDelete == null) {
            return null;
        }
        return new FlingAnimation(dropTarget$DragObject, flingingToDelete, this.mDropTarget, this.mLauncher);
    }
    
    public void recordDragEvent(final long n, final DragEvent dragEvent) {
        int n2 = 0;
        switch (dragEvent.getAction()) {
            default: {
                return;
            }
            case 1: {
                n2 = 0;
                break;
            }
            case 2: {
                n2 = 2;
                break;
            }
            case 4: {
                n2 = 1;
                break;
            }
        }
        final MotionEvent obtain = MotionEvent.obtain(n, SystemClock.uptimeMillis(), n2, dragEvent.getX(), dragEvent.getY(), 0);
        this.recordMotionEvent(obtain);
        obtain.recycle();
    }
    
    public void recordMotionEvent(final MotionEvent motionEvent) {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
    }
    
    public void releaseVelocityTracker() {
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }
}

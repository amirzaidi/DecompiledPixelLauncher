// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.content.Context;

public class VerticalPullDetector
{
    private long mCurrentMillis;
    private float mDisplacementX;
    private float mDisplacementY;
    private float mDownX;
    private float mDownY;
    private boolean mIgnoreSlopWhenSettling;
    private float mLastDisplacement;
    private float mLastY;
    private VerticalPullDetector$Listener mListener;
    private int mScrollConditions;
    private VerticalPullDetector$ScrollState mState;
    private float mSubtractDisplacement;
    private final float mTouchSlop;
    private float mVelocity;
    
    public VerticalPullDetector(final Context context) {
        this.mState = VerticalPullDetector$ScrollState.IDLE;
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
    }
    
    private static float computeDampeningFactor(final float n) {
        return n / (15.915494f + n);
    }
    
    private float computeVelocity(final MotionEvent motionEvent) {
        return this.computeVelocity(motionEvent.getY() - this.mLastY, motionEvent.getEventTime());
    }
    
    private void initializeDragging() {
        if (this.mState == VerticalPullDetector$ScrollState.SETTLING && this.mIgnoreSlopWhenSettling) {
            this.mSubtractDisplacement = 0.0f;
        }
        if (this.mDisplacementY > 0.0f) {
            this.mSubtractDisplacement = this.mTouchSlop;
        }
        else {
            this.mSubtractDisplacement = -this.mTouchSlop;
        }
    }
    
    private static float interpolate(final float n, final float n2, final float n3) {
        return (1.0f - n3) * n + n3 * n2;
    }
    
    private void reportDragEnd() {
        this.mListener.onDragEnd(this.mVelocity, Math.abs(this.mVelocity) > 1.0f);
    }
    
    private boolean reportDragStart(final boolean b) {
        this.mListener.onDragStart(b ^ true);
        return true;
    }
    
    private boolean reportDragging() {
        return this.mDisplacementY - this.mLastDisplacement == 0.0f || this.mListener.onDrag(this.mDisplacementY - this.mSubtractDisplacement, this.mVelocity);
    }
    
    private void setState(final VerticalPullDetector$ScrollState mState) {
        if (mState == VerticalPullDetector$ScrollState.DRAGGING) {
            this.initializeDragging();
            if (this.mState == VerticalPullDetector$ScrollState.IDLE) {
                this.reportDragStart(false);
            }
            else if (this.mState == VerticalPullDetector$ScrollState.SETTLING) {
                this.reportDragStart(true);
            }
        }
        if (mState == VerticalPullDetector$ScrollState.SETTLING) {
            this.reportDragEnd();
        }
        this.mState = mState;
    }
    
    private boolean shouldScrollStart() {
        return Math.abs(this.mDisplacementY) >= this.mTouchSlop && Math.max(Math.abs(this.mDisplacementX), 1.0f) <= Math.abs(this.mDisplacementY) && (((this.mScrollConditions & 0x2) > 0 && this.mDisplacementY > 0.0f) || ((this.mScrollConditions & 0x1) > 0 && this.mDisplacementY < 0.0f));
    }
    
    public long calculateDuration(final float n, final float n2) {
        return (long)Math.max(100.0f, 1200.0f / Math.max(2.0f, Math.abs(0.5f * n)) * Math.max(0.2f, n2));
    }
    
    public float computeVelocity(final float n, final long mCurrentMillis) {
        float mVelocity = 0.0f;
        final long mCurrentMillis2 = this.mCurrentMillis;
        this.mCurrentMillis = mCurrentMillis;
        final float n2 = this.mCurrentMillis - mCurrentMillis2;
        if (n2 > 0.0f) {
            mVelocity = n / n2;
        }
        if (Math.abs(this.mVelocity) < 0.001f) {
            this.mVelocity = mVelocity;
        }
        else {
            this.mVelocity = interpolate(this.mVelocity, mVelocity, computeDampeningFactor(n2));
        }
        return this.mVelocity;
    }
    
    public void finishedScrolling() {
        this.setState(VerticalPullDetector$ScrollState.IDLE);
    }
    
    public boolean isDraggingOrSettling() {
        boolean b = true;
        if (this.mState != VerticalPullDetector$ScrollState.DRAGGING && this.mState != VerticalPullDetector$ScrollState.SETTLING) {
            b = false;
        }
        return b;
    }
    
    public boolean isDraggingState() {
        return this.mState == VerticalPullDetector$ScrollState.DRAGGING;
    }
    
    public boolean isIdleState() {
        return this.mState == VerticalPullDetector$ScrollState.IDLE;
    }
    
    public boolean isSettlingState() {
        return this.mState == VerticalPullDetector$ScrollState.SETTLING;
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0: {
                this.mDownX = motionEvent.getX();
                this.mDownY = motionEvent.getY();
                this.mLastDisplacement = 0.0f;
                this.mDisplacementY = 0.0f;
                this.mVelocity = 0.0f;
                if (this.mState == VerticalPullDetector$ScrollState.SETTLING && this.mIgnoreSlopWhenSettling) {
                    this.setState(VerticalPullDetector$ScrollState.DRAGGING);
                    break;
                }
                break;
            }
            case 2: {
                this.mDisplacementX = motionEvent.getX() - this.mDownX;
                this.mDisplacementY = motionEvent.getY() - this.mDownY;
                this.computeVelocity(motionEvent);
                if (this.mState != VerticalPullDetector$ScrollState.DRAGGING && this.shouldScrollStart()) {
                    this.setState(VerticalPullDetector$ScrollState.DRAGGING);
                }
                if (this.mState == VerticalPullDetector$ScrollState.DRAGGING) {
                    this.reportDragging();
                    break;
                }
                break;
            }
            case 1:
            case 3: {
                if (this.mState == VerticalPullDetector$ScrollState.DRAGGING) {
                    this.setState(VerticalPullDetector$ScrollState.SETTLING);
                    break;
                }
                break;
            }
        }
        this.mLastDisplacement = this.mDisplacementY;
        this.mLastY = motionEvent.getY();
        return true;
    }
    
    public void setDetectableScrollConditions(final int mScrollConditions, final boolean mIgnoreSlopWhenSettling) {
        this.mScrollConditions = mScrollConditions;
        this.mIgnoreSlopWhenSettling = mIgnoreSlopWhenSettling;
    }
    
    public void setListener(final VerticalPullDetector$Listener mListener) {
        this.mListener = mListener;
    }
}

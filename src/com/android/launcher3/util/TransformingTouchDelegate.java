// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.view.MotionEvent;
import android.view.View;
import android.graphics.RectF;
import android.graphics.Rect;
import android.view.TouchDelegate;

public class TransformingTouchDelegate extends TouchDelegate
{
    private static final Rect sTempRect;
    private final RectF mBounds;
    private boolean mDelegateTargeted;
    private View mDelegateView;
    private final RectF mTouchCheckBounds;
    private float mTouchExtension;
    private boolean mWasTouchOutsideBounds;
    
    static {
        sTempRect = new Rect();
    }
    
    public TransformingTouchDelegate(final View mDelegateView) {
        super(TransformingTouchDelegate.sTempRect, mDelegateView);
        this.mDelegateView = mDelegateView;
        this.mBounds = new RectF();
        this.mTouchCheckBounds = new RectF();
    }
    
    private void updateTouchBounds() {
        this.mTouchCheckBounds.set(this.mBounds);
        this.mTouchCheckBounds.inset(-this.mTouchExtension, -this.mTouchExtension);
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        boolean dispatchTouchEvent = false;
        int n = 0;
        Label_0053: {
            switch (motionEvent.getAction()) {
                case 0: {
                    this.mDelegateTargeted = this.mTouchCheckBounds.contains(motionEvent.getX(), motionEvent.getY());
                    if (this.mDelegateTargeted) {
                        this.mWasTouchOutsideBounds = (this.mBounds.contains(motionEvent.getX(), motionEvent.getY()) ^ true);
                        n = 1;
                        break Label_0053;
                    }
                    break;
                }
                case 2: {
                    n = (this.mDelegateTargeted ? 1 : 0);
                    break Label_0053;
                }
                case 1:
                case 3: {
                    n = (this.mDelegateTargeted ? 1 : 0);
                    this.mDelegateTargeted = false;
                    break Label_0053;
                }
            }
            n = 0;
        }
        if (n != 0) {
            final float x = motionEvent.getX();
            final float y = motionEvent.getY();
            if (this.mWasTouchOutsideBounds) {
                motionEvent.setLocation(this.mBounds.centerX(), this.mBounds.centerY());
            }
            else {
                motionEvent.offsetLocation(-this.mBounds.left, -this.mBounds.top);
            }
            dispatchTouchEvent = this.mDelegateView.dispatchTouchEvent(motionEvent);
            motionEvent.setLocation(x, y);
        }
        return dispatchTouchEvent;
    }
    
    public void setBounds(final int n, final int n2, final int n3, final int n4) {
        this.mBounds.set((float)n, (float)n2, (float)n3, (float)n4);
        this.updateTouchBounds();
    }
}

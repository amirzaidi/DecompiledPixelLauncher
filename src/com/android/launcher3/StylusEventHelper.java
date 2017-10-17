// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.View;

public class StylusEventHelper
{
    private boolean mIsButtonPressed;
    private StylusEventHelper$StylusButtonListener mListener;
    private final float mSlop;
    private View mView;
    
    public StylusEventHelper(final StylusEventHelper$StylusButtonListener mListener, final View mView) {
        this.mListener = mListener;
        this.mView = mView;
        if (this.mView != null) {
            this.mSlop = ViewConfiguration.get(this.mView.getContext()).getScaledTouchSlop();
        }
        else {
            this.mSlop = ViewConfiguration.getTouchSlop();
        }
    }
    
    private static boolean isStylusButtonPressed(final MotionEvent motionEvent) {
        final int n = 2;
        boolean b = false;
        if (motionEvent.getToolType(0) == n && (motionEvent.getButtonState() & 0x2) == n) {
            b = true;
        }
        return b;
    }
    
    public boolean inStylusButtonPressed() {
        return this.mIsButtonPressed;
    }
    
    public boolean onMotionEvent(final MotionEvent motionEvent) {
        final boolean stylusButtonPressed = isStylusButtonPressed(motionEvent);
        switch (motionEvent.getAction()) {
            case 0: {
                this.mIsButtonPressed = stylusButtonPressed;
                if (this.mIsButtonPressed) {
                    return this.mListener.onPressed(motionEvent);
                }
                break;
            }
            case 2: {
                if (!Utilities.pointInView(this.mView, motionEvent.getX(), motionEvent.getY(), this.mSlop)) {
                    return false;
                }
                if (!this.mIsButtonPressed && stylusButtonPressed) {
                    this.mIsButtonPressed = true;
                    return this.mListener.onPressed(motionEvent);
                }
                if (this.mIsButtonPressed && (stylusButtonPressed ^ true)) {
                    this.mIsButtonPressed = false;
                    return this.mListener.onReleased(motionEvent);
                }
                break;
            }
            case 1:
            case 3: {
                if (this.mIsButtonPressed) {
                    this.mIsButtonPressed = false;
                    return this.mListener.onReleased(motionEvent);
                }
                break;
            }
        }
        return false;
    }
}

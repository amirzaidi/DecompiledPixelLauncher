// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.View;
import android.view.View$OnLongClickListener;

public class CheckLongPressHelper
{
    boolean mHasPerformedLongPress;
    View$OnLongClickListener mListener;
    private int mLongPressTimeout;
    private CheckLongPressHelper$CheckForLongPress mPendingCheckForLongPress;
    View mView;
    
    public CheckLongPressHelper(final View mView) {
        this.mLongPressTimeout = 300;
        this.mView = mView;
    }
    
    public CheckLongPressHelper(final View mView, final View$OnLongClickListener mListener) {
        this.mLongPressTimeout = 300;
        this.mView = mView;
        this.mListener = mListener;
    }
    
    public void cancelLongPress() {
        this.mHasPerformedLongPress = false;
        if (this.mPendingCheckForLongPress != null) {
            this.mView.removeCallbacks((Runnable)this.mPendingCheckForLongPress);
            this.mPendingCheckForLongPress = null;
        }
    }
    
    public boolean hasPerformedLongPress() {
        return this.mHasPerformedLongPress;
    }
    
    public void postCheckForLongPress() {
        this.mHasPerformedLongPress = false;
        if (this.mPendingCheckForLongPress == null) {
            this.mPendingCheckForLongPress = new CheckLongPressHelper$CheckForLongPress(this);
        }
        this.mView.postDelayed((Runnable)this.mPendingCheckForLongPress, (long)this.mLongPressTimeout);
    }
    
    public void setLongPressTimeout(final int mLongPressTimeout) {
        this.mLongPressTimeout = mLongPressTimeout;
    }
}

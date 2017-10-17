// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import com.android.launcher3.LogAccelerateInterpolator;

class PopupItemView$CloseInterpolator extends LogAccelerateInterpolator
{
    private float mRemainingProgress;
    private float mStartProgress;
    
    public PopupItemView$CloseInterpolator(final float mRemainingProgress) {
        super(100, 0);
        this.mStartProgress = 1.0f - mRemainingProgress;
        this.mRemainingProgress = mRemainingProgress;
    }
    
    public float getInterpolation(final float n) {
        return this.mStartProgress + super.getInterpolation(n) * this.mRemainingProgress;
    }
}

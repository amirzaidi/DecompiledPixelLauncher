// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.graphics.Rect;

public class PillRevealOutlineProvider extends RevealOutlineAnimation
{
    private int mCenterX;
    private int mCenterY;
    private float mFinalRadius;
    protected Rect mPillRect;
    
    public PillRevealOutlineProvider(final int mCenterX, final int mCenterY, final Rect mPillRect, final float n) {
        this.mCenterX = mCenterX;
        this.mCenterY = mCenterY;
        this.mPillRect = mPillRect;
        this.mFinalRadius = n;
        this.mOutlineRadius = n;
    }
    
    public void setProgress(final float n) {
        final int n2 = (int)(Math.max(this.mCenterX, this.mPillRect.width() - this.mCenterX) * n);
        this.mOutline.left = Math.max(this.mPillRect.left, this.mCenterX - n2);
        this.mOutline.top = Math.max(this.mPillRect.top, this.mCenterY - n2);
        this.mOutline.right = Math.min(this.mPillRect.right, this.mCenterX + n2);
        this.mOutline.bottom = Math.min(this.mPillRect.bottom, n2 + this.mCenterY);
        this.mOutlineRadius = Math.min(this.mFinalRadius, this.mOutline.height() / 2);
    }
    
    public boolean shouldRemoveElevationDuringAnimation() {
        return false;
    }
}

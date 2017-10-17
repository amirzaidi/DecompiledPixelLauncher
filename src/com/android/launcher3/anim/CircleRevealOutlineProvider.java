// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.anim;

public class CircleRevealOutlineProvider extends RevealOutlineAnimation
{
    private int mCenterX;
    private int mCenterY;
    private float mRadius0;
    private float mRadius1;
    
    public CircleRevealOutlineProvider(final int mCenterX, final int mCenterY, final float mRadius0, final float mRadius2) {
        this.mCenterX = mCenterX;
        this.mCenterY = mCenterY;
        this.mRadius0 = mRadius0;
        this.mRadius1 = mRadius2;
    }
    
    public void setProgress(final float n) {
        this.mOutlineRadius = (1.0f - n) * this.mRadius0 + this.mRadius1 * n;
        this.mOutline.left = (int)(this.mCenterX - this.mOutlineRadius);
        this.mOutline.top = (int)(this.mCenterY - this.mOutlineRadius);
        this.mOutline.right = (int)(this.mCenterX + this.mOutlineRadius);
        this.mOutline.bottom = (int)(this.mCenterY + this.mOutlineRadius);
    }
    
    public boolean shouldRemoveElevationDuringAnimation() {
        return true;
    }
}

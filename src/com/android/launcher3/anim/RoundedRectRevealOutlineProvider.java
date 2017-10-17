// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.anim;

import android.graphics.Rect;

public class RoundedRectRevealOutlineProvider extends RevealOutlineAnimation
{
    private final float mEndRadius;
    private final Rect mEndRect;
    private final int mRoundedCorners;
    private final float mStartRadius;
    private final Rect mStartRect;
    
    public RoundedRectRevealOutlineProvider(final float n, final float n2, final Rect rect, final Rect rect2) {
        this(n, n2, rect, rect2, 3);
    }
    
    public RoundedRectRevealOutlineProvider(final float mStartRadius, final float mEndRadius, final Rect mStartRect, final Rect mEndRect, final int mRoundedCorners) {
        this.mStartRadius = mStartRadius;
        this.mEndRadius = mEndRadius;
        this.mStartRect = mStartRect;
        this.mEndRect = mEndRect;
        this.mRoundedCorners = mRoundedCorners;
    }
    
    public void setProgress(final float n) {
        final float n2 = 1.0f;
        this.mOutlineRadius = (n2 - n) * this.mStartRadius + this.mEndRadius * n;
        this.mOutline.left = (int)((n2 - n) * this.mStartRect.left + this.mEndRect.left * n);
        this.mOutline.top = (int)((n2 - n) * this.mStartRect.top + this.mEndRect.top * n);
        if ((this.mRoundedCorners & 0x1) == 0x0) {
            final Rect mOutline = this.mOutline;
            mOutline.top -= (int)this.mOutlineRadius;
        }
        this.mOutline.right = (int)((n2 - n) * this.mStartRect.right + this.mEndRect.right * n);
        this.mOutline.bottom = (int)((n2 - n) * this.mStartRect.bottom + this.mEndRect.bottom * n);
        if ((this.mRoundedCorners & 0x2) == 0x0) {
            final Rect mOutline2 = this.mOutline;
            mOutline2.bottom += (int)this.mOutlineRadius;
        }
    }
    
    public boolean shouldRemoveElevationDuringAnimation() {
        return false;
    }
}

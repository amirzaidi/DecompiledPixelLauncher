// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import android.graphics.Rect;
import android.graphics.Canvas;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;

class AllAppsBackgroundDrawable$TransformedImageDrawable
{
    private int mAlpha;
    private int mGravity;
    private Drawable mImage;
    private float mXPercent;
    private float mYPercent;
    
    public AllAppsBackgroundDrawable$TransformedImageDrawable(final Resources resources, final int n, final float mxPercent, final float myPercent, final int mGravity) {
        this.mImage = resources.getDrawable(n);
        this.mXPercent = mxPercent;
        this.mYPercent = myPercent;
        this.mGravity = mGravity;
    }
    
    public void draw(final Canvas canvas) {
        this.mImage.draw(canvas);
    }
    
    public int getAlpha() {
        return this.mAlpha;
    }
    
    public void setAlpha(final int n) {
        this.mImage.setAlpha(n);
        this.mAlpha = n;
    }
    
    public void updateBounds(final Rect rect) {
        final int intrinsicWidth = this.mImage.getIntrinsicWidth();
        final int intrinsicHeight = this.mImage.getIntrinsicHeight();
        int n = rect.left + (int)(this.mXPercent * rect.width());
        int n2 = rect.top + (int)(this.mYPercent * rect.height());
        if ((this.mGravity & 0x1) == 0x1) {
            n -= intrinsicWidth / 2;
        }
        if ((this.mGravity & 0x10) == 0x10) {
            n2 -= intrinsicHeight / 2;
        }
        this.mImage.setBounds(n, n2, intrinsicWidth + n, intrinsicHeight + n2);
    }
}

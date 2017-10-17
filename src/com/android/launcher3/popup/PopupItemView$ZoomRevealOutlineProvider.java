// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import android.graphics.Rect;
import android.view.View;
import com.android.launcher3.util.PillRevealOutlineProvider;

class PopupItemView$ZoomRevealOutlineProvider extends PillRevealOutlineProvider
{
    private final float mArrowCenter;
    private final float mFullHeight;
    private final boolean mPivotLeft;
    private final View mTranslateView;
    private final float mTranslateX;
    private final float mTranslateYMultiplier;
    private final View mZoomView;
    
    public PopupItemView$ZoomRevealOutlineProvider(final int n, final int n2, final Rect rect, final PopupItemView mTranslateView, final View mZoomView, final boolean b, final boolean mPivotLeft, final float mArrowCenter) {
        super(n, n2, rect, mTranslateView.getBackgroundRadius());
        this.mTranslateView = (View)mTranslateView;
        this.mZoomView = mZoomView;
        this.mFullHeight = rect.height();
        float mTranslateYMultiplier;
        if (b) {
            mTranslateYMultiplier = 0.5f;
        }
        else {
            mTranslateYMultiplier = -0.5f;
        }
        this.mTranslateYMultiplier = mTranslateYMultiplier;
        this.mPivotLeft = mPivotLeft;
        float mTranslateX;
        if (mPivotLeft) {
            mTranslateX = mArrowCenter;
        }
        else {
            mTranslateX = rect.right - mArrowCenter;
        }
        this.mTranslateX = mTranslateX;
        this.mArrowCenter = mArrowCenter;
    }
    
    public void setProgress(final float scaleY) {
        super.setProgress(scaleY);
        if (this.mZoomView != null) {
            this.mZoomView.setScaleX(scaleY);
            this.mZoomView.setScaleY(scaleY);
        }
        this.mTranslateView.setTranslationY((this.mFullHeight - this.mOutline.height()) * this.mTranslateYMultiplier);
        final float min = Math.min(this.mOutline.width(), this.mArrowCenter);
        float n;
        if (this.mPivotLeft) {
            n = min + this.mOutline.left;
        }
        else {
            n = this.mOutline.right - min;
        }
        this.mTranslateView.setTranslationX(this.mTranslateX - n);
    }
}

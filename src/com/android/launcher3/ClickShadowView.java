// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.ViewGroup;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.Bitmap;
import android.view.View;

public class ClickShadowView extends View
{
    private Bitmap mBitmap;
    private final Paint mPaint;
    private final float mShadowOffset;
    private final float mShadowPadding;
    
    public ClickShadowView(final Context context) {
        super(context);
        (this.mPaint = new Paint(2)).setColor(-16777216);
        this.mShadowPadding = this.getResources().getDimension(2131427429);
        this.mShadowOffset = this.getResources().getDimension(2131427430);
    }
    
    public void alignWithIconView(final BubbleTextView bubbleTextView, final ViewGroup viewGroup, final View view) {
        final float n = 1.0f;
        final float n2 = 2.0f;
        final float n3 = bubbleTextView.getLeft() + viewGroup.getLeft() - this.getLeft();
        final float n4 = bubbleTextView.getTop() + viewGroup.getTop() - this.getTop();
        final int n5 = bubbleTextView.getRight() - bubbleTextView.getLeft();
        final int n6 = bubbleTextView.getBottom() - bubbleTextView.getTop();
        final int n7 = n5 - bubbleTextView.getCompoundPaddingRight() - bubbleTextView.getCompoundPaddingLeft();
        final float n8 = bubbleTextView.getIcon().getBounds().width();
        if (view != null) {
            final int[] array = { 0, 0 };
            Utilities.getDescendantCoordRelativeToAncestor(view, (View)this.getParent(), array, false);
            final int n9 = (int)Math.max(0.0f, array[0] - n3 - this.mShadowPadding);
            final int n10 = (int)Math.max(0.0f, array[1] - n4 - this.mShadowPadding);
            this.setClipBounds(new Rect(n9, n10, n9 + n5, n6 + n10));
        }
        else {
            this.setClipBounds((Rect)null);
        }
        this.setTranslationX(viewGroup.getTranslationX() + n3 + bubbleTextView.getCompoundPaddingLeft() * bubbleTextView.getScaleX() + (n7 - n8) * bubbleTextView.getScaleX() / n2 + n5 * (n - bubbleTextView.getScaleX()) / n2 - this.mShadowPadding);
        this.setTranslationY(viewGroup.getTranslationY() + n4 + bubbleTextView.getPaddingTop() * bubbleTextView.getScaleY() + bubbleTextView.getHeight() * (n - bubbleTextView.getScaleY()) / n2 - this.mShadowPadding);
    }
    
    public void animateShadow() {
        this.setAlpha(0.0f);
        this.animate().alpha(1.0f).setDuration(2000L).setInterpolator(FastBitmapDrawable.CLICK_FEEDBACK_INTERPOLATOR).start();
    }
    
    public int getExtraSize() {
        return (int)(this.mShadowPadding * 3.0f);
    }
    
    protected void onDraw(final Canvas canvas) {
        if (this.mBitmap != null) {
            this.mPaint.setAlpha(30);
            canvas.drawBitmap(this.mBitmap, 0.0f, 0.0f, this.mPaint);
            this.mPaint.setAlpha(60);
            canvas.drawBitmap(this.mBitmap, 0.0f, this.mShadowOffset, this.mPaint);
        }
    }
    
    public boolean setBitmap(final Bitmap mBitmap) {
        if (mBitmap != this.mBitmap) {
            this.mBitmap = mBitmap;
            this.invalidate();
            return true;
        }
        return false;
    }
}

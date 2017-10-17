// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.widget;

import android.graphics.Canvas;
import android.graphics.Rect;
import com.android.launcher3.Utilities;
import android.util.AttributeSet;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;

public class WidgetImageView extends View
{
    private Drawable mBadge;
    private final int mBadgeMargin;
    private Bitmap mBitmap;
    private final RectF mDstRectF;
    private final Paint mPaint;
    
    public WidgetImageView(final Context context) {
        this(context, null);
    }
    
    public WidgetImageView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public WidgetImageView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mPaint = new Paint(3);
        this.mDstRectF = new RectF();
        this.mBadgeMargin = context.getResources().getDimensionPixelSize(2131427425);
    }
    
    private void updateDstRectF() {
        final float n = 2.0f;
        final float n2 = this.getWidth();
        final float n3 = this.getHeight();
        final float n4 = this.mBitmap.getWidth();
        float n5;
        if (n4 > n2) {
            n5 = n2 / n4;
        }
        else {
            n5 = 1.0f;
        }
        final float n6 = n4 * n5;
        final float bottom = n5 * this.mBitmap.getHeight();
        this.mDstRectF.left = (n2 - n6) / n;
        this.mDstRectF.right = (n2 + n6) / n;
        if (bottom > n3) {
            this.mDstRectF.top = 0.0f;
            this.mDstRectF.bottom = bottom;
        }
        else {
            this.mDstRectF.top = (n3 - bottom) / n;
            this.mDstRectF.bottom = (bottom + n3) / n;
        }
        if (this.mBadge != null) {
            final Rect bounds = this.mBadge.getBounds();
            final int boundToRange = Utilities.boundToRange((int)(this.mDstRectF.right + this.mBadgeMargin - bounds.width()), this.mBadgeMargin, this.getWidth() - bounds.width());
            final int boundToRange2 = Utilities.boundToRange((int)(this.mDstRectF.bottom + this.mBadgeMargin - bounds.height()), this.mBadgeMargin, this.getHeight() - bounds.height());
            this.mBadge.setBounds(boundToRange, boundToRange2, bounds.width() + boundToRange, bounds.height() + boundToRange2);
        }
    }
    
    public Bitmap getBitmap() {
        return this.mBitmap;
    }
    
    public Rect getBitmapBounds() {
        this.updateDstRectF();
        final Rect rect = new Rect();
        this.mDstRectF.round(rect);
        return rect;
    }
    
    public boolean hasOverlappingRendering() {
        return false;
    }
    
    protected void onDraw(final Canvas canvas) {
        if (this.mBitmap != null) {
            this.updateDstRectF();
            canvas.drawBitmap(this.mBitmap, (Rect)null, this.mDstRectF, this.mPaint);
            if (this.mBadge != null) {
                this.mBadge.draw(canvas);
            }
        }
    }
    
    public void setBitmap(final Bitmap mBitmap, final Drawable mBadge) {
        this.mBitmap = mBitmap;
        this.mBadge = mBadge;
        this.invalidate();
    }
}

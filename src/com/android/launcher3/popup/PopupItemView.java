// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.shapes.Shape;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.RectF;
import android.graphics.drawable.shapes.RoundRectShape;
import com.android.launcher3.Utilities;
import android.graphics.Xfermode;
import android.graphics.PorterDuffXfermode;
import android.graphics.PorterDuff$Mode;
import android.graphics.Canvas;
import android.graphics.Bitmap$Config;
import android.util.AttributeSet;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.Matrix;
import android.view.View;
import android.graphics.Paint;
import android.widget.FrameLayout;

public abstract class PopupItemView extends FrameLayout
{
    private final Paint mBackgroundClipPaint;
    protected View mIconView;
    protected final boolean mIsRtl;
    private final Matrix mMatrix;
    protected final Rect mPillRect;
    private Bitmap mRoundedCornerBitmap;
    protected int mRoundedCorners;
    
    public PopupItemView(final Context context) {
        this(context, null, 0);
    }
    
    public PopupItemView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public PopupItemView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mBackgroundClipPaint = new Paint(5);
        this.mMatrix = new Matrix();
        this.mPillRect = new Rect();
        final int n2 = (int)this.getBackgroundRadius();
        this.mRoundedCornerBitmap = Bitmap.createBitmap(n2, n2, Bitmap$Config.ALPHA_8);
        final Canvas canvas = new Canvas();
        canvas.setBitmap(this.mRoundedCornerBitmap);
        canvas.drawArc(0.0f, 0.0f, (float)(n2 * 2), (float)(n2 * 2), 180.0f, 90.0f, true, this.mBackgroundClipPaint);
        this.mBackgroundClipPaint.setXfermode((Xfermode)new PorterDuffXfermode(PorterDuff$Mode.DST_IN));
        this.mIsRtl = Utilities.isRtl(this.getResources());
    }
    
    protected void dispatchDraw(final Canvas canvas) {
        final float n = 2.0f;
        if (this.mRoundedCorners == 0) {
            super.dispatchDraw(canvas);
            return;
        }
        final int saveLayer = canvas.saveLayer(0.0f, 0.0f, (float)this.getWidth(), (float)this.getHeight(), (Paint)null);
        super.dispatchDraw(canvas);
        final int width = this.mRoundedCornerBitmap.getWidth();
        final int height = this.mRoundedCornerBitmap.getHeight();
        final int round = Math.round(width / n);
        final int round2 = Math.round(height / n);
        if ((this.mRoundedCorners & 0x1) != 0x0) {
            this.mMatrix.reset();
            canvas.drawBitmap(this.mRoundedCornerBitmap, this.mMatrix, this.mBackgroundClipPaint);
            this.mMatrix.setRotate(90.0f, (float)round, (float)round2);
            this.mMatrix.postTranslate((float)(canvas.getWidth() - width), 0.0f);
            canvas.drawBitmap(this.mRoundedCornerBitmap, this.mMatrix, this.mBackgroundClipPaint);
        }
        if ((this.mRoundedCorners & 0x2) != 0x0) {
            this.mMatrix.setRotate(180.0f, (float)round, (float)round2);
            this.mMatrix.postTranslate((float)(canvas.getWidth() - width), (float)(canvas.getHeight() - height));
            canvas.drawBitmap(this.mRoundedCornerBitmap, this.mMatrix, this.mBackgroundClipPaint);
            this.mMatrix.setRotate(270.0f, (float)round, (float)round2);
            this.mMatrix.postTranslate(0.0f, (float)(canvas.getHeight() - height));
            canvas.drawBitmap(this.mRoundedCornerBitmap, this.mMatrix, this.mBackgroundClipPaint);
        }
        canvas.restoreToCount(saveLayer);
    }
    
    protected float getBackgroundRadius() {
        return this.getResources().getDimensionPixelSize(2131427471);
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mIconView = this.findViewById(2131624028);
    }
    
    protected void onMeasure(final int n, final int n2) {
        super.onMeasure(n, n2);
        this.mPillRect.set(0, 0, this.getMeasuredWidth(), this.getMeasuredHeight());
    }
    
    public void setBackgroundWithCorners(final int color, final int mRoundedCorners) {
        float backgroundRadius = 0.0f;
        this.mRoundedCorners = mRoundedCorners;
        float backgroundRadius2;
        if ((mRoundedCorners & 0x1) == 0x0) {
            backgroundRadius2 = 0.0f;
        }
        else {
            backgroundRadius2 = this.getBackgroundRadius();
        }
        if ((mRoundedCorners & 0x2) != 0x0) {
            backgroundRadius = this.getBackgroundRadius();
        }
        final ShapeDrawable background = new ShapeDrawable((Shape)new RoundRectShape(new float[] { backgroundRadius2, backgroundRadius2, backgroundRadius2, backgroundRadius2, backgroundRadius, backgroundRadius, backgroundRadius, backgroundRadius }, (RectF)null, (float[])null));
        background.getPaint().setColor(color);
        this.setBackground((Drawable)background);
    }
}

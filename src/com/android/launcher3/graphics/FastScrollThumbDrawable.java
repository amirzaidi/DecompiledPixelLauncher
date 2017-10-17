// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import android.graphics.ColorFilter;
import android.graphics.Path$Direction;
import android.graphics.Rect;
import android.graphics.Outline;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Paint;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;

public class FastScrollThumbDrawable extends Drawable
{
    private static final Matrix sMatrix;
    private final boolean mIsRtl;
    private final Paint mPaint;
    private final Path mPath;
    
    static {
        sMatrix = new Matrix();
    }
    
    public FastScrollThumbDrawable(final Paint mPaint, final boolean mIsRtl) {
        this.mPath = new Path();
        this.mPaint = mPaint;
        this.mIsRtl = mIsRtl;
    }
    
    public void draw(final Canvas canvas) {
        canvas.drawPath(this.mPath, this.mPaint);
    }
    
    public int getOpacity() {
        return -3;
    }
    
    public void getOutline(final Outline outline) {
        if (this.mPath.isConvex()) {
            outline.setConvexPath(this.mPath);
        }
    }
    
    protected void onBoundsChange(final Rect rect) {
        this.mPath.reset();
        final float n = rect.height() * 0.5f;
        final float n2 = 2.0f * n;
        final float n3 = n / 5.0f;
        this.mPath.addRoundRect((float)rect.left, (float)rect.top, rect.left + n2, n2 + rect.top, new float[] { n, n, n, n, n3, n3, n, n }, Path$Direction.CCW);
        FastScrollThumbDrawable.sMatrix.setRotate(-45.0f, rect.left + n, rect.top + n);
        if (this.mIsRtl) {
            FastScrollThumbDrawable.sMatrix.postTranslate((float)rect.width(), 0.0f);
            FastScrollThumbDrawable.sMatrix.postScale(-1.0f, 1.0f, (float)rect.width(), 0.0f);
        }
        this.mPath.transform(FastScrollThumbDrawable.sMatrix);
    }
    
    public void setAlpha(final int n) {
    }
    
    public void setColorFilter(final ColorFilter colorFilter) {
    }
}

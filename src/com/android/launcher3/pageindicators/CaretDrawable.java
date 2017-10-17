// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.pageindicators;

import android.graphics.ColorFilter;
import android.graphics.Canvas;
import android.content.res.Resources;
import android.graphics.Paint$Join;
import android.graphics.Paint$Cap;
import android.graphics.Paint$Style;
import com.android.launcher3.util.Themes;
import android.content.Context;
import android.graphics.Path;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;

public class CaretDrawable extends Drawable
{
    private Paint mCaretPaint;
    private float mCaretProgress;
    private final int mCaretSizePx;
    private Path mPath;
    private Paint mShadowPaint;
    private final boolean mUseShadow;
    
    public CaretDrawable(final Context context) {
        final boolean b = true;
        this.mCaretProgress = 0.0f;
        this.mShadowPaint = new Paint();
        this.mCaretPaint = new Paint();
        this.mPath = new Path();
        final Resources resources = context.getResources();
        final int dimensionPixelSize = resources.getDimensionPixelSize(2131427394);
        final int dimensionPixelSize2 = resources.getDimensionPixelSize(2131427395);
        this.mCaretPaint.setColor(Themes.getAttrColor(context, 2130772012));
        this.mCaretPaint.setAntiAlias(b);
        this.mCaretPaint.setStrokeWidth((float)dimensionPixelSize);
        this.mCaretPaint.setStyle(Paint$Style.STROKE);
        this.mCaretPaint.setStrokeCap(Paint$Cap.ROUND);
        this.mCaretPaint.setStrokeJoin(Paint$Join.ROUND);
        this.mShadowPaint.setColor(resources.getColor(2131361817));
        this.mShadowPaint.setAlpha(Themes.getAlpha(context, 16843967));
        this.mShadowPaint.setAntiAlias(b);
        this.mShadowPaint.setStrokeWidth((float)(dimensionPixelSize + dimensionPixelSize2 * 2));
        this.mShadowPaint.setStyle(Paint$Style.STROKE);
        this.mShadowPaint.setStrokeCap(Paint$Cap.ROUND);
        this.mShadowPaint.setStrokeJoin(Paint$Join.ROUND);
        this.mUseShadow = (Themes.getAttrBoolean(context, 2130772011) ^ true);
        this.mCaretSizePx = resources.getDimensionPixelSize(2131427396);
    }
    
    public void draw(final Canvas canvas) {
        final float n = 1.0f;
        final float n2 = 2.0f;
        if (Float.compare(this.mCaretPaint.getAlpha(), 0.0f) == 0) {
            return;
        }
        final float n3 = this.getBounds().width() - this.mShadowPaint.getStrokeWidth();
        final float n4 = this.getBounds().height() - this.mShadowPaint.getStrokeWidth();
        final float n5 = this.getBounds().left + this.mShadowPaint.getStrokeWidth() / n2;
        final float n6 = this.getBounds().top + this.mShadowPaint.getStrokeWidth() / n2;
        final float n7 = n4 - n4 / 4.0f * n2;
        this.mPath.reset();
        this.mPath.moveTo(n5, (n - this.getNormalizedCaretProgress()) * n7 + n6);
        this.mPath.lineTo(n3 / n2 + n5, this.getNormalizedCaretProgress() * n7 + n6);
        this.mPath.lineTo(n3 + n5, n7 * (n - this.getNormalizedCaretProgress()) + n6);
        if (this.mUseShadow) {
            canvas.drawPath(this.mPath, this.mShadowPaint);
        }
        canvas.drawPath(this.mPath, this.mCaretPaint);
    }
    
    public float getCaretProgress() {
        return this.mCaretProgress;
    }
    
    public int getIntrinsicHeight() {
        return this.mCaretSizePx;
    }
    
    public int getIntrinsicWidth() {
        return this.mCaretSizePx;
    }
    
    public float getNormalizedCaretProgress() {
        return (this.mCaretProgress + 1.0f) / 2.0f;
    }
    
    public int getOpacity() {
        return -3;
    }
    
    public void setAlpha(final int n) {
        this.mCaretPaint.setAlpha(n);
        this.mShadowPaint.setAlpha(n);
        this.invalidateSelf();
    }
    
    public void setCaretProgress(final float mCaretProgress) {
        this.mCaretProgress = mCaretProgress;
        this.invalidateSelf();
    }
    
    public void setColorFilter(final ColorFilter colorFilter) {
    }
}

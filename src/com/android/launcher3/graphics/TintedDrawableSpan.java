// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import android.graphics.Paint$FontMetricsInt;
import android.graphics.Paint;
import android.graphics.Canvas;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.style.DynamicDrawableSpan;

public class TintedDrawableSpan extends DynamicDrawableSpan
{
    private final Drawable mDrawable;
    private int mOldTint;
    
    public TintedDrawableSpan(final Context context, final int n) {
        super(0);
        this.mDrawable = context.getDrawable(n);
        this.mOldTint = 0;
    }
    
    public void draw(final Canvas canvas, final CharSequence charSequence, final int n, final int n2, final float n3, final int n4, final int n5, final int n6, final Paint paint) {
        final int color = paint.getColor();
        if (this.mOldTint != color) {
            this.mOldTint = color;
            this.mDrawable.setTint(this.mOldTint);
        }
        super.draw(canvas, charSequence, n, n2, n3, n4, n5, n6, paint);
    }
    
    public Drawable getDrawable() {
        return this.mDrawable;
    }
    
    public int getSize(final Paint paint, final CharSequence charSequence, final int n, final int n2, final Paint$FontMetricsInt paint$FontMetricsInt) {
        Paint$FontMetricsInt fontMetricsInt;
        if (paint$FontMetricsInt == null) {
            fontMetricsInt = paint.getFontMetricsInt();
        }
        else {
            fontMetricsInt = paint$FontMetricsInt;
        }
        final int n3 = fontMetricsInt.bottom - fontMetricsInt.top;
        this.mDrawable.setBounds(0, 0, n3, n3);
        return super.getSize(paint, charSequence, n, n2, fontMetricsInt);
    }
}

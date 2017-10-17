// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import android.support.v4.b.a;
import android.graphics.Paint;
import android.graphics.Canvas;
import android.graphics.Bitmap$Config;
import android.graphics.Bitmap;
import android.graphics.RectF;

public class ShadowGenerator$Builder
{
    public int ambientShadowAlpha;
    public final RectF bounds;
    public final int color;
    public int keyShadowAlpha;
    public float keyShadowDistance;
    public float radius;
    public float shadowBlur;
    
    public ShadowGenerator$Builder(final int color) {
        this.bounds = new RectF();
        this.ambientShadowAlpha = 30;
        this.keyShadowAlpha = 61;
        this.color = color;
    }
    
    public Bitmap createPill(final int n, final int n2) {
        this.radius = n2 / 2;
        final int max = Math.max(Math.round(n / 2 + this.shadowBlur), Math.round(this.radius + this.shadowBlur + this.keyShadowDistance));
        this.bounds.set(0.0f, 0.0f, (float)n, (float)n2);
        this.bounds.offsetTo((float)(max - n / 2), (float)(max - n2 / 2));
        final int n3 = max * 2;
        final Bitmap bitmap = Bitmap.createBitmap(n3, n3, Bitmap$Config.ARGB_8888);
        this.drawShadow(new Canvas(bitmap));
        return bitmap;
    }
    
    public void drawShadow(final Canvas canvas) {
        final int n = -16777216;
        final Paint paint = new Paint(3);
        paint.setColor(this.color);
        paint.setShadowLayer(this.shadowBlur, 0.0f, this.keyShadowDistance, a.asb(n, this.keyShadowAlpha));
        canvas.drawRoundRect(this.bounds, this.radius, this.radius, paint);
        paint.setShadowLayer(this.shadowBlur, 0.0f, 0.0f, a.asb(n, this.ambientShadowAlpha));
        canvas.drawRoundRect(this.bounds, this.radius, this.radius, paint);
    }
    
    public ShadowGenerator$Builder setupBlurForSize(final int n) {
        final float n2 = 1.0f;
        this.shadowBlur = n * n2 / 32.0f;
        this.keyShadowDistance = n * n2 / 16.0f;
        return this;
    }
}

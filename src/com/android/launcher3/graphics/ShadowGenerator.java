// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import android.graphics.Bitmap$Config;
import android.graphics.MaskFilter;
import android.graphics.Bitmap;
import android.graphics.RectF;
import android.graphics.BlurMaskFilter$Blur;
import com.android.launcher3.LauncherAppState;
import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;

public class ShadowGenerator
{
    private static final Object LOCK;
    private static ShadowGenerator sShadowGenerator;
    private final Paint mBlurPaint;
    private final Canvas mCanvas;
    private final BlurMaskFilter mDefaultBlurMaskFilter;
    private final Paint mDrawPaint;
    private final int mIconSize;
    
    static {
        LOCK = new Object();
    }
    
    private ShadowGenerator(final Context context) {
        final int n = 3;
        this.mIconSize = LauncherAppState.getIDP(context).iconBitmapSize;
        this.mCanvas = new Canvas();
        this.mBlurPaint = new Paint(n);
        this.mDrawPaint = new Paint(n);
        this.mDefaultBlurMaskFilter = new BlurMaskFilter(this.mIconSize * 0.010416667f, BlurMaskFilter$Blur.NORMAL);
    }
    
    public static ShadowGenerator getInstance(final Context context) {
        synchronized (ShadowGenerator.LOCK) {
            if (ShadowGenerator.sShadowGenerator == null) {
                ShadowGenerator.sShadowGenerator = new ShadowGenerator(context);
            }
            return ShadowGenerator.sShadowGenerator;
        }
    }
    
    public static float getScaleForBounds(final RectF rectF) {
        final float n = 0.5f;
        final float n2 = 0.03125f;
        float min = 1.0f;
        final float min2 = Math.min(Math.min(rectF.left, rectF.right), rectF.top);
        if (min2 < 0.010416667f) {
            min = 0.48958334f / (n - min2);
        }
        if (rectF.bottom < n2) {
            min = Math.min(min, 0.46875f / (n - rectF.bottom));
        }
        return min;
    }
    
    public Bitmap recreateIcon(final Bitmap bitmap) {
        synchronized (this) {
            return this.recreateIcon(bitmap, true, this.mDefaultBlurMaskFilter, 30, 61);
        }
    }
    
    public Bitmap recreateIcon(final Bitmap bitmap, final boolean b, final BlurMaskFilter maskFilter, final int alpha, final int alpha2) {
        // monitorenter(this)
        Label_0362: {
            if (!b) {
                break Label_0362;
            }
            try {
                int n = this.mIconSize;
                while (true) {
                    int n2;
                    if (b) {
                        n2 = this.mIconSize;
                    }
                    else {
                        n2 = bitmap.getHeight();
                    }
                    final int[] array = new int[2];
                    this.mBlurPaint.setMaskFilter((MaskFilter)maskFilter);
                    final Bitmap alpha3 = bitmap.extractAlpha(this.mBlurPaint, array);
                    final Bitmap bitmap2 = Bitmap.createBitmap(n, n2, Bitmap$Config.ARGB_8888);
                    this.mCanvas.setBitmap(bitmap2);
                    this.mDrawPaint.setAlpha(alpha);
                    this.mCanvas.drawBitmap(alpha3, (float)array[0], (float)array[1], this.mDrawPaint);
                    this.mDrawPaint.setAlpha(alpha2);
                    this.mCanvas.drawBitmap(alpha3, (float)array[0], array[1] + this.mIconSize * 0.020833334f, this.mDrawPaint);
                    this.mDrawPaint.setAlpha(255);
                    this.mCanvas.drawBitmap(bitmap, 0.0f, 0.0f, this.mDrawPaint);
                    this.mCanvas.setBitmap((Bitmap)null);
                    return bitmap2;
                    n = bitmap.getWidth();
                    continue;
                }
            }
            finally {
            }
            // monitorexit(this)
        }
    }
}

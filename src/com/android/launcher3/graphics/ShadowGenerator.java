// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import android.graphics.RectF;
import com.android.launcher3.util.Preconditions;
import android.graphics.Bitmap$Config;
import android.graphics.Bitmap;
import android.graphics.MaskFilter;
import android.graphics.BlurMaskFilter;
import android.graphics.BlurMaskFilter$Blur;
import com.android.launcher3.LauncherAppState;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;

public class ShadowGenerator
{
    private static final Object LOCK;
    private static ShadowGenerator sShadowGenerator;
    private final Paint mBlurPaint;
    private final Canvas mCanvas;
    private final Paint mDrawPaint;
    private final int mIconSize;
    
    static {
        LOCK = new Object();
    }
    
    private ShadowGenerator(final Context context) {
        final int n = 3;
        this.mIconSize = LauncherAppState.getIDP(context).iconBitmapSize;
        this.mCanvas = new Canvas();
        (this.mBlurPaint = new Paint(n)).setMaskFilter((MaskFilter)new BlurMaskFilter(this.mIconSize * 0.010416667f, BlurMaskFilter$Blur.NORMAL));
        this.mDrawPaint = new Paint(n);
    }
    
    public static Bitmap createPillWithShadow(final int color, final int n, final int n2) {
        final float n3 = n2 * 1.0f / 32.0f;
        final float n4 = n2 * 1.0f / 16.0f;
        final int n5 = n2 / 2;
        final Canvas canvas = new Canvas();
        final Paint paint = new Paint(3);
        paint.setMaskFilter((MaskFilter)new BlurMaskFilter(n3, BlurMaskFilter$Blur.NORMAL));
        final int max = Math.max(Math.round(n / 2 + n3), Math.round(n3 + n5 + n4));
        final int n6 = max * 2;
        final Bitmap bitmap = Bitmap.createBitmap(n6, n6, Bitmap$Config.ARGB_8888);
        canvas.setBitmap(bitmap);
        final int n7 = max - n / 2;
        final int n8 = max - n2 / 2;
        final int n9 = max + n / 2;
        final int n10 = max + n2 / 2;
        paint.setAlpha(30);
        canvas.drawRoundRect((float)n7, (float)n8, (float)n9, (float)n10, (float)n5, (float)n5, paint);
        paint.setAlpha(61);
        canvas.drawRoundRect((float)n7, n8 + n4, (float)n9, n10 + n4, (float)n5, (float)n5, paint);
        final Paint paint2 = new Paint(3);
        paint2.setColor(color);
        canvas.drawRoundRect((float)n7, (float)n8, (float)n9, (float)n10, (float)n5, (float)n5, paint2);
        return bitmap;
    }
    
    public static ShadowGenerator getInstance(final Context context) {
        Preconditions.assertNonUiThread();
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
        // monitorenter(this)
        final int n = 2;
        try {
            final int[] array = new int[n];
            final Bitmap alpha = bitmap.extractAlpha(this.mBlurPaint, array);
            final Bitmap bitmap2 = Bitmap.createBitmap(this.mIconSize, this.mIconSize, Bitmap$Config.ARGB_8888);
            this.mCanvas.setBitmap(bitmap2);
            this.mDrawPaint.setAlpha(30);
            this.mCanvas.drawBitmap(alpha, (float)array[0], (float)array[1], this.mDrawPaint);
            this.mDrawPaint.setAlpha(61);
            this.mCanvas.drawBitmap(alpha, (float)array[0], array[1] + this.mIconSize * 0.020833334f, this.mDrawPaint);
            this.mDrawPaint.setAlpha(255);
            this.mCanvas.drawBitmap(bitmap, 0.0f, 0.0f, this.mDrawPaint);
            this.mCanvas.setBitmap((Bitmap)null);
            return bitmap2;
        }
        finally {
        }
        // monitorexit(this)
    }
}

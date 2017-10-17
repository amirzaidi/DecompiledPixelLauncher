// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.Bitmap$Config;
import com.android.launcher3.BubbleTextView;
import android.graphics.MaskFilter;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import android.graphics.Bitmap;
import android.content.res.Resources;
import android.graphics.Xfermode;
import android.graphics.PorterDuffXfermode;
import android.graphics.PorterDuff$Mode;
import android.graphics.BlurMaskFilter$Blur;
import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.SparseArray;

public class HolographicOutlineHelper
{
    private static HolographicOutlineHelper sInstance;
    private final SparseArray mBitmapCache;
    private final Paint mBlurPaint;
    private final Canvas mCanvas;
    private final Paint mDrawPaint;
    private final Paint mErasePaint;
    private final BlurMaskFilter mMediumInnerBlurMaskFilter;
    private final BlurMaskFilter mMediumOuterBlurMaskFilter;
    private final float mShadowBitmapShift;
    private final BlurMaskFilter mShadowBlurMaskFilter;
    private final BlurMaskFilter mThinOuterBlurMaskFilter;
    
    private HolographicOutlineHelper(final Context context) {
        final int n = 3;
        this.mCanvas = new Canvas();
        this.mDrawPaint = new Paint(n);
        this.mBlurPaint = new Paint(n);
        this.mErasePaint = new Paint(n);
        this.mBitmapCache = new SparseArray(4);
        final Resources resources = context.getResources();
        final float dimension = resources.getDimension(2131427428);
        this.mMediumOuterBlurMaskFilter = new BlurMaskFilter(dimension, BlurMaskFilter$Blur.OUTER);
        this.mMediumInnerBlurMaskFilter = new BlurMaskFilter(dimension, BlurMaskFilter$Blur.NORMAL);
        this.mThinOuterBlurMaskFilter = new BlurMaskFilter(resources.getDimension(2131427427), BlurMaskFilter$Blur.OUTER);
        this.mShadowBitmapShift = resources.getDimension(2131427429);
        this.mShadowBlurMaskFilter = new BlurMaskFilter(this.mShadowBitmapShift, BlurMaskFilter$Blur.NORMAL);
        this.mErasePaint.setXfermode((Xfermode)new PorterDuffXfermode(PorterDuff$Mode.DST_OUT));
    }
    
    public static HolographicOutlineHelper getInstance(final Context context) {
        if (HolographicOutlineHelper.sInstance == null) {
            HolographicOutlineHelper.sInstance = new HolographicOutlineHelper(context.getApplicationContext());
        }
        return HolographicOutlineHelper.sInstance;
    }
    
    public void applyExpensiveOutlineWithBlur(final Bitmap bitmap, final Canvas canvas) {
        final byte[] array = new byte[bitmap.getWidth() * bitmap.getHeight()];
        final ByteBuffer wrap = ByteBuffer.wrap(array);
        wrap.rewind();
        bitmap.copyPixelsToBuffer((Buffer)wrap);
        for (int i = 0; i < array.length; ++i) {
            if ((array[i] & 0xFF) < 188) {
                array[i] = 0;
            }
        }
        wrap.rewind();
        bitmap.copyPixelsFromBuffer((Buffer)wrap);
        this.mBlurPaint.setMaskFilter((MaskFilter)this.mMediumOuterBlurMaskFilter);
        final int[] array2 = new int[2];
        final Bitmap alpha = bitmap.extractAlpha(this.mBlurPaint, array2);
        this.mBlurPaint.setMaskFilter((MaskFilter)this.mThinOuterBlurMaskFilter);
        final int[] array3 = new int[2];
        final Bitmap alpha2 = bitmap.extractAlpha(this.mBlurPaint, array3);
        canvas.setBitmap(bitmap);
        canvas.drawColor(-16777216, PorterDuff$Mode.SRC_OUT);
        this.mBlurPaint.setMaskFilter((MaskFilter)this.mMediumInnerBlurMaskFilter);
        final int[] array4 = new int[2];
        final Bitmap alpha3 = bitmap.extractAlpha(this.mBlurPaint, array4);
        canvas.setBitmap(alpha3);
        canvas.drawBitmap(bitmap, (float)(-array4[0]), (float)(-array4[1]), this.mErasePaint);
        canvas.drawRect(0.0f, 0.0f, (float)(-array4[0]), (float)alpha3.getHeight(), this.mErasePaint);
        canvas.drawRect(0.0f, 0.0f, (float)alpha3.getWidth(), (float)(-array4[1]), this.mErasePaint);
        canvas.setBitmap(bitmap);
        canvas.drawColor(0, PorterDuff$Mode.CLEAR);
        canvas.drawBitmap(alpha3, (float)array4[0], (float)array4[1], this.mDrawPaint);
        canvas.drawBitmap(alpha, (float)array2[0], (float)array2[1], this.mDrawPaint);
        canvas.drawBitmap(alpha2, (float)array3[0], (float)array3[1], this.mDrawPaint);
        canvas.setBitmap((Bitmap)null);
        alpha2.recycle();
        alpha.recycle();
        alpha3.recycle();
    }
    
    public Bitmap createMediumDropShadow(final BubbleTextView bubbleTextView) {
        final int n = -16777216;
        final Drawable icon = bubbleTextView.getIcon();
        if (icon == null) {
            return null;
        }
        final float scaleX = bubbleTextView.getScaleX();
        final float scaleY = bubbleTextView.getScaleY();
        final Rect bounds = icon.getBounds();
        final int n2 = (int)(bounds.width() * scaleX);
        final int n3 = (int)(bounds.height() * scaleY);
        if (n3 <= 0 || n2 <= 0) {
            return null;
        }
        final int n4 = n2 << 16 | n3;
        final Bitmap bitmap = (Bitmap)this.mBitmapCache.get(n4);
        Bitmap bitmap3;
        if (bitmap == null) {
            final Bitmap bitmap2 = Bitmap.createBitmap(n2, n3, Bitmap$Config.ALPHA_8);
            this.mCanvas.setBitmap(bitmap2);
            this.mBitmapCache.put(n4, (Object)bitmap2);
            bitmap3 = bitmap2;
        }
        else {
            this.mCanvas.setBitmap(bitmap);
            this.mCanvas.drawColor(n, PorterDuff$Mode.CLEAR);
            bitmap3 = bitmap;
        }
        final int save = this.mCanvas.save();
        this.mCanvas.scale(scaleX, scaleY);
        this.mCanvas.translate((float)(-bounds.left), (float)(-bounds.top));
        icon.draw(this.mCanvas);
        this.mCanvas.restoreToCount(save);
        this.mCanvas.setBitmap((Bitmap)null);
        this.mBlurPaint.setMaskFilter((MaskFilter)this.mShadowBlurMaskFilter);
        final int n5 = (int)(this.mShadowBitmapShift * 2.0f);
        final int n6 = n2 + n5;
        final int n7 = n3 + n5;
        final int n8 = n6 << 16 | n7;
        Bitmap bitmap4 = (Bitmap)this.mBitmapCache.get(n8);
        if (bitmap4 == null) {
            bitmap4 = Bitmap.createBitmap(n6, n7, Bitmap$Config.ALPHA_8);
            this.mCanvas.setBitmap(bitmap4);
        }
        else {
            this.mBitmapCache.put(n8, (Object)null);
            this.mCanvas.setBitmap(bitmap4);
            this.mCanvas.drawColor(n, PorterDuff$Mode.CLEAR);
        }
        this.mCanvas.drawBitmap(bitmap3, this.mShadowBitmapShift, this.mShadowBitmapShift, this.mBlurPaint);
        this.mCanvas.setBitmap((Bitmap)null);
        return bitmap4;
    }
    
    public void recycleShadowBitmap(final Bitmap bitmap) {
        if (bitmap != null) {
            this.mBitmapCache.put(bitmap.getWidth() << 16 | bitmap.getHeight(), (Object)bitmap);
        }
    }
}

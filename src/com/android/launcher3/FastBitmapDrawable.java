// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.graphics.Rect;
import android.graphics.Canvas;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuff$Mode;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import com.android.launcher3.graphics.IconPalette;
import android.animation.ObjectAnimator;
import android.graphics.Bitmap;
import android.graphics.ColorMatrix;
import android.util.SparseArray;
import android.animation.TimeInterpolator;
import android.util.Property;
import android.graphics.drawable.Drawable;

public class FastBitmapDrawable extends Drawable
{
    private static final Property BRIGHTNESS;
    public static final TimeInterpolator CLICK_FEEDBACK_INTERPOLATOR;
    private static final int[] STATE_PRESSED;
    private static final SparseArray sCachedFilter;
    private static final ColorMatrix sTempBrightnessMatrix;
    private static final ColorMatrix sTempFilterMatrix;
    private int mAlpha;
    private final Bitmap mBitmap;
    private int mBrightness;
    private ObjectAnimator mBrightnessAnimator;
    private int mDesaturation;
    private IconPalette mIconPalette;
    private boolean mIsDisabled;
    private boolean mIsPressed;
    protected final Paint mPaint;
    private int mPrevUpdateKey;
    
    static {
        STATE_PRESSED = new int[] { 16842919 };
        CLICK_FEEDBACK_INTERPOLATOR = (TimeInterpolator)new FastBitmapDrawable$1();
        sCachedFilter = new SparseArray();
        sTempBrightnessMatrix = new ColorMatrix();
        sTempFilterMatrix = new ColorMatrix();
        BRIGHTNESS = new FastBitmapDrawable$2(Float.TYPE, "brightness");
    }
    
    public FastBitmapDrawable(final Bitmap mBitmap) {
        this.mPaint = new Paint(3);
        this.mDesaturation = 0;
        this.mBrightness = 0;
        this.mAlpha = 255;
        this.mPrevUpdateKey = -1 >>> 1;
        this.mBitmap = mBitmap;
        this.setFilterBitmap(true);
    }
    
    private float getBrightness() {
        return this.mBrightness / 48.0f;
    }
    
    private float getExpectedBrightness() {
        float n;
        if (this.mIsDisabled) {
            n = 0.5f;
        }
        else if (this.mIsPressed) {
            n = 0.39215687f;
        }
        else {
            n = 0.0f;
        }
        return n;
    }
    
    private void invalidateDesaturationAndBrightness() {
        float desaturation;
        if (this.mIsDisabled) {
            desaturation = 1.0f;
        }
        else {
            desaturation = 0.0f;
        }
        this.setDesaturation(desaturation);
        this.setBrightness(this.getExpectedBrightness());
    }
    
    private void setBrightness(final float n) {
        final int mBrightness = (int)Math.floor(48.0f * n);
        if (this.mBrightness != mBrightness) {
            this.mBrightness = mBrightness;
            this.updateFilter();
        }
    }
    
    private void setDesaturation(final float n) {
        final int mDesaturation = (int)Math.floor(48.0f * n);
        if (this.mDesaturation != mDesaturation) {
            this.mDesaturation = mDesaturation;
            this.updateFilter();
        }
    }
    
    private void updateFilter() {
        final int n = -1;
        final float n2 = 1.0f;
        final int n3 = 255;
        int mPrevUpdateKey;
        int n4;
        if (this.mDesaturation > 0) {
            mPrevUpdateKey = (this.mDesaturation << 16 | this.mBrightness);
            n4 = 0;
        }
        else if (this.mBrightness > 0) {
            final int n5 = this.mBrightness | 0x10000;
            n4 = 1;
            mPrevUpdateKey = n5;
        }
        else {
            mPrevUpdateKey = n;
            n4 = 0;
        }
        if (mPrevUpdateKey == this.mPrevUpdateKey) {
            return;
        }
        if ((this.mPrevUpdateKey = mPrevUpdateKey) != n) {
            Object colorFilter = FastBitmapDrawable.sCachedFilter.get(mPrevUpdateKey);
            if (colorFilter == null) {
                final float brightness = this.getBrightness();
                final int n6 = (int)(255.0f * brightness);
                if (n4 != 0) {
                    colorFilter = new PorterDuffColorFilter(Color.argb(n6, n3, n3, n3), PorterDuff$Mode.SRC_ATOP);
                }
                else {
                    FastBitmapDrawable.sTempFilterMatrix.setSaturation(n2 - this.getDesaturation());
                    if (this.mBrightness > 0) {
                        final float n7 = n2 - brightness;
                        final float[] array = FastBitmapDrawable.sTempBrightnessMatrix.getArray();
                        array[0] = n7;
                        array[12] = (array[6] = n7);
                        array[4] = n6;
                        array[9] = n6;
                        array[14] = n6;
                        FastBitmapDrawable.sTempFilterMatrix.preConcat(FastBitmapDrawable.sTempBrightnessMatrix);
                    }
                    colorFilter = new ColorMatrixColorFilter(FastBitmapDrawable.sTempFilterMatrix);
                }
                FastBitmapDrawable.sCachedFilter.append(mPrevUpdateKey, colorFilter);
            }
            this.mPaint.setColorFilter((ColorFilter)colorFilter);
        }
        else {
            this.mPaint.setColorFilter((ColorFilter)null);
        }
        this.invalidateSelf();
    }
    
    public void draw(final Canvas canvas) {
        this.drawInternal(canvas);
    }
    
    protected void drawInternal(final Canvas canvas) {
        canvas.drawBitmap(this.mBitmap, (Rect)null, this.getBounds(), this.mPaint);
    }
    
    public void drawWithBrightness(final Canvas canvas, final float brightness) {
        final float brightness2 = this.getBrightness();
        this.setBrightness(brightness);
        this.drawInternal(canvas);
        this.setBrightness(brightness2);
    }
    
    public int getAlpha() {
        return this.mAlpha;
    }
    
    public float getDesaturation() {
        return this.mDesaturation / 48.0f;
    }
    
    public IconPalette getIconPalette() {
        if (this.mIconPalette == null) {
            this.mIconPalette = IconPalette.fromDominantColor(Utilities.findDominantColorByHue(this.mBitmap, 20));
        }
        return this.mIconPalette;
    }
    
    public int getIntrinsicHeight() {
        return this.mBitmap.getHeight();
    }
    
    public int getIntrinsicWidth() {
        return this.mBitmap.getWidth();
    }
    
    public int getMinimumHeight() {
        return this.getBounds().height();
    }
    
    public int getMinimumWidth() {
        return this.getBounds().width();
    }
    
    public int getOpacity() {
        return -3;
    }
    
    public boolean isStateful() {
        return true;
    }
    
    protected boolean onStateChange(final int[] array) {
        final int n = 1;
        final int length = array.length;
        int i = 0;
        while (true) {
            while (i < length) {
                if (array[i] == 16842919) {
                    final boolean mIsPressed = n != 0;
                    if (this.mIsPressed != mIsPressed) {
                        this.mIsPressed = mIsPressed;
                        if (this.mBrightnessAnimator != null) {
                            this.mBrightnessAnimator.cancel();
                        }
                        if (this.mIsPressed) {
                            final Property brightness = FastBitmapDrawable.BRIGHTNESS;
                            final float[] array2 = new float[n];
                            array2[0] = this.getExpectedBrightness();
                            (this.mBrightnessAnimator = ObjectAnimator.ofFloat((Object)this, brightness, array2)).setDuration(2000L);
                            this.mBrightnessAnimator.setInterpolator(FastBitmapDrawable.CLICK_FEEDBACK_INTERPOLATOR);
                            this.mBrightnessAnimator.start();
                        }
                        else {
                            this.setBrightness(this.getExpectedBrightness());
                        }
                        return n != 0;
                    }
                    return false;
                }
                else {
                    ++i;
                }
            }
            final boolean mIsPressed = false;
            continue;
        }
    }
    
    public void setAlpha(final int n) {
        this.mAlpha = n;
        this.mPaint.setAlpha(n);
    }
    
    public void setColorFilter(final ColorFilter colorFilter) {
    }
    
    public void setFilterBitmap(final boolean b) {
        this.mPaint.setFilterBitmap(b);
        this.mPaint.setAntiAlias(b);
    }
    
    public void setIsDisabled(final boolean mIsDisabled) {
        if (this.mIsDisabled != mIsDisabled) {
            this.mIsDisabled = mIsDisabled;
            this.invalidateDesaturationAndBrightness();
        }
    }
}

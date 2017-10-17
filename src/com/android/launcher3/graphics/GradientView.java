// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import android.graphics.Rect;
import android.graphics.LinearGradient;
import android.graphics.Canvas;
import android.graphics.Bitmap$Config;
import android.support.v4.b.a;
import android.graphics.Shader;
import android.graphics.RadialGradient;
import android.graphics.Shader$TileMode;
import com.android.launcher3.util.Themes;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import android.view.animation.AccelerateInterpolator;
import android.util.AttributeSet;
import com.android.launcher3.dynamicui.WallpaperColorInfo;
import android.graphics.Paint;
import android.content.Context;
import android.graphics.RectF;
import android.graphics.Bitmap;
import android.view.animation.Interpolator;
import com.android.launcher3.dynamicui.WallpaperColorInfo$OnChangeListener;
import android.view.View;

public class GradientView extends View implements WallpaperColorInfo$OnChangeListener
{
    private final Interpolator mAccelerator;
    private final Bitmap mAlphaGradientMask;
    private final RectF mAlphaMaskRect;
    private final float mAlphaStart;
    private final Context mAppContext;
    private int mColor1;
    private int mColor2;
    private final Paint mDebugPaint;
    private final RectF mFinalMaskRect;
    private int mHeight;
    private final int mMaskHeight;
    private final int mMaskWidth;
    private final Paint mPaintNoScrim;
    private final Paint mPaintWithScrim;
    private float mProgress;
    private final int mScrimColor;
    private boolean mShowScrim;
    private final WallpaperColorInfo mWallpaperColorInfo;
    private int mWidth;
    
    public GradientView(final Context context, final AttributeSet set) {
        final int n = -1;
        super(context, set);
        this.mShowScrim = true;
        this.mColor1 = n;
        this.mColor2 = n;
        this.mAlphaMaskRect = new RectF();
        this.mFinalMaskRect = new RectF();
        this.mPaintWithScrim = new Paint();
        this.mPaintNoScrim = new Paint();
        this.mDebugPaint = null;
        this.mAccelerator = (Interpolator)new AccelerateInterpolator();
        this.mAppContext = context.getApplicationContext();
        this.mMaskHeight = Utilities.pxFromDp(500.0f, this.mAppContext.getResources().getDisplayMetrics());
        this.mMaskWidth = Utilities.pxFromDp(2.0f, this.mAppContext.getResources().getDisplayMetrics());
        final Launcher launcher = Launcher.getLauncher(context);
        int n2;
        if (launcher.getDeviceProfile().isVerticalBarLayout()) {
            n2 = 0;
        }
        else {
            n2 = 100;
        }
        this.mAlphaStart = n2;
        this.mScrimColor = Themes.getAttrColor(context, 2130772006);
        this.mWallpaperColorInfo = WallpaperColorInfo.getInstance((Context)launcher);
        this.updateColors();
        this.mAlphaGradientMask = this.createDitheredAlphaMask();
    }
    
    private void createRadialShader() {
        final int n = 3;
        final int n2 = 2;
        final int n3 = 1;
        final float n4 = 1.05f;
        final float n5 = Math.max(this.mHeight, this.mWidth) * n4;
        final float n6 = (n5 - this.mHeight) / n5;
        final float n7 = this.mWidth * 0.5f;
        final float n8 = this.mHeight * n4;
        final int[] array = new int[n];
        array[0] = this.mColor1;
        array[n3] = this.mColor1;
        array[n2] = this.mColor2;
        final float[] array2 = new float[n];
        array2[0] = 0.0f;
        array2[n3] = n6;
        array2[n2] = 1.0f;
        this.mPaintNoScrim.setShader((Shader)new RadialGradient(n7, n8, n5, array, array2, Shader$TileMode.CLAMP));
        final int asf = a.asf(this.mScrimColor, this.mColor1);
        final int asf2 = a.asf(this.mScrimColor, this.mColor2);
        final float n9 = this.mWidth * 0.5f;
        final float n10 = this.mHeight * n4;
        final int[] array3 = new int[n];
        array3[n3] = (array3[0] = asf);
        array3[n2] = asf2;
        final float[] array4 = new float[n];
        array4[0] = 0.0f;
        array4[n3] = n6;
        array4[n2] = 1.0f;
        this.mPaintWithScrim.setShader((Shader)new RadialGradient(n9, n10, n5, array3, array4, Shader$TileMode.CLAMP));
    }
    
    private void updateColors() {
        final int n = 191;
        this.mColor1 = a.asb(this.mWallpaperColorInfo.getMainColor(), n);
        this.mColor2 = a.asb(this.mWallpaperColorInfo.getSecondaryColor(), n);
        if (this.mWidth + this.mHeight > 0) {
            this.createRadialShader();
        }
    }
    
    public Bitmap createDitheredAlphaMask() {
        final int n = 3;
        final int n2 = -1;
        final Bitmap bitmap = Bitmap.createBitmap(this.mMaskWidth, this.mMaskHeight, Bitmap$Config.ALPHA_8);
        final Canvas canvas = new Canvas(bitmap);
        final Paint paint = new Paint(4);
        final float n3 = this.mMaskHeight;
        final int[] array = new int[n];
        array[0] = 16777215;
        array[1] = a.asb(n2, 242);
        array[2] = n2;
        final float[] array3;
        final float[] array2 = array3 = new float[n];
        array3[0] = 0.0f;
        array3[1] = 0.8f;
        array3[2] = 1.0f;
        paint.setShader((Shader)new LinearGradient(0.0f, 0.0f, 0.0f, n3, array, array2, Shader$TileMode.CLAMP));
        canvas.drawRect(0.0f, 0.0f, (float)this.mMaskWidth, (float)this.mMaskHeight, paint);
        return bitmap;
    }
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mWallpaperColorInfo.addOnChangeListener(this);
    }
    
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mWallpaperColorInfo.removeOnChangeListener(this);
    }
    
    protected void onDraw(final Canvas canvas) {
        final float n = 0.29f;
        Paint paint;
        if (this.mShowScrim) {
            paint = this.mPaintWithScrim;
        }
        else {
            paint = this.mPaintNoScrim;
        }
        final float n2 = this.mProgress * 0.71000004f + n;
        final float n3 = (1.0f - n2) * this.mHeight - n2 * this.mMaskHeight;
        paint.setAlpha((int)((255.0f - this.mAlphaStart) * this.mAccelerator.getInterpolation(this.mProgress) + this.mAlphaStart));
        final float n4 = (float)Math.floor(this.mMaskHeight + n3);
        this.mAlphaMaskRect.set(0.0f, n3, (float)this.mWidth, n4);
        this.mFinalMaskRect.set(0.0f, n4, (float)this.mWidth, (float)this.mHeight);
        canvas.drawBitmap(this.mAlphaGradientMask, (Rect)null, this.mAlphaMaskRect, paint);
        canvas.drawRect(this.mFinalMaskRect, paint);
    }
    
    public void onExtractedColorsChanged(final WallpaperColorInfo wallpaperColorInfo) {
        this.updateColors();
        this.invalidate();
    }
    
    protected void onMeasure(final int n, final int n2) {
        super.onMeasure(n, n2);
        this.mWidth = this.getMeasuredWidth();
        this.mHeight = this.getMeasuredHeight();
        if (this.mWidth + this.mHeight > 0) {
            this.createRadialShader();
        }
    }
    
    public void setProgress(final float n) {
        this.setProgress(n, true);
    }
    
    public void setProgress(final float mProgress, final boolean mShowScrim) {
        this.mProgress = mProgress;
        this.mShowScrim = mShowScrim;
        this.invalidate();
    }
}

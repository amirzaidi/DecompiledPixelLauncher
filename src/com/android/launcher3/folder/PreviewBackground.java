// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import com.android.launcher3.DeviceProfile;
import android.content.Context;
import com.android.launcher3.util.Themes;
import com.android.launcher3.Launcher;
import android.graphics.Color;
import android.support.v4.b.a;
import android.graphics.Path$Direction;
import android.graphics.Region$Op;
import android.graphics.Shader;
import android.graphics.Xfermode;
import android.graphics.Paint$Style;
import android.graphics.Canvas;
import android.animation.Animator$AnimatorListener;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import com.android.launcher3.LauncherAnimUtils;
import android.graphics.Shader$TileMode;
import android.graphics.PorterDuff$Mode;
import android.animation.ObjectAnimator;
import android.graphics.Matrix;
import android.animation.ValueAnimator;
import android.graphics.Path;
import android.graphics.Paint;
import android.view.View;
import com.android.launcher3.CellLayout;
import android.graphics.RadialGradient;
import android.graphics.PorterDuffXfermode;
import android.util.Property;

public class PreviewBackground
{
    private static final Property SHADOW_ALPHA;
    private static final Property STROKE_ALPHA;
    int basePreviewOffsetX;
    int basePreviewOffsetY;
    public int delegateCellX;
    public int delegateCellY;
    public boolean isClipping;
    private int mBgColor;
    private final PorterDuffXfermode mClipPorterDuffXfermode;
    private final RadialGradient mClipShader;
    private float mColorMultiplier;
    private CellLayout mDrawingDelegate;
    private View mInvalidateDelegate;
    private final Paint mPaint;
    private final Path mPath;
    float mScale;
    private ValueAnimator mScaleAnimator;
    private final Matrix mShaderMatrix;
    private int mShadowAlpha;
    private ObjectAnimator mShadowAnimator;
    private final PorterDuffXfermode mShadowPorterDuffXfermode;
    private RadialGradient mShadowShader;
    private int mStrokeAlpha;
    private ObjectAnimator mStrokeAlphaAnimator;
    private float mStrokeWidth;
    int previewSize;
    
    static {
        STROKE_ALPHA = new PreviewBackground$1(Integer.class, "strokeAlpha");
        SHADOW_ALPHA = new PreviewBackground$2(Integer.class, "shadowAlpha");
    }
    
    public PreviewBackground() {
        final boolean isClipping = true;
        final int n = -16777216;
        final float n2 = 1.0f;
        this.mClipPorterDuffXfermode = new PorterDuffXfermode(PorterDuff$Mode.DST_IN);
        final int[] array = { n, n, 0 };
        final float[] array3;
        final float[] array2 = array3 = new float[3];
        array3[0] = 0.0f;
        array3[1] = 0.999f;
        array3[2] = 1.0f;
        this.mClipShader = new RadialGradient(0.0f, 0.0f, n2, array, array2, Shader$TileMode.CLAMP);
        this.mShadowPorterDuffXfermode = new PorterDuffXfermode(PorterDuff$Mode.DST_OUT);
        this.mShadowShader = null;
        this.mShaderMatrix = new Matrix();
        this.mPath = new Path();
        this.mPaint = new Paint((int)(isClipping ? 1 : 0));
        this.mScale = n2;
        this.mColorMultiplier = n2;
        this.mStrokeAlpha = 225;
        this.mShadowAlpha = 255;
        this.isClipping = isClipping;
    }
    
    private void animateScale(final float n, final float n2, final Runnable runnable, final Runnable runnable2) {
        final float mScale = this.mScale;
        final float mColorMultiplier = this.mColorMultiplier;
        if (this.mScaleAnimator != null) {
            this.mScaleAnimator.cancel();
        }
        final float[] array2;
        final float[] array = array2 = new float[2];
        array2[0] = 0.0f;
        array2[1] = 1.0f;
        (this.mScaleAnimator = LauncherAnimUtils.ofFloat(array)).addUpdateListener((ValueAnimator$AnimatorUpdateListener)new PreviewBackground$5(this, n, mScale, n2, mColorMultiplier));
        this.mScaleAnimator.addListener((Animator$AnimatorListener)new PreviewBackground$6(this, runnable, runnable2));
        this.mScaleAnimator.setDuration((long)100);
        this.mScaleAnimator.start();
    }
    
    private void clearDrawingDelegate() {
        if (this.mDrawingDelegate != null) {
            this.mDrawingDelegate.removeFolderBackground(this);
        }
        this.mDrawingDelegate = null;
        this.isClipping = true;
        this.invalidate();
    }
    
    private void delegateDrawing(final CellLayout mDrawingDelegate, final int delegateCellX, final int delegateCellY) {
        if (this.mDrawingDelegate != mDrawingDelegate) {
            mDrawingDelegate.addFolderBackground(this);
        }
        this.mDrawingDelegate = mDrawingDelegate;
        this.delegateCellX = delegateCellX;
        this.delegateCellY = delegateCellY;
        this.invalidate();
    }
    
    private void drawCircle(final Canvas canvas, final float n) {
        final float n2 = this.getScaledRadius();
        canvas.drawCircle(this.getOffsetX() + n2, this.getOffsetY() + n2, n2 - n, this.mPaint);
    }
    
    public void animateBackgroundStroke() {
        if (this.mStrokeAlphaAnimator != null) {
            this.mStrokeAlphaAnimator.cancel();
        }
        (this.mStrokeAlphaAnimator = ObjectAnimator.ofInt((Object)this, PreviewBackground.STROKE_ALPHA, new int[] { 112, 225 }).setDuration((long)100)).addListener((Animator$AnimatorListener)new PreviewBackground$4(this));
        this.mStrokeAlphaAnimator.start();
    }
    
    public void animateToAccept(final CellLayout cellLayout, final int n, final int n2) {
        this.animateScale(1.2f, 1.5f, new PreviewBackground$7(this, cellLayout, n, n2), null);
    }
    
    public void animateToRest() {
        final float n = 1.0f;
        this.animateScale(n, n, new PreviewBackground$8(this, this.mDrawingDelegate, this.delegateCellX, this.delegateCellY), new PreviewBackground$9(this));
    }
    
    void clipCanvasHardware(final Canvas canvas) {
        this.mPaint.setColor(-16777216);
        this.mPaint.setStyle(Paint$Style.FILL);
        this.mPaint.setXfermode((Xfermode)this.mClipPorterDuffXfermode);
        final float n = this.getScaledRadius();
        this.mShaderMatrix.setScale(n, n);
        this.mShaderMatrix.postTranslate(this.getOffsetX() + n, n + this.getOffsetY());
        this.mClipShader.setLocalMatrix(this.mShaderMatrix);
        this.mPaint.setShader((Shader)this.mClipShader);
        canvas.drawPaint(this.mPaint);
        this.mPaint.setXfermode((Xfermode)null);
        this.mPaint.setShader((Shader)null);
    }
    
    void clipCanvasSoftware(final Canvas canvas, final Region$Op region$Op) {
        this.mPath.reset();
        final float n = this.getScaledRadius();
        this.mPath.addCircle(this.getOffsetX() + n, this.getOffsetY() + n, n, Path$Direction.CW);
        canvas.clipPath(this.mPath, region$Op);
    }
    
    public void drawBackground(final Canvas canvas) {
        this.mPaint.setStyle(Paint$Style.FILL);
        this.mPaint.setColor(a.asb(this.mBgColor, (int)Math.min(225.0f, this.mColorMultiplier * 160.0f)));
        this.drawCircle(canvas, 0.0f);
        if (this.mShadowShader == null) {
            return;
        }
        final float n = this.getScaledRadius();
        final float n2 = n + this.mStrokeWidth;
        this.mPaint.setColor(-16777216);
        final int offsetX = this.getOffsetX();
        final int offsetY = this.getOffsetY();
        int n3;
        if (canvas.isHardwareAccelerated()) {
            n3 = canvas.saveLayer(offsetX - this.mStrokeWidth, (float)offsetY, offsetX + n + n2, offsetY + n2 + n2, (Paint)null, 20);
        }
        else {
            n3 = canvas.save(2);
            this.clipCanvasSoftware(canvas, Region$Op.DIFFERENCE);
        }
        this.mShaderMatrix.setScale(n2, n2);
        this.mShaderMatrix.postTranslate(offsetX + n, offsetY + n2);
        this.mShadowShader.setLocalMatrix(this.mShaderMatrix);
        this.mPaint.setAlpha(this.mShadowAlpha);
        this.mPaint.setShader((Shader)this.mShadowShader);
        canvas.drawPaint(this.mPaint);
        this.mPaint.setAlpha(255);
        this.mPaint.setShader((Shader)null);
        if (canvas.isHardwareAccelerated()) {
            this.mPaint.setXfermode((Xfermode)this.mShadowPorterDuffXfermode);
            canvas.drawCircle(offsetX + n, offsetY + n, n, this.mPaint);
            this.mPaint.setXfermode((Xfermode)null);
        }
        canvas.restoreToCount(n3);
    }
    
    public void drawBackgroundStroke(final Canvas canvas) {
        this.mPaint.setColor(a.asb(this.mBgColor, this.mStrokeAlpha));
        this.mPaint.setStyle(Paint$Style.STROKE);
        this.mPaint.setStrokeWidth(this.mStrokeWidth);
        this.drawCircle(canvas, 1.0f);
    }
    
    public void drawLeaveBehind(final Canvas canvas) {
        final int n = 245;
        final float mScale = this.mScale;
        this.mScale = 0.5f;
        this.mPaint.setStyle(Paint$Style.FILL);
        this.mPaint.setColor(Color.argb(160, n, n, n));
        this.drawCircle(canvas, 0.0f);
        this.mScale = mScale;
    }
    
    boolean drawingDelegated() {
        return this.mDrawingDelegate != null;
    }
    
    public void fadeInBackgroundShadow() {
        if (this.mShadowAnimator != null) {
            this.mShadowAnimator.cancel();
        }
        (this.mShadowAnimator = ObjectAnimator.ofInt((Object)this, PreviewBackground.SHADOW_ALPHA, new int[] { 0, 255 }).setDuration((long)100)).addListener((Animator$AnimatorListener)new PreviewBackground$3(this));
        this.mShadowAnimator.start();
    }
    
    public int getBackgroundAlpha() {
        return (int)Math.min(225.0f, this.mColorMultiplier * 160.0f);
    }
    
    int getOffsetX() {
        return this.basePreviewOffsetX - (this.getScaledRadius() - this.getRadius());
    }
    
    int getOffsetY() {
        return this.basePreviewOffsetY - (this.getScaledRadius() - this.getRadius());
    }
    
    int getRadius() {
        return this.previewSize / 2;
    }
    
    float getScaleProgress() {
        return (this.mScale - 1.0f) / 0.20000005f;
    }
    
    int getScaledRadius() {
        return (int)(this.mScale * this.getRadius());
    }
    
    void invalidate() {
        if (this.mInvalidateDelegate != null) {
            this.mInvalidateDelegate.invalidate();
        }
        if (this.mDrawingDelegate != null) {
            this.mDrawingDelegate.invalidate();
        }
    }
    
    void setInvalidateDelegate(final View mInvalidateDelegate) {
        this.mInvalidateDelegate = mInvalidateDelegate;
        this.invalidate();
    }
    
    public void setup(final Launcher launcher, final View mInvalidateDelegate, final int n, final int n2) {
        final int n3 = 1;
        final float n4 = 1.0f;
        final int n5 = 2;
        this.mInvalidateDelegate = mInvalidateDelegate;
        this.mBgColor = Themes.getAttrColor((Context)launcher, 16843827);
        final DeviceProfile deviceProfile = launcher.getDeviceProfile();
        final int folderIconSizePx = deviceProfile.folderIconSizePx;
        final int folderIconPreviewPadding = deviceProfile.folderIconPreviewPadding;
        this.previewSize = folderIconSizePx - folderIconPreviewPadding * 2;
        this.basePreviewOffsetX = (n - this.previewSize) / 2;
        this.basePreviewOffsetY = deviceProfile.folderBackgroundOffset + folderIconPreviewPadding + n2;
        this.mStrokeWidth = launcher.getResources().getDisplayMetrics().density;
        final float n6 = this.getScaledRadius();
        final float n7 = n6 + this.mStrokeWidth;
        final int argb = Color.argb(40, 0, 0, 0);
        final int[] array = new int[n5];
        array[0] = argb;
        array[n3] = 0;
        final float[] array2 = new float[n5];
        array2[0] = n6 / n7;
        this.mShadowShader = new RadialGradient(0.0f, 0.0f, array2[n3] = n4, array, array2, Shader$TileMode.CLAMP);
        this.invalidate();
    }
}

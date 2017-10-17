// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import com.android.launcher3.DeviceProfile;
import android.util.DisplayMetrics;
import android.graphics.Color;
import android.graphics.Paint$Style;
import android.graphics.Path$Direction;
import android.graphics.Shader;
import android.graphics.Xfermode;
import android.animation.Animator$AnimatorListener;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import com.android.launcher3.LauncherAnimUtils;
import android.graphics.Shader$TileMode;
import android.graphics.PorterDuff$Mode;
import android.graphics.Region$Op;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.animation.ValueAnimator;
import android.graphics.Path;
import android.graphics.Paint;
import android.view.View;
import com.android.launcher3.CellLayout;
import android.graphics.RadialGradient;
import android.graphics.PorterDuffXfermode;

public class FolderIcon$PreviewBackground
{
    private int basePreviewOffsetX;
    private int basePreviewOffsetY;
    public int delegateCellX;
    public int delegateCellY;
    public boolean isClipping;
    private final PorterDuffXfermode mClipPorterDuffXfermode;
    private final RadialGradient mClipShader;
    private float mColorMultiplier;
    private CellLayout mDrawingDelegate;
    private View mInvalidateDelegate;
    private final Paint mPaint;
    private final Path mPath;
    private float mScale;
    ValueAnimator mScaleAnimator;
    private final Matrix mShaderMatrix;
    private final PorterDuffXfermode mShadowPorterDuffXfermode;
    private RadialGradient mShadowShader;
    private float mStrokeWidth;
    public int previewSize;
    
    public FolderIcon$PreviewBackground() {
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
        (this.mScaleAnimator = LauncherAnimUtils.ofFloat(array)).addUpdateListener((ValueAnimator$AnimatorUpdateListener)new FolderIcon$PreviewBackground$1(this, n, mScale, n2, mColorMultiplier));
        this.mScaleAnimator.addListener((Animator$AnimatorListener)new FolderIcon$PreviewBackground$2(this, runnable, runnable2));
        this.mScaleAnimator.setDuration((long)100);
        this.mScaleAnimator.start();
    }
    
    private void clearDrawingDelegate() {
        if (this.mDrawingDelegate != null) {
            this.mDrawingDelegate.removeFolderBackground(this);
        }
        this.mDrawingDelegate = null;
        this.invalidate();
    }
    
    private void clipCanvasHardware(final Canvas canvas) {
        this.mPaint.setColor(-16777216);
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
    
    private void clipCanvasSoftware(final Canvas canvas, final Region$Op region$Op) {
        this.mPath.reset();
        final float n = this.getScaledRadius();
        this.mPath.addCircle(this.getOffsetX() + n, this.getOffsetY() + n, n, Path$Direction.CW);
        canvas.clipPath(this.mPath, region$Op);
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
    
    private boolean drawingDelegated() {
        return this.mDrawingDelegate != null;
    }
    
    public void animateToAccept(final CellLayout cellLayout, final int n, final int n2) {
        this.animateScale(1.25f, 1.5f, new FolderIcon$PreviewBackground$3(this, cellLayout, n, n2), null);
    }
    
    public void animateToRest() {
        final float n = 1.0f;
        this.animateScale(n, n, new FolderIcon$PreviewBackground$4(this, this.mDrawingDelegate, this.delegateCellX, this.delegateCellY), new FolderIcon$PreviewBackground$5(this));
    }
    
    public void drawBackground(final Canvas canvas) {
        final int n = 245;
        this.mPaint.setStyle(Paint$Style.FILL);
        this.mPaint.setColor(Color.argb((int)Math.min(225.0f, this.mColorMultiplier * 160.0f), n, n, n));
        this.drawCircle(canvas, 0.0f);
        if (this.mShadowShader == null) {
            return;
        }
        final float n2 = this.getScaledRadius();
        final float n3 = n2 + this.mStrokeWidth;
        this.mPaint.setColor(-16777216);
        final int offsetX = this.getOffsetX();
        final int offsetY = this.getOffsetY();
        int n4;
        if (canvas.isHardwareAccelerated()) {
            n4 = canvas.saveLayer(offsetX - this.mStrokeWidth, (float)offsetY, offsetX + n2 + n3, offsetY + n3 + n3, (Paint)null, 20);
        }
        else {
            n4 = canvas.save(2);
            this.clipCanvasSoftware(canvas, Region$Op.DIFFERENCE);
        }
        this.mShaderMatrix.setScale(n3, n3);
        this.mShaderMatrix.postTranslate(offsetX + n2, offsetY + n3);
        this.mShadowShader.setLocalMatrix(this.mShaderMatrix);
        this.mPaint.setShader((Shader)this.mShadowShader);
        canvas.drawPaint(this.mPaint);
        this.mPaint.setShader((Shader)null);
        if (canvas.isHardwareAccelerated()) {
            this.mPaint.setXfermode((Xfermode)this.mShadowPorterDuffXfermode);
            canvas.drawCircle(offsetX + n2, offsetY + n2, n2, this.mPaint);
            this.mPaint.setXfermode((Xfermode)null);
        }
        canvas.restoreToCount(n4);
    }
    
    public void drawBackgroundStroke(final Canvas canvas) {
        final int n = 245;
        this.mPaint.setColor(Color.argb(255, n, n, n));
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
        return (this.mScale - 1.0f) / 0.25f;
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
    
    public void setup(final DisplayMetrics displayMetrics, final DeviceProfile deviceProfile, final View mInvalidateDelegate, final int n, final int n2) {
        final int n3 = 1;
        final float n4 = 1.0f;
        final int n5 = 2;
        this.mInvalidateDelegate = mInvalidateDelegate;
        final int folderIconSizePx = deviceProfile.folderIconSizePx;
        final int folderIconPreviewPadding = deviceProfile.folderIconPreviewPadding;
        this.previewSize = folderIconSizePx - folderIconPreviewPadding * 2;
        this.basePreviewOffsetX = (n - this.previewSize) / 2;
        this.basePreviewOffsetY = deviceProfile.folderBackgroundOffset + folderIconPreviewPadding + n2;
        this.mStrokeWidth = displayMetrics.density;
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

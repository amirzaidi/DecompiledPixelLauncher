// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import android.graphics.Rect;
import android.animation.Animator$AnimatorListener;
import android.animation.TimeInterpolator;
import android.view.animation.LinearInterpolator;
import android.graphics.Canvas;
import android.graphics.Bitmap$Config;
import java.lang.ref.WeakReference;
import android.graphics.Paint$Cap;
import android.graphics.Paint$Style;
import android.graphics.Matrix;
import android.graphics.Bitmap;
import android.graphics.Path;
import android.graphics.Paint;
import android.graphics.PathMeasure;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.SparseArray;
import android.util.Property;
import com.android.launcher3.FastBitmapDrawable;

public class PreloadIconDrawable extends FastBitmapDrawable
{
    private static final Property INTERNAL_STATE;
    private static final SparseArray sShadowCache;
    private final Context mContext;
    private ObjectAnimator mCurrentAnim;
    private float mIconScale;
    private int mIndicatorColor;
    private float mInternalStateProgress;
    private final PathMeasure mPathMeasure;
    private final Paint mProgressPaint;
    private final Path mProgressPath;
    private boolean mRanFinishAnimation;
    private final Path mScaledProgressPath;
    private final Path mScaledTrackPath;
    private Bitmap mShadowBitmap;
    private final Matrix mTmpMatrix;
    private int mTrackAlpha;
    private float mTrackLength;
    
    static {
        INTERNAL_STATE = new PreloadIconDrawable$1(Float.TYPE, "internalStateProgress");
        sShadowCache = new SparseArray();
    }
    
    public PreloadIconDrawable(final Bitmap bitmap, final Path mProgressPath, final Context mContext) {
        super(bitmap);
        this.mTmpMatrix = new Matrix();
        this.mPathMeasure = new PathMeasure();
        this.mIndicatorColor = 0;
        this.mContext = mContext;
        this.mProgressPath = mProgressPath;
        this.mScaledTrackPath = new Path();
        this.mScaledProgressPath = new Path();
        (this.mProgressPaint = new Paint(3)).setStyle(Paint$Style.STROKE);
        this.mProgressPaint.setStrokeCap(Paint$Cap.ROUND);
        this.setInternalProgress(0.0f);
    }
    
    private Bitmap getShadowBitmap(final int n, final int n2, final float n3) {
        final int n4 = n << 16 | n2;
        final WeakReference weakReference = (WeakReference)PreloadIconDrawable.sShadowCache.get(n4);
        Bitmap bitmap;
        if (weakReference != null) {
            bitmap = weakReference.get();
        }
        else {
            bitmap = null;
        }
        if (bitmap != null) {
            return bitmap;
        }
        final Bitmap bitmap2 = Bitmap.createBitmap(n, n2, Bitmap$Config.ARGB_8888);
        final Canvas canvas = new Canvas(bitmap2);
        this.mProgressPaint.setShadowLayer(n3, 0.0f, 0.0f, 1426063360);
        this.mProgressPaint.setColor(2012147438);
        this.mProgressPaint.setAlpha(255);
        canvas.drawPath(this.mScaledTrackPath, this.mProgressPaint);
        this.mProgressPaint.clearShadowLayer();
        canvas.setBitmap((Bitmap)null);
        PreloadIconDrawable.sShadowCache.put(n4, (Object)new WeakReference(bitmap2));
        return bitmap2;
    }
    
    private void setInternalProgress(final float mInternalStateProgress) {
        final boolean b = true;
        final float n = 0.75f;
        final float mIconScale = 1.0f;
        this.mInternalStateProgress = mInternalStateProgress;
        if (mInternalStateProgress <= 0.0f) {
            this.mIconScale = n;
            this.mScaledTrackPath.reset();
            this.mTrackAlpha = 255;
            this.setIsDisabled(b);
        }
        else if (this.mIndicatorColor == 0) {
            this.mIndicatorColor = this.getIconPalette().getPreloadProgressColor(this.mContext);
        }
        if (mInternalStateProgress < mIconScale && mInternalStateProgress > 0.0f) {
            this.mPathMeasure.getSegment(0.0f, this.mTrackLength * mInternalStateProgress, this.mScaledProgressPath, b);
            this.mIconScale = n;
            this.mTrackAlpha = 255;
            this.setIsDisabled(b);
        }
        else if (mInternalStateProgress >= mIconScale) {
            this.setIsDisabled(false);
            this.mScaledTrackPath.set(this.mScaledProgressPath);
            final float n2 = (mInternalStateProgress - mIconScale) / 0.3f;
            if (n2 >= mIconScale) {
                this.mIconScale = mIconScale;
                this.mTrackAlpha = 0;
            }
            else {
                this.mTrackAlpha = Math.round((mIconScale - n2) * 255.0f);
                this.mIconScale = n2 * 0.25f + n;
            }
        }
        this.invalidateSelf();
    }
    
    private void updateInternalState(final float internalProgress, boolean b, final boolean b2) {
        if (this.mCurrentAnim != null) {
            this.mCurrentAnim.cancel();
            this.mCurrentAnim = null;
        }
        if (Float.compare(internalProgress, this.mInternalStateProgress) == 0) {
            return;
        }
        if (internalProgress < this.mInternalStateProgress) {
            b = false;
        }
        if (!b || this.mRanFinishAnimation) {
            this.setInternalProgress(internalProgress);
        }
        else {
            (this.mCurrentAnim = ObjectAnimator.ofFloat((Object)this, PreloadIconDrawable.INTERNAL_STATE, new float[] { internalProgress })).setDuration((long)((internalProgress - this.mInternalStateProgress) * 500.0f));
            this.mCurrentAnim.setInterpolator((TimeInterpolator)new LinearInterpolator());
            if (b2) {
                this.mCurrentAnim.addListener((Animator$AnimatorListener)new PreloadIconDrawable$2(this));
            }
            this.mCurrentAnim.start();
        }
    }
    
    public void draw(final Canvas canvas) {
        if (this.mRanFinishAnimation) {
            super.draw(canvas);
            return;
        }
        this.mProgressPaint.setColor(this.mIndicatorColor);
        this.mProgressPaint.setAlpha(this.mTrackAlpha);
        if (this.mShadowBitmap != null) {
            canvas.drawBitmap(this.mShadowBitmap, (float)this.getBounds().left, (float)this.getBounds().top, this.mProgressPaint);
        }
        canvas.drawPath(this.mScaledProgressPath, this.mProgressPaint);
        final int save = canvas.save(1);
        final Rect bounds = this.getBounds();
        canvas.scale(this.mIconScale, this.mIconScale, bounds.exactCenterX(), bounds.exactCenterY());
        this.drawInternal(canvas);
        canvas.restoreToCount(save);
    }
    
    public boolean hasNotCompleted() {
        return this.mRanFinishAnimation ^ true;
    }
    
    public void maybePerformFinishedAnimation() {
        final boolean b = true;
        if (this.mInternalStateProgress == 0.0f) {
            this.mInternalStateProgress = 1.0f;
        }
        this.updateInternalState(1.3f, b, b);
    }
    
    protected void onBoundsChange(final Rect rect) {
        final float n = 100.0f;
        final float n2 = 4.0f;
        final float n3 = 3.5f;
        final float n4 = 7.0f;
        final float n5 = 2.0f;
        super.onBoundsChange(rect);
        this.mTmpMatrix.setScale((rect.width() - n4 - n2) / n, (rect.height() - n4 - n2) / n);
        this.mTmpMatrix.postTranslate(rect.left + n3 + n5, rect.top + n3 + n5);
        this.mProgressPath.transform(this.mTmpMatrix, this.mScaledTrackPath);
        final float n6 = rect.width() / 100;
        this.mProgressPaint.setStrokeWidth(n4 * n6);
        this.mShadowBitmap = this.getShadowBitmap(rect.width(), rect.height(), n6 * n5);
        this.mPathMeasure.setPath(this.mScaledTrackPath, true);
        this.mTrackLength = this.mPathMeasure.getLength();
        this.setInternalProgress(this.mInternalStateProgress);
    }
    
    protected boolean onLevelChange(final int n) {
        final boolean b = true;
        this.updateInternalState(0.01f * n, this.getBounds().width() > 0 && b, false);
        return b;
    }
}

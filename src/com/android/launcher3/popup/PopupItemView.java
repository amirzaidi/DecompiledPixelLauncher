// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.animation.Animator$AnimatorListener;
import android.animation.TimeInterpolator;
import android.animation.Animator;
import com.android.launcher3.Utilities;
import android.graphics.Xfermode;
import android.graphics.PorterDuffXfermode;
import android.graphics.PorterDuff$Mode;
import android.graphics.Canvas;
import android.graphics.Bitmap$Config;
import android.util.AttributeSet;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.Matrix;
import android.view.View;
import android.graphics.Paint;
import android.graphics.Point;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.widget.FrameLayout;

public abstract class PopupItemView extends FrameLayout implements ValueAnimator$AnimatorUpdateListener
{
    protected static final Point sTempPoint;
    private final Paint mBackgroundClipPaint;
    protected View mIconView;
    protected final boolean mIsRtl;
    private final Matrix mMatrix;
    private float mOpenAnimationProgress;
    protected final Rect mPillRect;
    private Bitmap mRoundedCornerBitmap;
    
    static {
        sTempPoint = new Point();
    }
    
    public PopupItemView(final Context context) {
        this(context, null, 0);
    }
    
    public PopupItemView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public PopupItemView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mBackgroundClipPaint = new Paint(5);
        this.mMatrix = new Matrix();
        this.mPillRect = new Rect();
        final int n2 = (int)this.getBackgroundRadius();
        this.mRoundedCornerBitmap = Bitmap.createBitmap(n2, n2, Bitmap$Config.ALPHA_8);
        final Canvas canvas = new Canvas();
        canvas.setBitmap(this.mRoundedCornerBitmap);
        canvas.drawArc(0.0f, 0.0f, (float)(n2 * 2), (float)(n2 * 2), 180.0f, 90.0f, true, this.mBackgroundClipPaint);
        this.mBackgroundClipPaint.setXfermode((Xfermode)new PorterDuffXfermode(PorterDuff$Mode.DST_IN));
        this.mIsRtl = Utilities.isRtl(this.getResources());
    }
    
    public Animator createCloseAnimation(final boolean b, final boolean b2, final long n) {
        final Point iconCenter = this.getIconCenter();
        final Resources resources = this.getResources();
        int n2;
        if (this.mIsRtl ^ b2) {
            n2 = 2131427447;
        }
        else {
            n2 = 2131427448;
        }
        final ValueAnimator revealAnimator = new PopupItemView$ZoomRevealOutlineProvider(iconCenter.x, iconCenter.y, this.mPillRect, this, this.mIconView, b, b2, resources.getDimensionPixelSize(n2)).createRevealAnimator((View)this, true);
        revealAnimator.setDuration((long)(n * this.mOpenAnimationProgress));
        revealAnimator.setInterpolator((TimeInterpolator)new PopupItemView$CloseInterpolator(this.mOpenAnimationProgress));
        revealAnimator.addListener((Animator$AnimatorListener)new PopupItemView$1(this));
        return (Animator)revealAnimator;
    }
    
    public Animator createOpenAnimation(final boolean b, final boolean b2) {
        final Point iconCenter = this.getIconCenter();
        final Resources resources = this.getResources();
        int n;
        if (this.mIsRtl ^ b2) {
            n = 2131427447;
        }
        else {
            n = 2131427448;
        }
        final ValueAnimator revealAnimator = new PopupItemView$ZoomRevealOutlineProvider(iconCenter.x, iconCenter.y, this.mPillRect, this, this.mIconView, b, b2, resources.getDimensionPixelSize(n)).createRevealAnimator((View)this, false);
        this.mOpenAnimationProgress = 0.0f;
        revealAnimator.addUpdateListener((ValueAnimator$AnimatorUpdateListener)this);
        return (Animator)revealAnimator;
    }
    
    protected void dispatchDraw(final Canvas canvas) {
        final int saveLayer = canvas.saveLayer(0.0f, 0.0f, (float)this.getWidth(), (float)this.getHeight(), (Paint)null);
        super.dispatchDraw(canvas);
        final int width = this.mRoundedCornerBitmap.getWidth();
        final int height = this.mRoundedCornerBitmap.getHeight();
        this.mMatrix.reset();
        canvas.drawBitmap(this.mRoundedCornerBitmap, this.mMatrix, this.mBackgroundClipPaint);
        this.mMatrix.setRotate(90.0f, (float)(width / 2), (float)(height / 2));
        this.mMatrix.postTranslate((float)(canvas.getWidth() - width), 0.0f);
        canvas.drawBitmap(this.mRoundedCornerBitmap, this.mMatrix, this.mBackgroundClipPaint);
        this.mMatrix.setRotate(180.0f, (float)(width / 2), (float)(height / 2));
        this.mMatrix.postTranslate((float)(canvas.getWidth() - width), (float)(canvas.getHeight() - height));
        canvas.drawBitmap(this.mRoundedCornerBitmap, this.mMatrix, this.mBackgroundClipPaint);
        this.mMatrix.setRotate(270.0f, (float)(width / 2), (float)(height / 2));
        this.mMatrix.postTranslate(0.0f, (float)(canvas.getHeight() - height));
        canvas.drawBitmap(this.mRoundedCornerBitmap, this.mMatrix, this.mBackgroundClipPaint);
        canvas.restoreToCount(saveLayer);
    }
    
    public abstract int getArrowColor(final boolean p0);
    
    protected float getBackgroundRadius() {
        return this.getResources().getDimensionPixelSize(2131427461);
    }
    
    public Point getIconCenter() {
        PopupItemView.sTempPoint.y = this.getMeasuredHeight() / 2;
        PopupItemView.sTempPoint.x = this.getResources().getDimensionPixelSize(2131427435) / 2;
        if (Utilities.isRtl(this.getResources())) {
            PopupItemView.sTempPoint.x = this.getMeasuredWidth() - PopupItemView.sTempPoint.x;
        }
        return PopupItemView.sTempPoint;
    }
    
    public boolean isOpenOrOpening() {
        return this.mOpenAnimationProgress > 0.0f;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        this.mOpenAnimationProgress = valueAnimator.getAnimatedFraction();
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mIconView = this.findViewById(2131624018);
    }
    
    protected void onMeasure(final int n, final int n2) {
        super.onMeasure(n, n2);
        this.mPillRect.set(0, 0, this.getMeasuredWidth(), this.getMeasuredHeight());
    }
}

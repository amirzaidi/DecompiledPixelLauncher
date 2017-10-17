// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.os.Handler;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.config.FeatureFlags;
import android.graphics.ColorFilter;
import com.android.launcher3.util.Themes;
import android.view.View;
import android.graphics.Canvas;
import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.support.a.c;
import android.support.a.d;
import android.widget.ImageView$ScaleType;
import android.view.ViewGroup$LayoutParams;
import android.widget.FrameLayout$LayoutParams;
import android.graphics.Matrix;
import com.android.launcher3.compat.ShortcutConfigActivityInfo;
import android.content.pm.LauncherActivityInfo;
import java.util.List;
import com.android.launcher3.shortcuts.DeepShortcutManager;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.launcher3.compat.LauncherAppsCompat;
import android.graphics.drawable.InsetDrawable;
import com.android.launcher3.FastBitmapDrawable;
import com.android.launcher3.graphics.LauncherIcons;
import com.android.launcher3.shortcuts.ShortcutInfoCompat;
import com.android.launcher3.Utilities;
import android.animation.TypeEvaluator;
import android.animation.FloatArrayEvaluator;
import java.util.Arrays;
import android.graphics.ColorMatrix;
import android.view.View$MeasureSpec;
import android.animation.Animator$AnimatorListener;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import com.android.launcher3.LauncherAnimUtils;
import android.content.Context;
import android.support.a.i;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.ItemInfo;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.support.a.a;
import android.graphics.Path;
import android.graphics.Paint;
import com.android.launcher3.Launcher;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Bitmap;
import android.widget.ImageView;
import android.graphics.drawable.Drawable;
import android.animation.ValueAnimator;
import android.widget.FrameLayout;

public class DragView extends FrameLayout
{
    static float sDragAlpha;
    ValueAnimator mAnim;
    private int mAnimatedShiftX;
    private int mAnimatedShiftY;
    private boolean mAnimationCancelled;
    private Drawable mBadge;
    private ImageView mBgImageView;
    private Bitmap mBitmap;
    private final int mBlurSizeOutline;
    private Bitmap mCrossFadeBitmap;
    float mCrossFadeProgress;
    float[] mCurrentFilter;
    private final int mDelta;
    final DragController mDragController;
    private final DragLayer mDragLayer;
    private Rect mDragRegion;
    private Point mDragVisualizeOffset;
    private ImageView mFgImageView;
    private ValueAnimator mFilterAnimator;
    private boolean mHasDrawn;
    private final float mInitialScale;
    private float mIntrinsicIconScale;
    private int mLastTouchX;
    private int mLastTouchY;
    private final Launcher mLauncher;
    Paint mPaint;
    private final int mRegistrationX;
    private final int mRegistrationY;
    private Path mScaledMaskPath;
    private a mSpringX;
    private a mSpringY;
    private final int[] mTempLoc;
    
    static {
        DragView.sDragAlpha = 1.0f;
    }
    
    public DragView(final Launcher mLauncher, final Bitmap bitmap, final int mRegistrationX, final int mRegistrationY, final float mInitialScale, final float n) {
        final int n2 = 2;
        super((Context)mLauncher);
        this.mTempLoc = new int[n2];
        this.mDragVisualizeOffset = null;
        this.mDragRegion = null;
        this.mHasDrawn = false;
        this.mCrossFadeProgress = 0.0f;
        this.mAnimationCancelled = false;
        this.mIntrinsicIconScale = 1.0f;
        this.mLauncher = mLauncher;
        this.mDragLayer = mLauncher.getDragLayer();
        this.mDragController = mLauncher.getDragController();
        final float n3 = (bitmap.getWidth() + n) / bitmap.getWidth();
        this.setScaleX(mInitialScale);
        this.setScaleY(mInitialScale);
        final float[] array2;
        final float[] array = array2 = new float[n2];
        array2[0] = 0.0f;
        array2[1] = 1.0f;
        (this.mAnim = LauncherAnimUtils.ofFloat(array)).setDuration(150L);
        this.mAnim.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new DragView$1(this, mInitialScale, n3));
        this.mAnim.addListener((Animator$AnimatorListener)new DragView$2(this));
        this.mBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight());
        this.setDragRegion(new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()));
        this.mRegistrationX = mRegistrationX;
        this.mRegistrationY = mRegistrationY;
        this.mInitialScale = mInitialScale;
        final int measureSpec = View$MeasureSpec.makeMeasureSpec(0, 0);
        this.measure(measureSpec, measureSpec);
        this.mPaint = new Paint(n2);
        this.mBlurSizeOutline = this.getResources().getDimensionPixelSize(2131427438);
        this.setElevation(this.getResources().getDimension(2131427423));
        this.setWillNotDraw(false);
        this.mDelta = (int)(this.getResources().getDisplayMetrics().density * 8.0f);
    }
    
    private void animateFilterTo(final float[] array) {
        float[] array2;
        if (this.mCurrentFilter == null) {
            array2 = new ColorMatrix().getArray();
        }
        else {
            array2 = this.mCurrentFilter;
        }
        this.mCurrentFilter = Arrays.copyOf(array2, array2.length);
        if (this.mFilterAnimator != null) {
            this.mFilterAnimator.cancel();
        }
        (this.mFilterAnimator = ValueAnimator.ofObject((TypeEvaluator)new FloatArrayEvaluator(this.mCurrentFilter), new Object[] { array2, array })).setDuration((long)120);
        this.mFilterAnimator.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new DragView$5(this));
        this.mFilterAnimator.start();
    }
    
    private void applySpring(final int n, final int n2) {
        if (this.mSpringX == null || this.mSpringY == null) {
            return;
        }
        this.mSpringX.atX(Utilities.boundToRange(n, -this.mDelta, this.mDelta));
        this.mSpringY.atX(Utilities.boundToRange(n2, -this.mDelta, this.mDelta));
    }
    
    private void applyTranslation() {
        this.setTranslationX((float)(this.mLastTouchX - this.mRegistrationX + this.mAnimatedShiftX));
        this.setTranslationY((float)(this.mLastTouchY - this.mRegistrationY + this.mAnimatedShiftY));
    }
    
    private Drawable getBadge(final ItemInfo itemInfo, final LauncherAppState launcherAppState, final Object o) {
        final int iconBitmapSize = launcherAppState.getInvariantDeviceProfile().iconBitmapSize;
        if (itemInfo.itemType != 6) {
            return this.mLauncher.getPackageManager().getUserBadgedIcon((Drawable)new DragView$FixedSizeEmptyDrawable(iconBitmapSize), itemInfo.user);
        }
        if (itemInfo.id == -1 || (o instanceof ShortcutInfoCompat ^ true)) {
            return (Drawable)new DragView$FixedSizeEmptyDrawable(iconBitmapSize);
        }
        final Bitmap shortcutInfoBadge = LauncherIcons.getShortcutInfoBadge((ShortcutInfoCompat)o, launcherAppState.getIconCache());
        final float n = (iconBitmapSize - this.mLauncher.getResources().getDimension(2131427434)) / iconBitmapSize;
        return (Drawable)new InsetDrawable((Drawable)new FastBitmapDrawable(shortcutInfoBadge), n, n, 0.0f, 0.0f);
    }
    
    private Drawable getFullDrawable(final ItemInfo itemInfo, final LauncherAppState launcherAppState, final Object[] array) {
        Drawable fullResIcon = null;
        if (itemInfo.itemType == 0) {
            final LauncherActivityInfo resolveActivity = LauncherAppsCompat.getInstance((Context)this.mLauncher).resolveActivity(itemInfo.getIntent(), itemInfo.user);
            if ((array[0] = resolveActivity) != null) {
                fullResIcon = launcherAppState.getIconCache().getFullResIcon(resolveActivity, false);
            }
            return fullResIcon;
        }
        if (itemInfo.itemType != 6) {
            return null;
        }
        if (itemInfo instanceof PendingAddShortcutInfo) {
            final ShortcutConfigActivityInfo activityInfo = ((PendingAddShortcutInfo)itemInfo).activityInfo;
            array[0] = activityInfo;
            return activityInfo.getFullResIcon(launcherAppState.getIconCache());
        }
        final ShortcutKey fromItemInfo = ShortcutKey.fromItemInfo(itemInfo);
        final DeepShortcutManager instance = DeepShortcutManager.getInstance((Context)this.mLauncher);
        final List queryForFullDetails = instance.queryForFullDetails(fromItemInfo.componentName.getPackageName(), Arrays.asList(fromItemInfo.getId()), fromItemInfo.user);
        if (queryForFullDetails.isEmpty()) {
            return null;
        }
        array[0] = queryForFullDetails.get(0);
        return instance.getShortcutIconDrawable(queryForFullDetails.get(0), launcherAppState.getInvariantDeviceProfile().fillResIconDpi);
    }
    
    private Path getMaskPath(final AdaptiveIconDrawable adaptiveIconDrawable, final float n) {
        final Matrix matrix = new Matrix();
        final float n2 = 0.97f * n;
        matrix.setScale(n2, n2, (float)adaptiveIconDrawable.getBounds().centerX(), (float)adaptiveIconDrawable.getBounds().centerY());
        final Path path = new Path();
        adaptiveIconDrawable.getIconMask().transform(matrix, path);
        return path;
    }
    
    private ImageView setupImageView(final Drawable imageDrawable, final float n) {
        final int n2 = -1;
        final FrameLayout$LayoutParams layoutParams = new FrameLayout$LayoutParams(n2, n2);
        final ImageView imageView = new ImageView(this.getContext());
        imageView.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        imageView.setScaleType(ImageView$ScaleType.FIT_XY);
        imageView.setScaleX(n);
        imageView.setScaleY(n);
        imageView.setImageDrawable(imageDrawable);
        return imageView;
    }
    
    private a setupSpringAnimation(final int n, final int n2, final i i) {
        final a a = new a(this.mFgImageView, i, 0.0f);
        ((a)a.aub(n)).aue(n2);
        a.aua(new c(0.0f).auo(1.0f).aus(4000.0f));
        return a;
    }
    
    public void animateShift(final int mAnimatedShiftX, final int mAnimatedShiftY) {
        if (this.mAnim.isStarted()) {
            return;
        }
        this.mAnimatedShiftX = mAnimatedShiftX;
        this.mAnimatedShiftY = mAnimatedShiftY;
        this.applyTranslation();
        this.mAnim.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new DragView$7(this, mAnimatedShiftX, mAnimatedShiftY));
    }
    
    public void animateTo(final int n, final int n2, final Runnable runnable, final int n3) {
        this.mTempLoc[0] = n - this.mRegistrationX;
        this.mTempLoc[1] = n2 - this.mRegistrationY;
        this.mDragLayer.animateViewIntoPosition(this, this.mTempLoc, 1.0f, this.mInitialScale, this.mInitialScale, 0, runnable, n3);
    }
    
    public void cancelAnimation() {
        this.mAnimationCancelled = true;
        if (this.mAnim != null && this.mAnim.isRunning()) {
            this.mAnim.cancel();
        }
    }
    
    public void crossFade(final int n) {
        final float[] array2;
        final float[] array = array2 = new float[2];
        array2[0] = 0.0f;
        array2[1] = 1.0f;
        final ValueAnimator ofFloat = LauncherAnimUtils.ofFloat(array);
        ofFloat.setDuration((long)n);
        ofFloat.setInterpolator((TimeInterpolator)new DecelerateInterpolator(1.5f));
        ofFloat.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new DragView$4(this));
        ofFloat.start();
    }
    
    protected void dispatchDraw(final Canvas canvas) {
        if (this.mScaledMaskPath != null) {
            final int save = canvas.save();
            canvas.drawBitmap(this.mBitmap, 0.0f, 0.0f, this.mPaint);
            canvas.clipPath(this.mScaledMaskPath);
            super.dispatchDraw(canvas);
            canvas.restoreToCount(save);
            this.mBadge.draw(canvas);
        }
        else {
            super.dispatchDraw(canvas);
        }
    }
    
    public int getBlurSizeOutline() {
        return this.mBlurSizeOutline;
    }
    
    public Rect getDragRegion() {
        return this.mDragRegion;
    }
    
    public int getDragRegionTop() {
        return this.mDragRegion.top;
    }
    
    public int getDragRegionWidth() {
        return this.mDragRegion.width();
    }
    
    public Point getDragVisualizeOffset() {
        return this.mDragVisualizeOffset;
    }
    
    public float getInitialScale() {
        return this.mInitialScale;
    }
    
    public float getIntrinsicIconScaleFactor() {
        return this.mIntrinsicIconScale;
    }
    
    public boolean hasDrawn() {
        return this.mHasDrawn;
    }
    
    public void move(final int mLastTouchX, final int mLastTouchY) {
        if (mLastTouchX > 0 && mLastTouchY > 0 && this.mLastTouchX > 0 && this.mLastTouchY > 0) {
            this.applySpring(this.mLastTouchX - mLastTouchX, this.mLastTouchY - mLastTouchY);
        }
        this.mLastTouchX = mLastTouchX;
        this.mLastTouchY = mLastTouchY;
        this.applyTranslation();
    }
    
    protected void onDraw(final Canvas canvas) {
        final float n = 255.0f;
        final int mHasDrawn = 1;
        final float n2 = 1.0f;
        this.mHasDrawn = (mHasDrawn != 0);
        int n3;
        if (this.mCrossFadeProgress > 0.0f && this.mCrossFadeBitmap != null) {
            n3 = mHasDrawn;
        }
        else {
            n3 = 0;
        }
        if (n3 != 0) {
            int alpha;
            if (n3 != 0) {
                alpha = (int)((n2 - this.mCrossFadeProgress) * n);
            }
            else {
                alpha = 255;
            }
            this.mPaint.setAlpha(alpha);
        }
        canvas.drawBitmap(this.mBitmap, 0.0f, 0.0f, this.mPaint);
        if (n3 != 0) {
            this.mPaint.setAlpha((int)(this.mCrossFadeProgress * n));
            final int save = canvas.save(mHasDrawn);
            canvas.scale(this.mBitmap.getWidth() * n2 / this.mCrossFadeBitmap.getWidth(), this.mBitmap.getHeight() * n2 / this.mCrossFadeBitmap.getHeight());
            canvas.drawBitmap(this.mCrossFadeBitmap, 0.0f, 0.0f, this.mPaint);
            canvas.restoreToCount(save);
        }
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        final int n5 = n3 - n;
        final int n6 = n4 - n2;
        for (int i = 0; i < this.getChildCount(); ++i) {
            this.getChildAt(i).layout(-n5 / 4, -n6 / 4, n5 / 4 + n5, n6 / 4 + n6);
        }
    }
    
    protected void onMeasure(final int n, final int n2) {
        final int width = this.mBitmap.getWidth();
        final int height = this.mBitmap.getHeight();
        this.setMeasuredDimension(width, height);
        for (int i = 0; i < this.getChildCount(); ++i) {
            this.getChildAt(i).measure(width, height);
        }
    }
    
    public void remove() {
        if (this.getParent() != null) {
            this.mDragLayer.removeView((View)this);
        }
    }
    
    public void setAlpha(final float alpha) {
        super.setAlpha(alpha);
        this.mPaint.setAlpha((int)(255.0f * alpha));
        this.invalidate();
    }
    
    public void setColor(final int n) {
        if (this.mPaint == null) {
            this.mPaint = new Paint(2);
        }
        if (n != 0) {
            final ColorMatrix colorMatrix = new ColorMatrix();
            colorMatrix.setSaturation(0.0f);
            final ColorMatrix colorMatrix2 = new ColorMatrix();
            Themes.setColorScaleOnMatrix(n, colorMatrix2);
            colorMatrix.postConcat(colorMatrix2);
            this.animateFilterTo(colorMatrix.getArray());
        }
        else if (this.mCurrentFilter == null) {
            this.mPaint.setColorFilter((ColorFilter)null);
            this.invalidate();
        }
        else {
            this.animateFilterTo(new ColorMatrix().getArray());
        }
    }
    
    public void setCrossFadeBitmap(final Bitmap mCrossFadeBitmap) {
        this.mCrossFadeBitmap = mCrossFadeBitmap;
    }
    
    public void setDragRegion(final Rect mDragRegion) {
        this.mDragRegion = mDragRegion;
    }
    
    public void setDragVisualizeOffset(final Point mDragVisualizeOffset) {
        this.mDragVisualizeOffset = mDragVisualizeOffset;
    }
    
    public void setIntrinsicIconScaleFactor(final float mIntrinsicIconScale) {
        this.mIntrinsicIconScale = mIntrinsicIconScale;
    }
    
    public void setItemInfo(final ItemInfo itemInfo) {
        boolean atLeastO = false;
        if (FeatureFlags.LAUNCHER3_SPRING_ICONS) {
            atLeastO = Utilities.isAtLeastO();
        }
        if (!atLeastO) {
            return;
        }
        if (itemInfo.itemType != 0 && itemInfo.itemType != 6) {
            return;
        }
        new Handler(LauncherModel.getWorkerLooper()).postAtFrontOfQueue((Runnable)new DragView$3(this, itemInfo));
    }
    
    public void show(final int n, final int n2) {
        this.mDragLayer.addView((View)this);
        final DragLayer$LayoutParams layoutParams = new DragLayer$LayoutParams(0, 0);
        layoutParams.width = this.mBitmap.getWidth();
        layoutParams.height = this.mBitmap.getHeight();
        layoutParams.customPosition = true;
        this.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        this.move(n, n2);
        this.post((Runnable)new DragView$6(this));
    }
}

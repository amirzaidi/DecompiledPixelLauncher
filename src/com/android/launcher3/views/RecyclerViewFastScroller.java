// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.views;

import android.graphics.drawable.Drawable;
import com.android.launcher3.graphics.FastScrollThumbDrawable;
import android.support.v7.widget.m;
import android.graphics.Canvas;
import com.android.launcher3.config.FeatureFlags;
import android.view.MotionEvent;
import com.android.launcher3.Utilities;
import android.view.ViewPropertyAnimator;
import android.content.res.TypedArray;
import android.content.res.Resources;
import com.android.launcher3.R$styleable;
import android.graphics.Paint$Style;
import com.android.launcher3.util.Themes;
import android.util.AttributeSet;
import android.content.Context;
import android.animation.ObjectAnimator;
import android.graphics.Paint;
import com.android.launcher3.BaseRecyclerView;
import android.widget.TextView;
import android.view.ViewConfiguration;
import android.util.Property;
import android.view.View;

public class RecyclerViewFastScroller extends View
{
    private static final Property TRACK_WIDTH;
    private final boolean mCanThumbDetach;
    private final ViewConfiguration mConfig;
    private final float mDeltaThreshold;
    private int mDownX;
    private int mDownY;
    private int mDy;
    private boolean mIgnoreDragGesture;
    private boolean mIsDragging;
    private boolean mIsThumbDetached;
    private float mLastTouchY;
    private int mLastY;
    private final int mMaxWidth;
    private final int mMinWidth;
    private String mPopupSectionName;
    private TextView mPopupView;
    private boolean mPopupVisible;
    protected BaseRecyclerView mRv;
    protected final int mThumbHeight;
    protected int mThumbOffsetY;
    private final int mThumbPadding;
    private final Paint mThumbPaint;
    protected int mTouchOffsetY;
    private final Paint mTrackPaint;
    private int mWidth;
    private ObjectAnimator mWidthAnimator;
    
    static {
        TRACK_WIDTH = new RecyclerViewFastScroller$1(Integer.class, "width");
    }
    
    public RecyclerViewFastScroller(final Context context) {
        this(context, null);
    }
    
    public RecyclerViewFastScroller(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public RecyclerViewFastScroller(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mDy = 0;
        (this.mTrackPaint = new Paint()).setColor(Themes.getAttrColor(context, 16842806));
        this.mTrackPaint.setAlpha(30);
        (this.mThumbPaint = new Paint()).setAntiAlias(true);
        this.mThumbPaint.setColor(Themes.getColorAccent(context));
        this.mThumbPaint.setStyle(Paint$Style.FILL);
        final Resources resources = this.getResources();
        final int dimensionPixelSize = resources.getDimensionPixelSize(2131427375);
        this.mMinWidth = dimensionPixelSize;
        this.mWidth = dimensionPixelSize;
        this.mMaxWidth = resources.getDimensionPixelSize(2131427376);
        this.mThumbPadding = resources.getDimensionPixelSize(2131427377);
        this.mThumbHeight = resources.getDimensionPixelSize(2131427378);
        this.mConfig = ViewConfiguration.get(context);
        this.mDeltaThreshold = resources.getDisplayMetrics().density * 4.0f;
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, R$styleable.RecyclerViewFastScroller, n, 0);
        this.mCanThumbDetach = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
    }
    
    private void animatePopupVisibility(final boolean mPopupVisible) {
        if (this.mPopupVisible != mPopupVisible) {
            this.mPopupVisible = mPopupVisible;
            this.mPopupView.animate().cancel();
            final ViewPropertyAnimator animate = this.mPopupView.animate();
            float n;
            if (mPopupVisible) {
                n = 1.0f;
            }
            else {
                n = 0.0f;
            }
            final ViewPropertyAnimator alpha = animate.alpha(n);
            int n2;
            if (mPopupVisible) {
                n2 = 200;
            }
            else {
                n2 = 150;
            }
            alpha.setDuration((long)n2).start();
        }
    }
    
    private void calcTouchOffsetAndPrepToFastScroll(final int n, final int n2) {
        final boolean b = true;
        this.mRv.getParent().requestDisallowInterceptTouchEvent(b);
        this.mIsDragging = b;
        if (this.mCanThumbDetach) {
            this.mIsThumbDetached = b;
        }
        this.mTouchOffsetY += n2 - n;
        this.animatePopupVisibility(b);
        this.showActiveScrollbar(b);
    }
    
    private boolean isNearThumb(final int n, final int n2) {
        boolean b = false;
        final int n3 = n2 - this.mRv.getPaddingTop() - this.mThumbOffsetY;
        if (n >= 0 && n < this.getWidth() && n3 >= 0 && n3 <= this.mThumbHeight) {
            b = true;
        }
        return b;
    }
    
    private void setTrackWidth(final int mWidth) {
        if (this.mWidth == mWidth) {
            return;
        }
        this.mWidth = mWidth;
        this.invalidate();
    }
    
    private void showActiveScrollbar(final boolean b) {
        if (this.mWidthAnimator != null) {
            this.mWidthAnimator.cancel();
        }
        final Property track_WIDTH = RecyclerViewFastScroller.TRACK_WIDTH;
        final int[] array = { 0 };
        int n;
        if (b) {
            n = this.mMaxWidth;
        }
        else {
            n = this.mMinWidth;
        }
        array[0] = n;
        (this.mWidthAnimator = ObjectAnimator.ofInt((Object)this, track_WIDTH, array)).setDuration(150L);
        this.mWidthAnimator.start();
    }
    
    private void updateFastScrollSectionNameAndThumbOffset(final int n, final int n2) {
        final int n3 = this.mRv.getScrollbarTrackHeight() - this.mThumbHeight;
        final float mLastTouchY = Math.max(0, Math.min(n3, n2 - this.mTouchOffsetY));
        final String scrollToPositionAtProgress = this.mRv.scrollToPositionAtProgress(mLastTouchY / n3);
        if (!scrollToPositionAtProgress.equals(this.mPopupSectionName)) {
            this.mPopupSectionName = scrollToPositionAtProgress;
            this.mPopupView.setText((CharSequence)scrollToPositionAtProgress);
        }
        this.animatePopupVisibility(scrollToPositionAtProgress.isEmpty() ^ true);
        this.updatePopupY(n);
        this.mLastTouchY = mLastTouchY;
        this.setThumbOffsetY((int)this.mLastTouchY);
    }
    
    private void updatePopupY(final int n) {
        final int height = this.mPopupView.getHeight();
        this.mPopupView.setTranslationY(Utilities.boundToRange(n - height * 0.75f + this.mRv.getPaddingTop(), this.mMaxWidth, this.mRv.getScrollbarTrackHeight() - this.mMaxWidth - height));
    }
    
    public int getThumbHeight() {
        return this.mThumbHeight;
    }
    
    public int getThumbOffsetY() {
        return this.mThumbOffsetY;
    }
    
    public boolean handleTouchEvent(final MotionEvent motionEvent) {
        boolean b = false;
        final int mDownX = (int)motionEvent.getX();
        final int mLastY = (int)motionEvent.getY();
        switch (motionEvent.getAction()) {
            case 0: {
                this.mDownX = mDownX;
                this.mLastY = mLastY;
                this.mDownY = mLastY;
                if (Math.abs(this.mDy) < this.mDeltaThreshold && this.mRv.getScrollState() != 0) {
                    this.mRv.stopScroll();
                }
                if (this.isNearThumb(mDownX, mLastY)) {
                    this.mTouchOffsetY = this.mDownY - this.mThumbOffsetY;
                    break;
                }
                if (FeatureFlags.LAUNCHER3_DIRECT_SCROLL && this.mRv.supportsFastScrolling() && this.isNearScrollBar(this.mDownX)) {
                    this.calcTouchOffsetAndPrepToFastScroll(this.mDownY, this.mLastY);
                    this.updateFastScrollSectionNameAndThumbOffset(this.mLastY, mLastY);
                    break;
                }
                break;
            }
            case 2: {
                this.mLastY = mLastY;
                final boolean mIgnoreDragGesture = this.mIgnoreDragGesture;
                if (Math.abs(mLastY - this.mDownY) > this.mConfig.getScaledPagingTouchSlop()) {
                    b = true;
                }
                this.mIgnoreDragGesture = (b | mIgnoreDragGesture);
                if (!this.mIsDragging && (this.mIgnoreDragGesture ^ true) && this.mRv.supportsFastScrolling() && this.isNearThumb(this.mDownX, this.mLastY) && Math.abs(mLastY - this.mDownY) > this.mConfig.getScaledTouchSlop()) {
                    this.calcTouchOffsetAndPrepToFastScroll(this.mDownY, this.mLastY);
                }
                if (this.mIsDragging) {
                    this.updateFastScrollSectionNameAndThumbOffset(this.mLastY, mLastY);
                    break;
                }
                break;
            }
            case 1:
            case 3: {
                this.mRv.onFastScrollCompleted();
                this.mTouchOffsetY = 0;
                this.mLastTouchY = 0.0f;
                this.mIgnoreDragGesture = false;
                if (this.mIsDragging) {
                    this.animatePopupVisibility(this.mIsDragging = false);
                    this.showActiveScrollbar(false);
                    break;
                }
                break;
            }
        }
        return this.mIsDragging;
    }
    
    public boolean isDraggingThumb() {
        return this.mIsDragging;
    }
    
    public boolean isNearScrollBar(final int n) {
        boolean b = false;
        if (n >= (this.getWidth() - this.mMaxWidth) / 2 && n <= (this.getWidth() + this.mMaxWidth) / 2) {
            b = true;
        }
        return b;
    }
    
    public boolean isThumbDetached() {
        return this.mIsThumbDetached;
    }
    
    public void onDraw(final Canvas canvas) {
        if (this.mThumbOffsetY < 0) {
            return;
        }
        final int save = canvas.save(1);
        canvas.translate((float)(this.getWidth() / 2), (float)this.mRv.getPaddingTop());
        final float n = this.mWidth / 2;
        canvas.drawRoundRect(-n, 0.0f, n, (float)this.mRv.getScrollbarTrackHeight(), (float)this.mWidth, (float)this.mWidth, this.mTrackPaint);
        canvas.translate(0.0f, (float)this.mThumbOffsetY);
        final float n2 = n + this.mThumbPadding;
        final float n3 = this.mWidth + this.mThumbPadding + this.mThumbPadding;
        canvas.drawRoundRect(-n2, 0.0f, n2, (float)this.mThumbHeight, n3, n3, this.mThumbPaint);
        canvas.restoreToCount(save);
    }
    
    public void reattachThumbToScroll() {
        this.mIsThumbDetached = false;
    }
    
    public void setRecyclerView(final BaseRecyclerView mRv, final TextView mPopupView) {
        (this.mRv = mRv).addOnScrollListener(new RecyclerViewFastScroller$2(this));
        (this.mPopupView = mPopupView).setBackground((Drawable)new FastScrollThumbDrawable(this.mThumbPaint, Utilities.isRtl(this.getResources())));
    }
    
    public void setThumbOffsetY(final int mThumbOffsetY) {
        if (this.mThumbOffsetY == mThumbOffsetY) {
            return;
        }
        this.mThumbOffsetY = mThumbOffsetY;
        this.invalidate();
    }
    
    public boolean shouldBlockIntercept(final int n, final int n2) {
        return this.isNearThumb(n, n2);
    }
}

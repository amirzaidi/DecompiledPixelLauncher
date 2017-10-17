// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.View;
import com.android.launcher3.config.FeatureFlags;
import android.view.ViewConfiguration;
import android.view.MotionEvent;
import android.graphics.Canvas;
import android.view.ViewPropertyAnimator;
import android.graphics.Paint$Style;
import com.android.launcher3.util.Themes;
import android.content.res.Resources;
import android.animation.ObjectAnimator;
import android.graphics.Rect;
import android.graphics.Path;
import android.graphics.Paint;
import android.widget.TextView;
import android.util.Property;

public class BaseRecyclerViewFastScrollBar
{
    private static final Property TRACK_WIDTH;
    private boolean mCanThumbDetach;
    private boolean mIgnoreDragGesture;
    private boolean mIsDragging;
    private final boolean mIsRtl;
    private boolean mIsThumbDetached;
    private float mLastTouchY;
    private final int mMaxWidth;
    private final int mMinWidth;
    private String mPopupSectionName;
    private TextView mPopupView;
    private boolean mPopupVisible;
    private final BaseRecyclerView mRv;
    private final int mThumbHeight;
    private int mThumbOffsetY;
    private final Paint mThumbPaint;
    private final Path mThumbPath;
    private final Rect mTmpRect;
    private final int mTouchInset;
    private int mTouchOffsetY;
    private final Paint mTrackPaint;
    private int mWidth;
    private ObjectAnimator mWidthAnimator;
    
    static {
        TRACK_WIDTH = new BaseRecyclerViewFastScrollBar$1(Integer.class, "width");
    }
    
    public BaseRecyclerViewFastScrollBar(final BaseRecyclerView mRv, final Resources resources) {
        this.mTmpRect = new Rect();
        this.mThumbPath = new Path();
        this.mRv = mRv;
        (this.mTrackPaint = new Paint()).setColor(mRv.getFastScrollerTrackColor(-16777216));
        this.mTrackPaint.setAlpha(30);
        (this.mThumbPaint = new Paint()).setAntiAlias(true);
        this.mThumbPaint.setColor(Themes.getColorAccent(mRv.getContext()));
        this.mThumbPaint.setStyle(Paint$Style.FILL);
        final int dimensionPixelSize = resources.getDimensionPixelSize(2131427368);
        this.mMinWidth = dimensionPixelSize;
        this.mWidth = dimensionPixelSize;
        this.mMaxWidth = resources.getDimensionPixelSize(2131427369);
        this.mThumbHeight = resources.getDimensionPixelSize(2131427371);
        this.mTouchInset = resources.getDimensionPixelSize(2131427372);
        this.mIsRtl = Utilities.isRtl(resources);
        this.updateThumbPath();
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
    
    private int getDrawLeft() {
        int n;
        if (this.mIsRtl) {
            n = 0;
        }
        else {
            n = this.mRv.getWidth() - this.mMaxWidth;
        }
        return n;
    }
    
    private void setTrackWidth(final int mWidth) {
        if (this.mWidth == mWidth) {
            return;
        }
        final int drawLeft = this.getDrawLeft();
        this.mRv.invalidate(drawLeft, 0, this.mMaxWidth + drawLeft, this.mRv.getScrollbarTrackHeight());
        this.mWidth = mWidth;
        this.updateThumbPath();
    }
    
    private void showActiveScrollbar(final boolean b) {
        if (this.mWidthAnimator != null) {
            this.mWidthAnimator.cancel();
        }
        final Property track_WIDTH = BaseRecyclerViewFastScrollBar.TRACK_WIDTH;
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
        this.mPopupView.setTranslationY(Math.max(this.mMaxWidth, Math.min(n - height * 1.5f, this.mRv.getScrollbarTrackHeight() - this.mMaxWidth - height)));
    }
    
    private void updateThumbPath() {
        int mWidth;
        if (this.mIsRtl) {
            mWidth = this.mWidth;
        }
        else {
            mWidth = -this.mWidth;
        }
        int mMaxWidth;
        if (this.mIsRtl) {
            mMaxWidth = this.mMaxWidth;
        }
        else {
            mMaxWidth = -this.mMaxWidth;
        }
        this.mThumbPath.reset();
        this.mThumbPath.moveTo(0.0f, 0.0f);
        this.mThumbPath.lineTo(0.0f, (float)this.mThumbHeight);
        this.mThumbPath.lineTo((float)mWidth, (float)this.mThumbHeight);
        this.mThumbPath.cubicTo((float)mWidth, (float)this.mThumbHeight, (float)mMaxWidth, (float)(this.mThumbHeight / 2), (float)mWidth, 0.0f);
        this.mThumbPath.close();
    }
    
    public void draw(final Canvas canvas) {
        if (this.mThumbOffsetY < 0) {
            return;
        }
        final int save = canvas.save(1);
        if (!this.mIsRtl) {
            canvas.translate((float)this.mRv.getWidth(), 0.0f);
        }
        int mWidth;
        if (this.mIsRtl) {
            mWidth = this.mWidth;
        }
        else {
            mWidth = -this.mWidth;
        }
        canvas.drawRect(0.0f, 0.0f, (float)mWidth, (float)this.mRv.getScrollbarTrackHeight(), this.mTrackPaint);
        canvas.translate(0.0f, (float)this.mThumbOffsetY);
        canvas.drawPath(this.mThumbPath, this.mThumbPaint);
        canvas.restoreToCount(save);
    }
    
    public int getThumbHeight() {
        return this.mThumbHeight;
    }
    
    public int getThumbOffsetY() {
        return this.mThumbOffsetY;
    }
    
    public void handleTouchEvent(final MotionEvent motionEvent, final int n, final int n2, final int n3) {
        boolean b = false;
        final ViewConfiguration value = ViewConfiguration.get(this.mRv.getContext());
        final int action = motionEvent.getAction();
        final int n4 = (int)motionEvent.getY();
        switch (action) {
            case 0: {
                if (this.isNearThumb(n, n2)) {
                    this.mTouchOffsetY = n2 - this.mThumbOffsetY;
                    break;
                }
                if (FeatureFlags.LAUNCHER3_DIRECT_SCROLL && this.mRv.supportsFastScrolling() && this.isNearScrollBar(n)) {
                    this.calcTouchOffsetAndPrepToFastScroll(n2, n3);
                    this.updateFastScrollSectionNameAndThumbOffset(n3, n4);
                    break;
                }
                break;
            }
            case 2: {
                final boolean mIgnoreDragGesture = this.mIgnoreDragGesture;
                if (Math.abs(n4 - n2) > value.getScaledPagingTouchSlop()) {
                    b = true;
                }
                this.mIgnoreDragGesture = (b | mIgnoreDragGesture);
                if (!this.mIsDragging && (this.mIgnoreDragGesture ^ true) && this.mRv.supportsFastScrolling() && this.isNearThumb(n, n3) && Math.abs(n4 - n2) > value.getScaledTouchSlop()) {
                    this.calcTouchOffsetAndPrepToFastScroll(n2, n3);
                }
                if (this.mIsDragging) {
                    this.updateFastScrollSectionNameAndThumbOffset(n3, n4);
                    break;
                }
                break;
            }
            case 1:
            case 3: {
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
    }
    
    public boolean isDraggingThumb() {
        return this.mIsDragging;
    }
    
    public boolean isNearScrollBar(final int n) {
        boolean b = false;
        final int drawLeft = this.getDrawLeft();
        if (n >= drawLeft && n <= drawLeft + this.mMaxWidth) {
            b = true;
        }
        return b;
    }
    
    public boolean isNearThumb(final int n, final int n2) {
        final int drawLeft = this.getDrawLeft();
        this.mTmpRect.set(drawLeft, this.mThumbOffsetY, this.mMaxWidth + drawLeft, this.mThumbOffsetY + this.mThumbHeight);
        this.mTmpRect.inset(this.mTouchInset, this.mTouchInset);
        return this.mTmpRect.contains(n, n2);
    }
    
    public boolean isThumbDetached() {
        return this.mIsThumbDetached;
    }
    
    public void reattachThumbToScroll() {
        this.mIsThumbDetached = false;
    }
    
    public void setDetachThumbOnFastScroll() {
        this.mCanThumbDetach = true;
    }
    
    public void setPopupView(final View view) {
        this.mPopupView = (TextView)view;
    }
    
    public void setThumbOffsetY(final int mThumbOffsetY) {
        if (this.mThumbOffsetY == mThumbOffsetY) {
            return;
        }
        final int drawLeft = this.getDrawLeft();
        this.mTmpRect.set(drawLeft, this.mThumbOffsetY, this.mMaxWidth + drawLeft, this.mThumbOffsetY + this.mThumbHeight);
        this.mThumbOffsetY = mThumbOffsetY;
        this.mTmpRect.union(drawLeft, this.mThumbOffsetY, this.mMaxWidth + drawLeft, this.mThumbOffsetY + this.mThumbHeight);
        this.mRv.invalidate(this.mTmpRect);
    }
}

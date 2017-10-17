// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.ViewGroup;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.support.v7.widget.m;
import android.util.AttributeSet;
import android.content.Context;
import android.support.v7.widget.n;
import android.support.v7.widget.RecyclerView;

public abstract class BaseRecyclerView extends RecyclerView implements n
{
    private float mDeltaThreshold;
    private int mDownX;
    private int mDownY;
    int mDy;
    private int mLastY;
    protected final BaseRecyclerViewFastScrollBar mScrollbar;
    
    public BaseRecyclerView(final Context context) {
        this(context, null);
    }
    
    public BaseRecyclerView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public BaseRecyclerView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mDy = 0;
        this.mDeltaThreshold = this.getResources().getDisplayMetrics().density * 4.0f;
        this.mScrollbar = new BaseRecyclerViewFastScrollBar(this, this.getResources());
        this.setOnScrollListener(new BaseRecyclerView$ScrollListener(this));
    }
    
    private boolean handleTouchEvent(final MotionEvent motionEvent) {
        final int action = motionEvent.getAction();
        final int mDownX = (int)motionEvent.getX();
        final int mLastY = (int)motionEvent.getY();
        switch (action) {
            case 0: {
                this.mDownX = mDownX;
                this.mLastY = mLastY;
                this.mDownY = mLastY;
                if (this.shouldStopScroll(motionEvent)) {
                    this.stopScroll();
                }
                this.mScrollbar.handleTouchEvent(motionEvent, this.mDownX, this.mDownY, this.mLastY);
                break;
            }
            case 2: {
                this.mLastY = mLastY;
                this.mScrollbar.handleTouchEvent(motionEvent, this.mDownX, this.mDownY, this.mLastY);
                break;
            }
            case 1:
            case 3: {
                this.onFastScrollCompleted();
                this.mScrollbar.handleTouchEvent(motionEvent, this.mDownX, this.mDownY, this.mLastY);
                break;
            }
        }
        return this.mScrollbar.isDraggingThumb();
    }
    
    protected void dispatchDraw(final Canvas canvas) {
        super.dispatchDraw(canvas);
        this.onUpdateScrollbar(0);
        this.mScrollbar.draw(canvas);
    }
    
    protected int getAvailableScrollBarHeight() {
        return this.getScrollbarTrackHeight() - this.mScrollbar.getThumbHeight();
    }
    
    public abstract int getCurrentScrollY();
    
    public int getFastScrollerTrackColor(final int n) {
        return n;
    }
    
    public BaseRecyclerViewFastScrollBar getScrollBar() {
        return this.mScrollbar;
    }
    
    protected int getScrollbarTrackHeight() {
        return this.getHeight();
    }
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mScrollbar.setPopupView(((ViewGroup)this.getParent()).findViewById(2131623978));
    }
    
    protected void onFastScrollCompleted() {
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.addOnItemTouchListener(this);
    }
    
    public boolean onInterceptTouchEvent(final RecyclerView recyclerView, final MotionEvent motionEvent) {
        return this.handleTouchEvent(motionEvent);
    }
    
    public void onRequestDisallowInterceptTouchEvent(final boolean b) {
    }
    
    public void onTouchEvent(final RecyclerView recyclerView, final MotionEvent motionEvent) {
        this.handleTouchEvent(motionEvent);
    }
    
    protected abstract void onUpdateScrollbar(final int p0);
    
    public void reset() {
        this.mScrollbar.reattachThumbToScroll();
    }
    
    protected abstract String scrollToPositionAtProgress(final float p0);
    
    protected boolean shouldStopScroll(final MotionEvent motionEvent) {
        return motionEvent.getAction() == 0 && Math.abs(this.mDy) < this.mDeltaThreshold && this.getScrollState() != 0;
    }
    
    protected boolean supportsFastScrolling() {
        return true;
    }
    
    protected void synchronizeScrollBarThumbOffsetToViewScroll(final int n, final int n2) {
        if (n2 <= 0) {
            this.mScrollbar.setThumbOffsetY(-1);
            return;
        }
        this.mScrollbar.setThumbOffsetY(n / n2 * this.getAvailableScrollBarHeight());
    }
}

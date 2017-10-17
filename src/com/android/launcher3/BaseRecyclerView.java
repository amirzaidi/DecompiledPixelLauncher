// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.widget.TextView;
import android.view.ViewGroup;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.views.RecyclerViewFastScroller;
import android.support.v7.widget.n;
import android.support.v7.widget.RecyclerView;

public abstract class BaseRecyclerView extends RecyclerView implements n
{
    protected RecyclerViewFastScroller mScrollbar;
    
    public BaseRecyclerView(final Context context) {
        this(context, null);
    }
    
    public BaseRecyclerView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public BaseRecyclerView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
    }
    
    private boolean handleTouchEvent(final MotionEvent motionEvent) {
        final int n = this.getLeft() - this.mScrollbar.getLeft();
        final int n2 = this.getTop() - this.mScrollbar.getTop();
        motionEvent.offsetLocation((float)n, (float)n2);
        try {
            return this.mScrollbar.handleTouchEvent(motionEvent);
        }
        finally {
            motionEvent.offsetLocation((float)(-n), (float)(-n2));
        }
    }
    
    protected void dispatchDraw(final Canvas canvas) {
        this.onUpdateScrollbar(0);
        super.dispatchDraw(canvas);
    }
    
    protected int getAvailableScrollBarHeight() {
        return this.getScrollbarTrackHeight() - this.mScrollbar.getThumbHeight();
    }
    
    public abstract int getCurrentScrollY();
    
    public RecyclerViewFastScroller getScrollBar() {
        return this.mScrollbar;
    }
    
    public int getScrollbarTrackHeight() {
        return this.getHeight() - this.getPaddingTop() - this.getPaddingBottom();
    }
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        final ViewGroup viewGroup = (ViewGroup)this.getParent();
        (this.mScrollbar = (RecyclerViewFastScroller)viewGroup.findViewById(2131623991)).setRecyclerView(this, (TextView)viewGroup.findViewById(2131623990));
    }
    
    public void onFastScrollCompleted() {
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
    
    public abstract void onUpdateScrollbar(final int p0);
    
    public abstract String scrollToPositionAtProgress(final float p0);
    
    public boolean supportsFastScrolling() {
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

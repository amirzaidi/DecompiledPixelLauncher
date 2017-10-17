// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.widget;

import android.support.v7.widget.q;
import android.support.v7.widget.p;
import android.support.v7.widget.N;
import android.support.v7.widget.n;
import android.view.View;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.BaseRecyclerView;

public class WidgetsRecyclerView extends BaseRecyclerView
{
    private WidgetsListAdapter mAdapter;
    
    public WidgetsRecyclerView(final Context context) {
        this(context, null);
    }
    
    public WidgetsRecyclerView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public WidgetsRecyclerView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
    }
    
    public WidgetsRecyclerView(final Context context, final AttributeSet set, final int n, final int n2) {
        this(context, set, n);
    }
    
    private boolean isModelNotReady() {
        boolean b = false;
        if (this.mAdapter.getItemCount() == 0) {
            b = true;
        }
        return b;
    }
    
    protected int getAvailableScrollHeight() {
        return this.getChildAt(0).getMeasuredHeight() * this.mAdapter.getItemCount() + this.getPaddingTop() + this.getPaddingBottom() - this.getScrollbarTrackHeight();
    }
    
    public int getCurrentScrollY() {
        if (this.isModelNotReady() || this.getChildCount() == 0) {
            return -1;
        }
        final View child = this.getChildAt(0);
        return this.getChildPosition(child) * child.getMeasuredHeight() + this.getPaddingTop() - this.getLayoutManager().getDecoratedTop(child);
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.addOnItemTouchListener(this);
        this.setLayoutManager(new N(this.getContext()));
    }
    
    public void onUpdateScrollbar(final int n) {
        if (this.isModelNotReady()) {
            return;
        }
        final int currentScrollY = this.getCurrentScrollY();
        if (currentScrollY < 0) {
            this.mScrollbar.setThumbOffsetY(-1);
            return;
        }
        this.synchronizeScrollBarThumbOffsetToViewScroll(currentScrollY, this.getAvailableScrollHeight());
    }
    
    public String scrollToPositionAtProgress(final float n) {
        final float n2 = 1.0f;
        if (this.isModelNotReady()) {
            return "";
        }
        this.stopScroll();
        final float n3 = this.mAdapter.getItemCount() * n;
        ((N)this.getLayoutManager()).scrollToPositionWithOffset(0, (int)(-(this.getAvailableScrollHeight() * n)));
        float n4;
        if (n == n2) {
            n4 = n3 - n2;
        }
        else {
            n4 = n3;
        }
        return this.mAdapter.getSectionName((int)n4);
    }
    
    public void setAdapter(final q adapter) {
        super.setAdapter(adapter);
        this.mAdapter = (WidgetsListAdapter)adapter;
    }
}

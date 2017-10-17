// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.m;

class BaseRecyclerView$ScrollListener extends m
{
    final /* synthetic */ BaseRecyclerView this$0;
    
    public BaseRecyclerView$ScrollListener(final BaseRecyclerView this$0) {
        this.this$0 = this$0;
    }
    
    public void onScrolled(final RecyclerView recyclerView, final int n, final int mDy) {
        this.this$0.mDy = mDy;
        this.this$0.onUpdateScrollbar(mDy);
    }
}

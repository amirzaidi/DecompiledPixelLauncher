// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import com.android.launcher3.BaseRecyclerView;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.m;
import com.android.launcher3.Utilities;
import android.graphics.Outline;
import android.view.View;
import android.content.res.Resources;
import android.view.ViewOutlineProvider;

final class HeaderElevationController$1 extends ViewOutlineProvider
{
    final /* synthetic */ HeaderElevationController this$0;
    final /* synthetic */ Resources val$res;
    
    HeaderElevationController$1(final HeaderElevationController this$0, final Resources val$res) {
        this.this$0 = this$0;
        this.val$res = val$res;
    }
    
    public void getOutline(final View view, final Outline outline) {
        final int left = ((View)this.this$0.mHeader.getParent()).getLeft();
        final int top = view.getTop();
        final int n = view.getWidth() + left;
        final int bottom = view.getBottom();
        final int pxFromDp = Utilities.pxFromDp(this.this$0.mMaxElevation, this.val$res.getDisplayMetrics());
        outline.setRect(left - pxFromDp, top - pxFromDp, n + pxFromDp, bottom);
    }
}

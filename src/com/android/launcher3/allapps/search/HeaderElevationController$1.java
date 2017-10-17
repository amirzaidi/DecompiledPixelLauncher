// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps.search;

import com.android.launcher3.BaseRecyclerView;
import android.support.v7.widget.RecyclerView;
import android.content.res.Resources;
import android.view.ViewGroup;
import android.support.v7.widget.m;
import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

final class HeaderElevationController$1 extends ViewOutlineProvider
{
    final /* synthetic */ HeaderElevationController this$0;
    
    HeaderElevationController$1(final HeaderElevationController this$0) {
        this.this$0 = this$0;
    }
    
    public void getOutline(final View view, final Outline outline) {
        final int n = -view.getLeft();
        final int n2 = -view.getTop();
        final int n3 = view.getWidth() - n;
        final int height = view.getHeight();
        final int n4 = (int)this.this$0.mMaxElevation;
        outline.setRect(n - n4, n2 - n4, n3 + n4, height);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps.search;

import com.android.launcher3.BaseRecyclerView;
import android.support.v7.widget.RecyclerView;
import android.content.res.Resources;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.View;
import android.support.v7.widget.m;

public class HeaderElevationController extends m
{
    private int mCurrentY;
    private final View mHeader;
    private final View mHeaderChild;
    private final float mMaxElevation;
    private final float mScrollToElevation;
    
    public HeaderElevationController(final View mHeader) {
        this.mCurrentY = 0;
        this.mHeader = mHeader;
        final Resources resources = this.mHeader.getContext().getResources();
        this.mMaxElevation = resources.getDimension(2131427398);
        this.mScrollToElevation = resources.getDimension(2131427399);
        this.mHeader.setOutlineProvider((ViewOutlineProvider)new HeaderElevationController$1(this));
        this.mHeaderChild = ((ViewGroup)this.mHeader).getChildAt(0);
    }
    
    private void onScroll(final int n) {
        final float elevation = Math.min(n, this.mScrollToElevation) / this.mScrollToElevation * this.mMaxElevation;
        if (Float.compare(this.mHeader.getElevation(), elevation) != 0) {
            this.mHeader.setElevation(elevation);
            final int min = Math.min(this.mHeader.getHeight(), n);
            this.mHeader.setTranslationY((float)(-min));
            this.mHeaderChild.setTranslationY((float)min);
        }
    }
    
    public final void onScrolled(final RecyclerView recyclerView, final int n, final int n2) {
        this.onScroll(this.mCurrentY = ((BaseRecyclerView)recyclerView).getCurrentScrollY());
    }
    
    public void reset() {
        this.onScroll(this.mCurrentY = 0);
    }
}

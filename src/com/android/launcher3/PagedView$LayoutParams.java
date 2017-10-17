// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.util.AttributeSet;
import android.content.Context;
import android.view.ViewGroup$LayoutParams;

public class PagedView$LayoutParams extends ViewGroup$LayoutParams
{
    public boolean isFullScreenPage;
    public boolean matchStartEdge;
    
    public PagedView$LayoutParams(final int n, final int n2) {
        super(n, n2);
        this.isFullScreenPage = false;
        this.matchStartEdge = false;
    }
    
    public PagedView$LayoutParams(final Context context, final AttributeSet set) {
        super(context, set);
        this.isFullScreenPage = false;
        this.matchStartEdge = false;
    }
    
    public PagedView$LayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        super(viewGroup$LayoutParams);
        this.isFullScreenPage = false;
        this.matchStartEdge = false;
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import com.android.launcher3.BaseRecyclerView;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.m;

class c extends m
{
    final /* synthetic */ AllAppsQsbLayout bY;
    
    private c(final AllAppsQsbLayout by) {
        this.bY = by;
    }
    
    public final void onScrolled(final RecyclerView recyclerView, final int n, final int n2) {
        this.bY.bv(((BaseRecyclerView)recyclerView).getCurrentScrollY());
    }
}

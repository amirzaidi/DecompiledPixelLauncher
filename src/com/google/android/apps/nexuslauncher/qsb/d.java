// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.view.ViewGroup$MarginLayoutParams;
import com.android.launcher3.Launcher;
import android.view.View;
import com.android.launcher3.allapps.SearchUiManager$OnScrollRangeChangeListener;
import android.view.View$OnLayoutChangeListener;

class d implements View$OnLayoutChangeListener
{
    private final SearchUiManager$OnScrollRangeChangeListener bZ;
    final /* synthetic */ AllAppsQsbLayout ca;
    
    d(final AllAppsQsbLayout ca, final SearchUiManager$OnScrollRangeChangeListener bz) {
        this.ca = ca;
        this.bZ = bz;
    }
    
    public void onLayoutChange(final View view, final int n, final int n2, final int n3, final int n4, final int n5, final int n6, final int n7, final int n8) {
        if (this.ca.cb.getDeviceProfile().isVerticalBarLayout()) {
            this.bZ.onScrollRangeChanged(n4);
            return;
        }
        this.bZ.onScrollRangeChanged(n4 - HotseatQsbWidget.bH(this.ca.cb) - (((ViewGroup$MarginLayoutParams)this.ca.getLayoutParams()).topMargin + (int)this.ca.getTranslationY() + this.ca.getResources().getDimensionPixelSize(2131427501)));
    }
}

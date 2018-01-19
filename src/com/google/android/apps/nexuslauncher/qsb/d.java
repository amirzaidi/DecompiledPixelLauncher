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
    private final SearchUiManager$OnScrollRangeChangeListener cD;
    final /* synthetic */ AllAppsQsbLayout cE;
    
    d(final AllAppsQsbLayout ce, final SearchUiManager$OnScrollRangeChangeListener cd) {
        this.cE = ce;
        this.cD = cd;
    }
    
    public void onLayoutChange(final View view, final int n, final int n2, final int n3, final int n4, final int n5, final int n6, final int n7, final int n8) {
        if (this.cE.cr.getDeviceProfile().isVerticalBarLayout()) {
            this.cD.onScrollRangeChanged(n4);
            return;
        }
        this.cD.onScrollRangeChanged(n4 - HotseatQsbWidget.ck(this.cE.cr) - (((ViewGroup$MarginLayoutParams)this.cE.getLayoutParams()).topMargin + (int)this.cE.getTranslationY() + this.cE.getResources().getDimensionPixelSize(2131427502)));
    }
}

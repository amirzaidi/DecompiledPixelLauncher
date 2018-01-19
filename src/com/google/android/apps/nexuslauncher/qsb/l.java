// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.view.KeyEvent;
import com.android.launcher3.util.Themes;
import com.android.launcher3.dynamicui.WallpaperColorInfo;
import android.support.v7.widget.m;
import android.graphics.Canvas;
import com.android.launcher3.Utilities;
import com.android.launcher3.CellLayout;
import android.view.View$OnLayoutChangeListener;
import com.android.launcher3.allapps.SearchUiManager$OnScrollRangeChangeListener;
import android.view.View;
import android.view.ViewGroup;
import android.view.View$OnClickListener;
import android.util.AttributeSet;
import android.content.Context;
import android.support.a.b;
import com.android.launcher3.allapps.AlphabeticalAppsList;
import com.android.launcher3.allapps.AllAppsRecyclerView;
import android.graphics.Bitmap;
import com.android.launcher3.dynamicui.WallpaperColorInfo$OnChangeListener;
import com.android.launcher3.allapps.SearchUiManager;
import android.support.a.a;

final class l extends a
{
    final /* synthetic */ AllAppsQsbLayout df;
    
    l(final AllAppsQsbLayout df, final String s) {
        this.df = df;
        super(s);
    }
    
    public float dg(final AllAppsQsbLayout allAppsQsbLayout) {
        return allAppsQsbLayout.getTranslationY() + this.df.cz;
    }
    
    public void dh(final AllAppsQsbLayout allAppsQsbLayout, final float n) {
        allAppsQsbLayout.setTranslationY(this.df.cz + n);
    }
}

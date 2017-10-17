// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.view.KeyEvent;
import android.support.v4.b.a;
import com.android.launcher3.util.Themes;
import com.android.launcher3.dynamicui.WallpaperColorInfo;
import android.support.v7.widget.m;
import android.graphics.Canvas;
import com.android.launcher3.CellLayout;
import com.android.launcher3.Utilities;
import android.view.View$OnLayoutChangeListener;
import com.android.launcher3.allapps.SearchUiManager$OnScrollRangeChangeListener;
import android.view.View;
import android.view.ViewGroup;
import android.view.View$OnClickListener;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.allapps.AlphabeticalAppsList;
import android.graphics.Bitmap;
import com.android.launcher3.allapps.AllAppsRecyclerView;
import com.android.launcher3.dynamicui.WallpaperColorInfo$OnChangeListener;
import com.android.launcher3.allapps.SearchUiManager;

public class AllAppsQsbLayout extends e implements SearchUiManager, WallpaperColorInfo$OnChangeListener
{
    private AllAppsRecyclerView bU;
    private FallbackAppsSearchView bV;
    private int bW;
    private Bitmap bX;
    private AlphabeticalAppsList mApps;
    
    public AllAppsQsbLayout(final Context context) {
        this(context, null);
    }
    
    public AllAppsQsbLayout(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public AllAppsQsbLayout(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.bW = 0;
        this.setOnClickListener((View$OnClickListener)this);
    }
    
    private void bx() {
        if (this.bV != null) {
            this.bV.showKeyboard();
            return;
        }
        this.setOnClickListener((View$OnClickListener)null);
        (this.bV = (FallbackAppsSearchView)this.cb.getLayoutInflater().inflate(2130968584, (ViewGroup)this, false)).bu(this, this.mApps, this.bU);
        this.addView((View)this.bV);
        this.bV.showKeyboard();
    }
    
    public void addOnScrollRangeChangeListener(final SearchUiManager$OnScrollRangeChangeListener searchUiManager$OnScrollRangeChangeListener) {
        this.cb.getHotseat().addOnLayoutChangeListener((View$OnLayoutChangeListener)new d(this, searchUiManager$OnScrollRangeChangeListener));
    }
    
    void bv(final int n) {
        final int boundToRange = Utilities.boundToRange(n, 0, 255);
        if (this.bW != boundToRange) {
            this.bW = boundToRange;
            this.invalidate();
        }
    }
    
    protected int bw(final int n) {
        if (this.cb.getDeviceProfile().isVerticalBarLayout()) {
            return n - this.bU.getPaddingLeft() - this.bU.getPaddingRight();
        }
        final CellLayout layout = this.cb.getHotseat().getLayout();
        return n - ((View)layout).getPaddingLeft() - ((View)layout).getPaddingRight();
    }
    
    protected void by() {
    }
    
    public void draw(final Canvas canvas) {
        if (this.bW > 0) {
            if (this.bX == null) {
                this.bX = this.bB(this.getResources().getDimension(2131427498), this.getResources().getDimension(2131427499), 0);
            }
            this.mShadowPaint.setAlpha(this.bW);
            this.bC(this.bX, canvas);
            this.mShadowPaint.setAlpha(255);
        }
        super.draw(canvas);
    }
    
    public void initialize(final AlphabeticalAppsList mApps, final AllAppsRecyclerView bu) {
        this.mApps = mApps;
        bu.setPadding(bu.getPaddingLeft(), this.getLayoutParams().height / 2 + this.getResources().getDimensionPixelSize(2131427502), bu.getPaddingRight(), bu.getPaddingBottom());
        bu.addOnScrollListener(new c(this, null));
        this.bU = bu;
    }
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        final WallpaperColorInfo instance = WallpaperColorInfo.getInstance(this.getContext());
        instance.addOnChangeListener(this);
        this.onExtractedColorsChanged(instance);
    }
    
    public void onClick(final View view) {
        super.onClick(view);
        if (view == this) {
            this.bA(4);
            final f f = new f(this, true);
            if (!this.cb.dY().startSearch(f.build(), f.getExtras())) {
                this.bx();
            }
        }
    }
    
    protected void onDetachedFromWindow() {
        WallpaperColorInfo.getInstance(this.getContext()).removeOnChangeListener(this);
        super.onDetachedFromWindow();
    }
    
    public void onExtractedColorsChanged(final WallpaperColorInfo wallpaperColorInfo) {
        int n;
        if (Themes.getAttrBoolean((Context)this.cb, 2130772010)) {
            n = -335544321;
        }
        else {
            n = -855638017;
        }
        this.bz(a.asf(a.asf(n, Themes.getAttrColor((Context)this.cb, 2130772006)), wallpaperColorInfo.getMainColor()));
    }
    
    public void preDispatchKeyEvent(final KeyEvent keyEvent) {
    }
    
    public void refreshSearchResult() {
        if (this.bV != null) {
            this.bV.refreshSearchResult();
        }
    }
    
    public void reset() {
        this.bv(0);
        if (this.bV != null) {
            this.bV.clearSearchResult();
            this.setOnClickListener((View$OnClickListener)this);
            this.removeView((View)this.bV);
            this.bV = null;
        }
    }
}

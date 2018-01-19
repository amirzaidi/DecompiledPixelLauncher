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

public class AllAppsQsbLayout extends a implements SearchUiManager, WallpaperColorInfo$OnChangeListener
{
    private int cA;
    private Bitmap cB;
    private AllAppsRecyclerView cx;
    private FallbackAppsSearchView cy;
    private float cz;
    private AlphabeticalAppsList mApps;
    private b mSpring;
    
    public AllAppsQsbLayout(final Context context) {
        this(context, null);
    }
    
    public AllAppsQsbLayout(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public AllAppsQsbLayout(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.cA = 0;
        this.setOnClickListener((View$OnClickListener)this);
        this.cz = this.getTranslationY();
        this.mSpring = new b(this, new l(this, "allAppsQsbLayoutSpringAnimation"), 0.0f);
    }
    
    private void ci() {
        if (this.cy != null) {
            this.cy.showKeyboard();
            return;
        }
        this.setOnClickListener((View$OnClickListener)null);
        (this.cy = (FallbackAppsSearchView)this.cr.getLayoutInflater().inflate(2130968584, (ViewGroup)this, false)).cg(this, this.mApps, this.cx);
        this.addView((View)this.cy);
        this.cy.showKeyboard();
    }
    
    public void addOnScrollRangeChangeListener(final SearchUiManager$OnScrollRangeChangeListener searchUiManager$OnScrollRangeChangeListener) {
        this.cr.getHotseat().addOnLayoutChangeListener((View$OnLayoutChangeListener)new d(this, searchUiManager$OnScrollRangeChangeListener));
    }
    
    protected int bY(final int n) {
        if (this.cr.getDeviceProfile().isVerticalBarLayout()) {
            return n - this.cx.getPaddingLeft() - this.cx.getPaddingRight();
        }
        final CellLayout layout = this.cr.getHotseat().getLayout();
        return n - ((View)layout).getPaddingLeft() - ((View)layout).getPaddingRight();
    }
    
    void ch(final int n) {
        final int boundToRange = Utilities.boundToRange(n, 0, 255);
        if (this.cA != boundToRange) {
            this.cA = boundToRange;
            this.invalidate();
        }
    }
    
    public void draw(final Canvas canvas) {
        if (this.cA > 0) {
            if (this.cB == null) {
                this.cB = this.bX(this.getResources().getDimension(2131427499), this.getResources().getDimension(2131427500), 0);
            }
            this.mShadowPaint.setAlpha(this.cA);
            this.bW(this.cB, canvas);
            this.mShadowPaint.setAlpha(255);
        }
        super.draw(canvas);
    }
    
    public b getSpringForFling() {
        return this.mSpring;
    }
    
    public void initialize(final AlphabeticalAppsList mApps, final AllAppsRecyclerView cx) {
        this.mApps = mApps;
        cx.setPadding(cx.getPaddingLeft(), this.getLayoutParams().height / 2 + this.getResources().getDimensionPixelSize(2131427503), cx.getPaddingRight(), cx.getPaddingBottom());
        cx.addOnScrollListener(new c(this, null));
        cx.setVerticalFadingEdgeEnabled(true);
        this.cx = cx;
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
            this.ca(4);
            final h h = new h(this, true);
            if (!this.cr.ff().startSearch(h.build(), h.getExtras())) {
                this.ci();
            }
        }
    }
    
    protected void onDetachedFromWindow() {
        WallpaperColorInfo.getInstance(this.getContext()).removeOnChangeListener(this);
        super.onDetachedFromWindow();
    }
    
    public void onExtractedColorsChanged(final WallpaperColorInfo wallpaperColorInfo) {
        int n;
        if (Themes.getAttrBoolean((Context)this.cr, 2130772011)) {
            n = -335544321;
        }
        else {
            n = -855638017;
        }
        this.cb(android.support.v4.b.a.aeG(android.support.v4.b.a.aeG(n, Themes.getAttrColor((Context)this.cr, 2130772006)), wallpaperColorInfo.getMainColor()));
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        super.onLayout(b, n, n2, n3, n4);
        final View view = (View)this.getParent();
        this.setTranslationX((float)(view.getPaddingLeft() + (view.getWidth() - view.getPaddingLeft() - view.getPaddingRight() - (n3 - n)) / 2 - n));
    }
    
    public void preDispatchKeyEvent(final KeyEvent keyEvent) {
    }
    
    public void refreshSearchResult() {
        if (this.cy != null) {
            this.cy.refreshSearchResult();
        }
    }
    
    public void reset() {
        this.ch(0);
        if (this.cy != null) {
            this.cy.clearSearchResult();
            this.setOnClickListener((View$OnClickListener)this);
            this.removeView((View)this.cy);
            this.cy = null;
        }
    }
}

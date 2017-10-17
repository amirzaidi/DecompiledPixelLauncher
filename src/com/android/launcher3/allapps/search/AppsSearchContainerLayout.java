// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps.search;

import android.text.Editable;
import android.text.method.TextKeyListener;
import android.view.KeyEvent;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.DeviceProfile;
import android.widget.FrameLayout$LayoutParams;
import com.android.launcher3.graphics.TintedDrawableSpan;
import android.text.SpannableString;
import android.support.v7.widget.m;
import java.util.ArrayList;
import android.view.View$OnLayoutChangeListener;
import com.android.launcher3.allapps.SearchUiManager$OnScrollRangeChangeListener;
import android.text.Spannable;
import android.text.Selection;
import android.util.AttributeSet;
import android.content.Context;
import android.text.SpannableStringBuilder;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.Launcher;
import android.view.View;
import com.android.launcher3.allapps.AllAppsRecyclerView;
import com.android.launcher3.allapps.AlphabeticalAppsList;
import com.android.launcher3.allapps.AllAppsGridAdapter;
import com.android.launcher3.allapps.SearchUiManager;
import android.widget.FrameLayout;

public class AppsSearchContainerLayout extends FrameLayout implements SearchUiManager, AllAppsSearchBarController$Callbacks
{
    private AllAppsGridAdapter mAdapter;
    private AlphabeticalAppsList mApps;
    private AllAppsRecyclerView mAppsRecyclerView;
    private View mDivider;
    private HeaderElevationController mElevationController;
    private final Launcher mLauncher;
    private final int mMinHeight;
    private final AllAppsSearchBarController mSearchBarController;
    private final int mSearchBoxHeight;
    private ExtendedEditText mSearchInput;
    private final SpannableStringBuilder mSearchQueryBuilder;
    
    public AppsSearchContainerLayout(final Context context) {
        this(context, null);
    }
    
    public AppsSearchContainerLayout(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public AppsSearchContainerLayout(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mLauncher = Launcher.getLauncher(context);
        this.mMinHeight = this.getResources().getDimensionPixelSize(2131427389);
        this.mSearchBoxHeight = this.getResources().getDimensionPixelSize(2131427388);
        this.mSearchBarController = new AllAppsSearchBarController();
        Selection.setSelection((Spannable)(this.mSearchQueryBuilder = new SpannableStringBuilder()), 0);
    }
    
    private void notifyResultChanged() {
        this.mElevationController.reset();
        this.mAppsRecyclerView.onSearchResultsChanged();
    }
    
    public void addOnScrollRangeChangeListener(final SearchUiManager$OnScrollRangeChangeListener searchUiManager$OnScrollRangeChangeListener) {
        this.mLauncher.getHotseat().addOnLayoutChangeListener((View$OnLayoutChangeListener)new AppsSearchContainerLayout$1(this, searchUiManager$OnScrollRangeChangeListener));
    }
    
    public void clearSearchResult() {
        if (this.mApps.setOrderedFilter(null)) {
            this.notifyResultChanged();
        }
        this.mSearchQueryBuilder.clear();
        this.mSearchQueryBuilder.clearSpans();
        Selection.setSelection((Spannable)this.mSearchQueryBuilder, 0);
    }
    
    public void initialize(final AlphabeticalAppsList mApps, final AllAppsRecyclerView mAppsRecyclerView) {
        this.mApps = mApps;
        (this.mAppsRecyclerView = mAppsRecyclerView).addOnScrollListener(this.mElevationController);
        this.mAdapter = (AllAppsGridAdapter)this.mAppsRecyclerView.getAdapter();
        this.mSearchBarController.initialize(new DefaultAppSearchAlgorithm(mApps.getApps()), this.mSearchInput, this.mLauncher, this);
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mSearchInput = (ExtendedEditText)this.findViewById(2131624044);
        this.mDivider = this.findViewById(2131624045);
        this.mElevationController = new HeaderElevationController(this.mDivider);
        final SpannableString hint = new SpannableString((CharSequence)("  " + this.mSearchInput.getHint()));
        hint.setSpan((Object)new TintedDrawableSpan(this.getContext(), 2130837564), 0, 1, 34);
        this.mSearchInput.setHint((CharSequence)hint);
        final DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        if (!deviceProfile.isVerticalBarLayout()) {
            final FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams)this.mDivider.getLayoutParams();
            final int edgeMarginPx = deviceProfile.edgeMarginPx;
            frameLayout$LayoutParams.rightMargin = edgeMarginPx;
            frameLayout$LayoutParams.leftMargin = edgeMarginPx;
        }
    }
    
    protected void onMeasure(final int n, final int n2) {
        if (FeatureFlags.LAUNCHER3_ALL_APPS_PULL_UP && (this.mLauncher.getDeviceProfile().isVerticalBarLayout() ^ true)) {
            this.getLayoutParams().height = this.mLauncher.getDragLayer().getInsets().top + this.mMinHeight;
        }
        super.onMeasure(n, n2);
    }
    
    public void onSearchResult(final String lastSearchQuery, final ArrayList orderedFilter) {
        if (orderedFilter != null) {
            this.mApps.setOrderedFilter(orderedFilter);
            this.notifyResultChanged();
            this.mAdapter.setLastSearchQuery(lastSearchQuery);
        }
    }
    
    public void preDispatchKeyEvent(final KeyEvent keyEvent) {
        boolean b = false;
        if (!this.mSearchBarController.isSearchFieldFocused() && keyEvent.getAction() == 0) {
            final int unicodeChar = keyEvent.getUnicodeChar();
            if (unicodeChar > 0 && (Character.isWhitespace(unicodeChar) ^ true)) {
                b = (Character.isSpaceChar(unicodeChar) ^ true);
            }
            if (b && TextKeyListener.getInstance().onKeyDown((View)this, (Editable)this.mSearchQueryBuilder, keyEvent.getKeyCode(), keyEvent) && this.mSearchQueryBuilder.length() > 0) {
                this.mSearchBarController.focusSearchField();
            }
        }
    }
    
    public void refreshSearchResult() {
        this.mSearchBarController.refreshSearchResult();
    }
    
    public void reset() {
        this.mElevationController.reset();
        this.mSearchBarController.reset();
    }
}

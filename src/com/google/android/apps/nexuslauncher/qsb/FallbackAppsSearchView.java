// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import java.util.ArrayList;
import com.android.launcher3.allapps.search.SearchAlgorithm;
import com.android.launcher3.Launcher;
import com.google.android.apps.nexuslauncher.search.d;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.allapps.search.AllAppsSearchBarController;
import com.android.launcher3.allapps.AllAppsRecyclerView;
import com.android.launcher3.allapps.AlphabeticalAppsList;
import com.android.launcher3.allapps.AllAppsGridAdapter;
import com.android.launcher3.allapps.search.AllAppsSearchBarController$Callbacks;
import com.android.launcher3.ExtendedEditText;

public class FallbackAppsSearchView extends ExtendedEditText implements AllAppsSearchBarController$Callbacks
{
    private AllAppsQsbLayout cw;
    private AllAppsGridAdapter mAdapter;
    private AlphabeticalAppsList mApps;
    private AllAppsRecyclerView mAppsRecyclerView;
    private final AllAppsSearchBarController mSearchBarController;
    
    public FallbackAppsSearchView(final Context context) {
        this(context, null);
    }
    
    public FallbackAppsSearchView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public FallbackAppsSearchView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mSearchBarController = new AllAppsSearchBarController();
    }
    
    private void notifyResultChanged() {
        this.cw.ch(0);
        this.mAppsRecyclerView.onSearchResultsChanged();
    }
    
    public void cg(final AllAppsQsbLayout cw, final AlphabeticalAppsList mApps, final AllAppsRecyclerView mAppsRecyclerView) {
        this.cw = cw;
        this.mApps = mApps;
        this.mAppsRecyclerView = mAppsRecyclerView;
        this.mAdapter = (AllAppsGridAdapter)this.mAppsRecyclerView.getAdapter();
        this.mSearchBarController.initialize(new d(this.getContext()), this, Launcher.getLauncher(this.getContext()), this);
    }
    
    public void clearSearchResult() {
        if (this.getParent() != null && this.mApps.setOrderedFilter(null)) {
            this.notifyResultChanged();
        }
    }
    
    public void onSearchResult(final String lastSearchQuery, final ArrayList orderedFilter) {
        if (orderedFilter != null && this.getParent() != null) {
            this.mApps.setOrderedFilter(orderedFilter);
            this.notifyResultChanged();
            this.mAdapter.setLastSearchQuery(lastSearchQuery);
        }
    }
    
    public void refreshSearchResult() {
        this.mSearchBarController.refreshSearchResult();
    }
}

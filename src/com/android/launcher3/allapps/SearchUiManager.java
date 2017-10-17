// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import android.view.KeyEvent;

public interface SearchUiManager
{
    void addOnScrollRangeChangeListener(final SearchUiManager$OnScrollRangeChangeListener p0);
    
    void initialize(final AlphabeticalAppsList p0, final AllAppsRecyclerView p1);
    
    void preDispatchKeyEvent(final KeyEvent p0);
    
    void refreshSearchResult();
    
    void reset();
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import java.util.Map;
import java.util.TreeMap;
import com.android.launcher3.util.LabelComparator;
import java.util.Locale;
import java.util.Collection;
import java.util.Iterator;
import java.util.Comparator;
import java.util.Collections;
import com.android.launcher3.discovery.AppDiscoveryAppInfo;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.AppInfo;
import android.content.Context;
import com.android.launcher3.Launcher;
import com.android.launcher3.compat.AlphabeticIndexCompat;
import java.util.HashMap;
import java.util.List;
import com.android.launcher3.discovery.AppDiscoveryUpdateState;
import java.util.ArrayList;

public class AlphabeticalAppsList
{
    private AllAppsGridAdapter mAdapter;
    private final ArrayList mAdapterItems;
    private AppDiscoveryUpdateState mAppDiscoveryUpdateState;
    private AppInfoComparator mAppNameComparator;
    private final List mApps;
    private HashMap mCachedSectionNames;
    private final HashMap mComponentToAppMap;
    private final List mDiscoveredApps;
    private final int mFastScrollDistributionMode;
    private final List mFastScrollerSections;
    private final List mFilteredApps;
    private AlphabeticIndexCompat mIndexer;
    private final Launcher mLauncher;
    private int mNumAppRowsInAdapter;
    private int mNumAppsPerRow;
    private int mNumPredictedAppsPerRow;
    private final List mPredictedAppComponents;
    private final List mPredictedApps;
    private ArrayList mSearchResults;
    
    public AlphabeticalAppsList(final Context context) {
        this.mFastScrollDistributionMode = 1;
        this.mApps = new ArrayList();
        this.mComponentToAppMap = new HashMap();
        this.mFilteredApps = new ArrayList();
        this.mAdapterItems = new ArrayList();
        this.mFastScrollerSections = new ArrayList();
        this.mPredictedAppComponents = new ArrayList();
        this.mPredictedApps = new ArrayList();
        this.mDiscoveredApps = new ArrayList();
        this.mCachedSectionNames = new HashMap();
        this.mLauncher = Launcher.getLauncher(context);
        this.mIndexer = new AlphabeticIndexCompat(context);
        this.mAppNameComparator = new AppInfoComparator(context);
    }
    
    private String getAndUpdateCachedSectionName(final CharSequence charSequence) {
        String computeSectionName = this.mCachedSectionNames.get(charSequence);
        if (computeSectionName == null) {
            computeSectionName = this.mIndexer.computeSectionName(charSequence);
            this.mCachedSectionNames.put(charSequence, computeSectionName);
        }
        return computeSectionName;
    }
    
    private List getFiltersAppInfos() {
        int i = 0;
        if (this.mSearchResults == null) {
            return this.mApps;
        }
        final ArrayList<Object> list = new ArrayList<Object>();
        final Iterator iterator = this.mSearchResults.iterator();
        while (iterator.hasNext()) {
            final AppInfo appInfo = this.mComponentToAppMap.get(iterator.next());
            if (appInfo != null) {
                list.add(appInfo);
            }
        }
        if (this.mDiscoveredApps.size() > 0) {
            while (i < this.mDiscoveredApps.size()) {
                final AppDiscoveryAppInfo appDiscoveryAppInfo = this.mDiscoveredApps.get(i);
                if (appDiscoveryAppInfo.isRecent) {
                    list.add(appDiscoveryAppInfo);
                }
                ++i;
            }
            Collections.sort(list, this.mAppNameComparator);
        }
        return list;
    }
    
    private void onAppsUpdated() {
        this.mApps.clear();
        this.mApps.addAll(this.mComponentToAppMap.values());
        Collections.sort((List<Object>)this.mApps, this.mAppNameComparator);
        if (this.mLauncher.getResources().getConfiguration().locale.equals(Locale.SIMPLIFIED_CHINESE)) {
            final TreeMap<String, ArrayList<?>> treeMap = new TreeMap<String, ArrayList<?>>(new LabelComparator());
            for (final AppInfo appInfo : this.mApps) {
                final String andUpdateCachedSectionName = this.getAndUpdateCachedSectionName(appInfo.title);
                ArrayList<?> list = treeMap.get(andUpdateCachedSectionName);
                if (list == null) {
                    list = new ArrayList<Object>();
                    treeMap.put(andUpdateCachedSectionName, list);
                }
                list.add(appInfo);
            }
            this.mApps.clear();
            final Iterator<Object> iterator2 = treeMap.entrySet().iterator();
            while (iterator2.hasNext()) {
                this.mApps.addAll(iterator2.next().getValue());
            }
        }
        else {
            final Iterator iterator3 = this.mApps.iterator();
            while (iterator3.hasNext()) {
                this.getAndUpdateCachedSectionName(iterator3.next().title);
            }
        }
        this.updateAdapterItems();
    }
    
    private void refillAdapterItems() {
        final int n = 1;
        final float n2 = 1.0f;
        Object o = null;
        this.mFilteredApps.clear();
        this.mFastScrollerSections.clear();
        this.mAdapterItems.clear();
        this.mAdapterItems.add(AlphabeticalAppsList$AdapterItem.asSearchDivider(0));
        this.mPredictedApps.clear();
        int n3 = 0;
        int n7 = 0;
        AlphabeticalAppsList$FastScrollSectionInfo alphabeticalAppsList$FastScrollSectionInfo2 = null;
        Label_0438: {
            if (this.mPredictedAppComponents != null && (this.mPredictedAppComponents.isEmpty() ^ true)) {
                if (this.hasFilter() ^ true) {
                    final Iterator iterator = this.mPredictedAppComponents.iterator();
                    while (iterator.hasNext()) {
                        final AppInfo appInfo = this.mComponentToAppMap.get(iterator.next());
                        if (appInfo != null) {
                            this.mPredictedApps.add(appInfo);
                        }
                        if (this.mPredictedApps.size() == this.mNumPredictedAppsPerRow) {
                            break;
                        }
                    }
                    if (!this.mPredictedApps.isEmpty()) {
                        final AlphabeticalAppsList$FastScrollSectionInfo alphabeticalAppsList$FastScrollSectionInfo = new AlphabeticalAppsList$FastScrollSectionInfo("");
                        this.mFastScrollerSections.add(alphabeticalAppsList$FastScrollSectionInfo);
                        final Iterator iterator2 = this.mPredictedApps.iterator();
                        n3 = 0;
                        int n4 = n;
                        while (iterator2.hasNext()) {
                            final AppInfo appInfo2 = iterator2.next();
                            final int n5 = n4 + 1;
                            final String s = "";
                            final int n6 = n3 + 1;
                            final AlphabeticalAppsList$AdapterItem predictedApp = AlphabeticalAppsList$AdapterItem.asPredictedApp(n4, s, appInfo2, n3);
                            if (alphabeticalAppsList$FastScrollSectionInfo.fastScrollToItem == null) {
                                alphabeticalAppsList$FastScrollSectionInfo.fastScrollToItem = predictedApp;
                            }
                            this.mAdapterItems.add(predictedApp);
                            this.mFilteredApps.add(appInfo2);
                            n3 = n6;
                            n4 = n5;
                        }
                        final ArrayList mAdapterItems = this.mAdapterItems;
                        n7 = n4 + 1;
                        mAdapterItems.add(AlphabeticalAppsList$AdapterItem.asPredictionDivider(n4));
                        alphabeticalAppsList$FastScrollSectionInfo2 = alphabeticalAppsList$FastScrollSectionInfo;
                        break Label_0438;
                    }
                }
                n3 = 0;
                n7 = n;
                alphabeticalAppsList$FastScrollSectionInfo2 = null;
            }
            else {
                n3 = 0;
                n7 = n;
                alphabeticalAppsList$FastScrollSectionInfo2 = null;
            }
        }
        final Iterator iterator3 = this.getFiltersAppInfos().iterator();
        int n8 = n7;
        while (iterator3.hasNext()) {
            final AppInfo appInfo3 = iterator3.next();
            final String andUpdateCachedSectionName = this.getAndUpdateCachedSectionName(appInfo3.title);
            AlphabeticalAppsList$FastScrollSectionInfo alphabeticalAppsList$FastScrollSectionInfo3;
            if (!andUpdateCachedSectionName.equals(o)) {
                alphabeticalAppsList$FastScrollSectionInfo3 = new AlphabeticalAppsList$FastScrollSectionInfo(andUpdateCachedSectionName);
                this.mFastScrollerSections.add(alphabeticalAppsList$FastScrollSectionInfo3);
                o = andUpdateCachedSectionName;
            }
            else {
                alphabeticalAppsList$FastScrollSectionInfo3 = alphabeticalAppsList$FastScrollSectionInfo2;
            }
            final int n9 = n8 + 1;
            final int n10 = n3 + 1;
            final AlphabeticalAppsList$AdapterItem app = AlphabeticalAppsList$AdapterItem.asApp(n8, andUpdateCachedSectionName, appInfo3, n3);
            if (alphabeticalAppsList$FastScrollSectionInfo3.fastScrollToItem == null) {
                alphabeticalAppsList$FastScrollSectionInfo3.fastScrollToItem = app;
            }
            this.mAdapterItems.add(app);
            this.mFilteredApps.add(appInfo3);
            n3 = n10;
            n8 = n9;
            alphabeticalAppsList$FastScrollSectionInfo2 = alphabeticalAppsList$FastScrollSectionInfo3;
        }
        if (this.hasFilter()) {
            if (this.isAppDiscoveryRunning() || this.mDiscoveredApps.size() > 0) {
                final ArrayList mAdapterItems2 = this.mAdapterItems;
                final int n11 = n8 + 1;
                mAdapterItems2.add(AlphabeticalAppsList$AdapterItem.asLoadingDivider(n8));
                int n12 = n3;
                int n13 = n11;
                for (int i = 0; i < this.mDiscoveredApps.size(); ++i) {
                    final AppDiscoveryAppInfo appDiscoveryAppInfo = this.mDiscoveredApps.get(i);
                    if (!appDiscoveryAppInfo.isRecent) {
                        final int n14 = n13 + 1;
                        final String s2 = "";
                        final int n15 = n12 + 1;
                        this.mAdapterItems.add(AlphabeticalAppsList$AdapterItem.asDiscoveryItem(n13, s2, appDiscoveryAppInfo, n12));
                        n12 = n15;
                        n13 = n14;
                    }
                }
                if (!this.isAppDiscoveryRunning()) {
                    this.mAdapterItems.add(AlphabeticalAppsList$AdapterItem.asMarketSearch(n13));
                }
            }
            else {
                int n16;
                if (this.hasNoFilteredResults()) {
                    final ArrayList mAdapterItems3 = this.mAdapterItems;
                    n16 = n8 + 1;
                    mAdapterItems3.add(AlphabeticalAppsList$AdapterItem.asEmptySearch(n8));
                }
                else {
                    final ArrayList mAdapterItems4 = this.mAdapterItems;
                    n16 = n8 + 1;
                    mAdapterItems4.add(AlphabeticalAppsList$AdapterItem.asMarketDivider(n8));
                }
                this.mAdapterItems.add(AlphabeticalAppsList$AdapterItem.asMarketSearch(n16));
            }
        }
        if (this.mNumAppsPerRow != 0) {
            final int n17 = -1;
            final Iterator iterator4 = this.mAdapterItems.iterator();
            int rowIndex = n17;
            int rowAppIndex = 0;
            int n18 = 0;
            while (iterator4.hasNext()) {
                final AlphabeticalAppsList$AdapterItem alphabeticalAppsList$AdapterItem = iterator4.next();
                alphabeticalAppsList$AdapterItem.rowIndex = 0;
                int n19;
                int n20;
                int n21;
                if (AllAppsGridAdapter.isDividerViewType(alphabeticalAppsList$AdapterItem.viewType)) {
                    n19 = rowIndex;
                    n20 = rowAppIndex;
                    n21 = 0;
                }
                else if (AllAppsGridAdapter.isIconViewType(alphabeticalAppsList$AdapterItem.viewType)) {
                    if (n18 % this.mNumAppsPerRow == 0) {
                        ++rowIndex;
                        rowAppIndex = 0;
                    }
                    alphabeticalAppsList$AdapterItem.rowIndex = rowIndex;
                    alphabeticalAppsList$AdapterItem.rowAppIndex = rowAppIndex;
                    final int n22 = n18 + 1;
                    final int n23 = rowAppIndex + 1;
                    n19 = rowIndex;
                    n20 = n23;
                    n21 = n22;
                }
                else {
                    n19 = rowIndex;
                    n20 = rowAppIndex;
                    n21 = n18;
                }
                n18 = n21;
                rowAppIndex = n20;
                rowIndex = n19;
            }
            this.mNumAppRowsInAdapter = rowIndex + 1;
            switch (n) {
                case 0: {
                    final float n24 = n2 / this.mNumAppRowsInAdapter;
                    for (final AlphabeticalAppsList$FastScrollSectionInfo alphabeticalAppsList$FastScrollSectionInfo4 : this.mFastScrollerSections) {
                        final AlphabeticalAppsList$AdapterItem fastScrollToItem = alphabeticalAppsList$FastScrollSectionInfo4.fastScrollToItem;
                        if (!AllAppsGridAdapter.isIconViewType(fastScrollToItem.viewType)) {
                            alphabeticalAppsList$FastScrollSectionInfo4.touchFraction = 0.0f;
                        }
                        else {
                            alphabeticalAppsList$FastScrollSectionInfo4.touchFraction = fastScrollToItem.rowIndex * n24 + fastScrollToItem.rowAppIndex * (n24 / this.mNumAppsPerRow);
                        }
                    }
                    break;
                }
                case 1: {
                    final float n25 = n2 / this.mFastScrollerSections.size();
                    final Iterator iterator6 = this.mFastScrollerSections.iterator();
                    float touchFraction = 0.0f;
                    while (iterator6.hasNext()) {
                        final AlphabeticalAppsList$FastScrollSectionInfo alphabeticalAppsList$FastScrollSectionInfo5 = iterator6.next();
                        float n26;
                        if (!AllAppsGridAdapter.isIconViewType(alphabeticalAppsList$FastScrollSectionInfo5.fastScrollToItem.viewType)) {
                            alphabeticalAppsList$FastScrollSectionInfo5.touchFraction = 0.0f;
                            n26 = touchFraction;
                        }
                        else {
                            alphabeticalAppsList$FastScrollSectionInfo5.touchFraction = touchFraction;
                            n26 = touchFraction + n25;
                        }
                        touchFraction = n26;
                    }
                    break;
                }
            }
        }
    }
    
    private void refreshRecyclerView() {
        if (this.mAdapter != null) {
            this.mAdapter.notifyDataSetChanged();
        }
    }
    
    private void updateAdapterItems() {
        this.refillAdapterItems();
        this.refreshRecyclerView();
    }
    
    public void addApps(final List list) {
        this.updateApps(list);
    }
    
    public List getAdapterItems() {
        return this.mAdapterItems;
    }
    
    public List getApps() {
        return this.mApps;
    }
    
    public List getFastScrollerSections() {
        return this.mFastScrollerSections;
    }
    
    public int getNumAppRows() {
        return this.mNumAppRowsInAdapter;
    }
    
    public int getNumFilteredApps() {
        return this.mFilteredApps.size();
    }
    
    public boolean hasFilter() {
        return this.mSearchResults != null;
    }
    
    public boolean hasNoFilteredResults() {
        return this.mSearchResults != null && this.mFilteredApps.isEmpty();
    }
    
    public boolean isAppDiscoveryRunning() {
        boolean b = true;
        if (this.mAppDiscoveryUpdateState != AppDiscoveryUpdateState.START && this.mAppDiscoveryUpdateState != AppDiscoveryUpdateState.UPDATE) {
            b = false;
        }
        return b;
    }
    
    public void removeApps(final List list) {
        final Iterator<AppInfo> iterator = list.iterator();
        while (iterator.hasNext()) {
            this.mComponentToAppMap.remove(iterator.next().toComponentKey());
        }
        this.onAppsUpdated();
    }
    
    public void setAdapter(final AllAppsGridAdapter mAdapter) {
        this.mAdapter = mAdapter;
    }
    
    public void setApps(final List list) {
        this.mComponentToAppMap.clear();
        this.addApps(list);
    }
    
    public void setNumAppsPerRow(final int mNumAppsPerRow, final int mNumPredictedAppsPerRow) {
        this.mNumAppsPerRow = mNumAppsPerRow;
        this.mNumPredictedAppsPerRow = mNumPredictedAppsPerRow;
        this.updateAdapterItems();
    }
    
    public boolean setOrderedFilter(final ArrayList mSearchResults) {
        boolean equals = false;
        if (this.mSearchResults != mSearchResults) {
            if (this.mSearchResults != null) {
                equals = this.mSearchResults.equals(mSearchResults);
            }
            this.mSearchResults = mSearchResults;
            this.updateAdapterItems();
            return equals ^ true;
        }
        return false;
    }
    
    public void setPredictedApps(final List list) {
        this.mPredictedAppComponents.clear();
        this.mPredictedAppComponents.addAll(list);
        this.onAppsUpdated();
    }
    
    boolean shouldShowEmptySearch() {
        return this.hasNoFilteredResults() && (this.isAppDiscoveryRunning() ^ true) && this.mDiscoveredApps.isEmpty();
    }
    
    public void updateApps(final List list) {
        for (final AppInfo appInfo : list) {
            this.mComponentToAppMap.put(appInfo.toComponentKey(), appInfo);
        }
        this.onAppsUpdated();
    }
}

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
    
    private List processPredictedAppComponents(final List list) {
        if (this.mComponentToAppMap.isEmpty()) {
            return Collections.emptyList();
        }
        final ArrayList<AppInfo> list2 = new ArrayList<AppInfo>();
        final Iterator<ComponentKey> iterator = list.iterator();
        while (iterator.hasNext()) {
            final AppInfo appInfo = this.mComponentToAppMap.get(iterator.next());
            if (appInfo != null) {
                list2.add(appInfo);
            }
            if (list2.size() == this.mNumPredictedAppsPerRow) {
                break;
            }
        }
        return list2;
    }
    
    private void refillAdapterItems() {
        final float n = 1.0f;
        Object o = null;
        this.mFilteredApps.clear();
        this.mFastScrollerSections.clear();
        this.mAdapterItems.clear();
        this.mPredictedApps.clear();
        int n2 = 0;
        int n6 = 0;
        AlphabeticalAppsList$FastScrollSectionInfo alphabeticalAppsList$FastScrollSectionInfo2 = null;
        Label_0339: {
            if (this.mPredictedAppComponents != null && (this.mPredictedAppComponents.isEmpty() ^ true)) {
                if (this.hasFilter() ^ true) {
                    this.mPredictedApps.addAll(this.processPredictedAppComponents(this.mPredictedAppComponents));
                    if (!this.mPredictedApps.isEmpty()) {
                        final AlphabeticalAppsList$FastScrollSectionInfo alphabeticalAppsList$FastScrollSectionInfo = new AlphabeticalAppsList$FastScrollSectionInfo("");
                        this.mFastScrollerSections.add(alphabeticalAppsList$FastScrollSectionInfo);
                        final Iterator iterator = this.mPredictedApps.iterator();
                        n2 = 0;
                        int n3 = 0;
                        while (iterator.hasNext()) {
                            final AppInfo appInfo = iterator.next();
                            final int n4 = n3 + 1;
                            final String s = "";
                            final int n5 = n2 + 1;
                            final AlphabeticalAppsList$AdapterItem predictedApp = AlphabeticalAppsList$AdapterItem.asPredictedApp(n3, s, appInfo, n2);
                            if (alphabeticalAppsList$FastScrollSectionInfo.fastScrollToItem == null) {
                                alphabeticalAppsList$FastScrollSectionInfo.fastScrollToItem = predictedApp;
                            }
                            this.mAdapterItems.add(predictedApp);
                            this.mFilteredApps.add(appInfo);
                            n2 = n5;
                            n3 = n4;
                        }
                        final ArrayList mAdapterItems = this.mAdapterItems;
                        n6 = n3 + 1;
                        mAdapterItems.add(AlphabeticalAppsList$AdapterItem.asPredictionDivider(n3));
                        alphabeticalAppsList$FastScrollSectionInfo2 = alphabeticalAppsList$FastScrollSectionInfo;
                        break Label_0339;
                    }
                }
                n2 = 0;
                n6 = 0;
                alphabeticalAppsList$FastScrollSectionInfo2 = null;
            }
            else {
                n2 = 0;
                n6 = 0;
                alphabeticalAppsList$FastScrollSectionInfo2 = null;
            }
        }
        final Iterator iterator2 = this.getFiltersAppInfos().iterator();
        int n7 = n6;
        while (iterator2.hasNext()) {
            final AppInfo appInfo2 = iterator2.next();
            final String andUpdateCachedSectionName = this.getAndUpdateCachedSectionName(appInfo2.title);
            AlphabeticalAppsList$FastScrollSectionInfo alphabeticalAppsList$FastScrollSectionInfo3;
            if (!andUpdateCachedSectionName.equals(o)) {
                alphabeticalAppsList$FastScrollSectionInfo3 = new AlphabeticalAppsList$FastScrollSectionInfo(andUpdateCachedSectionName);
                this.mFastScrollerSections.add(alphabeticalAppsList$FastScrollSectionInfo3);
                o = andUpdateCachedSectionName;
            }
            else {
                alphabeticalAppsList$FastScrollSectionInfo3 = alphabeticalAppsList$FastScrollSectionInfo2;
            }
            final int n8 = n7 + 1;
            final int n9 = n2 + 1;
            final AlphabeticalAppsList$AdapterItem app = AlphabeticalAppsList$AdapterItem.asApp(n7, andUpdateCachedSectionName, appInfo2, n2);
            if (alphabeticalAppsList$FastScrollSectionInfo3.fastScrollToItem == null) {
                alphabeticalAppsList$FastScrollSectionInfo3.fastScrollToItem = app;
            }
            this.mAdapterItems.add(app);
            this.mFilteredApps.add(appInfo2);
            n2 = n9;
            n7 = n8;
            alphabeticalAppsList$FastScrollSectionInfo2 = alphabeticalAppsList$FastScrollSectionInfo3;
        }
        if (this.hasFilter()) {
            if (this.isAppDiscoveryRunning() || this.mDiscoveredApps.size() > 0) {
                final ArrayList mAdapterItems2 = this.mAdapterItems;
                final int n10 = n7 + 1;
                mAdapterItems2.add(AlphabeticalAppsList$AdapterItem.asLoadingDivider(n7));
                int n11 = n2;
                int n12 = n10;
                for (int i = 0; i < this.mDiscoveredApps.size(); ++i) {
                    final AppDiscoveryAppInfo appDiscoveryAppInfo = this.mDiscoveredApps.get(i);
                    if (!appDiscoveryAppInfo.isRecent) {
                        final int n13 = n12 + 1;
                        final String s2 = "";
                        final int n14 = n11 + 1;
                        this.mAdapterItems.add(AlphabeticalAppsList$AdapterItem.asDiscoveryItem(n12, s2, appDiscoveryAppInfo, n11));
                        n11 = n14;
                        n12 = n13;
                    }
                }
                if (!this.isAppDiscoveryRunning()) {
                    this.mAdapterItems.add(AlphabeticalAppsList$AdapterItem.asMarketSearch(n12));
                }
            }
            else {
                int n15;
                if (this.hasNoFilteredResults()) {
                    final ArrayList mAdapterItems3 = this.mAdapterItems;
                    n15 = n7 + 1;
                    mAdapterItems3.add(AlphabeticalAppsList$AdapterItem.asEmptySearch(n7));
                }
                else {
                    final ArrayList mAdapterItems4 = this.mAdapterItems;
                    n15 = n7 + 1;
                    mAdapterItems4.add(AlphabeticalAppsList$AdapterItem.asMarketDivider(n7));
                }
                this.mAdapterItems.add(AlphabeticalAppsList$AdapterItem.asMarketSearch(n15));
            }
        }
        if (this.mNumAppsPerRow != 0) {
            final int n16 = -1;
            final Iterator iterator3 = this.mAdapterItems.iterator();
            int rowIndex = n16;
            int rowAppIndex = 0;
            int n17 = 0;
            while (iterator3.hasNext()) {
                final AlphabeticalAppsList$AdapterItem alphabeticalAppsList$AdapterItem = iterator3.next();
                alphabeticalAppsList$AdapterItem.rowIndex = 0;
                int n18;
                int n19;
                int n20;
                if (AllAppsGridAdapter.isDividerViewType(alphabeticalAppsList$AdapterItem.viewType)) {
                    n18 = rowIndex;
                    n19 = rowAppIndex;
                    n20 = 0;
                }
                else if (AllAppsGridAdapter.isIconViewType(alphabeticalAppsList$AdapterItem.viewType)) {
                    if (n17 % this.mNumAppsPerRow == 0) {
                        ++rowIndex;
                        rowAppIndex = 0;
                    }
                    alphabeticalAppsList$AdapterItem.rowIndex = rowIndex;
                    alphabeticalAppsList$AdapterItem.rowAppIndex = rowAppIndex;
                    final int n21 = n17 + 1;
                    final int n22 = rowAppIndex + 1;
                    n18 = rowIndex;
                    n19 = n22;
                    n20 = n21;
                }
                else {
                    n18 = rowIndex;
                    n19 = rowAppIndex;
                    n20 = n17;
                }
                n17 = n20;
                rowAppIndex = n19;
                rowIndex = n18;
            }
            this.mNumAppRowsInAdapter = rowIndex + 1;
            switch (true) {
                case 0: {
                    final float n23 = n / this.mNumAppRowsInAdapter;
                    for (final AlphabeticalAppsList$FastScrollSectionInfo alphabeticalAppsList$FastScrollSectionInfo4 : this.mFastScrollerSections) {
                        final AlphabeticalAppsList$AdapterItem fastScrollToItem = alphabeticalAppsList$FastScrollSectionInfo4.fastScrollToItem;
                        if (!AllAppsGridAdapter.isIconViewType(fastScrollToItem.viewType)) {
                            alphabeticalAppsList$FastScrollSectionInfo4.touchFraction = 0.0f;
                        }
                        else {
                            alphabeticalAppsList$FastScrollSectionInfo4.touchFraction = fastScrollToItem.rowIndex * n23 + fastScrollToItem.rowAppIndex * (n23 / this.mNumAppsPerRow);
                        }
                    }
                    break;
                }
                case 1: {
                    final float n24 = n / this.mFastScrollerSections.size();
                    final Iterator iterator5 = this.mFastScrollerSections.iterator();
                    float touchFraction = 0.0f;
                    while (iterator5.hasNext()) {
                        final AlphabeticalAppsList$FastScrollSectionInfo alphabeticalAppsList$FastScrollSectionInfo5 = iterator5.next();
                        float n25;
                        if (!AllAppsGridAdapter.isIconViewType(alphabeticalAppsList$FastScrollSectionInfo5.fastScrollToItem.viewType)) {
                            alphabeticalAppsList$FastScrollSectionInfo5.touchFraction = 0.0f;
                            n25 = touchFraction;
                        }
                        else {
                            alphabeticalAppsList$FastScrollSectionInfo5.touchFraction = touchFraction;
                            n25 = touchFraction + n24;
                        }
                        touchFraction = n25;
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
    
    private void swapInNewPredictedApps(final List list) {
        this.mPredictedApps.clear();
        this.mPredictedApps.addAll(list);
        for (int size = list.size(), i = 0; i < size; ++i) {
            final AppInfo appInfo = list.get(i);
            final AlphabeticalAppsList$AdapterItem predictedApp = AlphabeticalAppsList$AdapterItem.asPredictedApp(i, "", appInfo, i);
            predictedApp.rowAppIndex = i;
            this.mAdapterItems.set(i, predictedApp);
            this.mFilteredApps.set(i, appInfo);
            this.mAdapter.notifyItemChanged(i);
        }
    }
    
    private void updateAdapterItems() {
        this.refillAdapterItems();
        this.refreshRecyclerView();
    }
    
    public void addApps(final List list) {
        this.updateApps(list);
    }
    
    public AppInfo findApp(final ComponentKey componentKey) {
        return this.mComponentToAppMap.get(componentKey);
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
    
    public List getPredictedApps() {
        return this.mPredictedApps;
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
        final List processPredictedAppComponents = this.processPredictedAppComponents(list);
        if (!processPredictedAppComponents.equals(this.mPredictedApps)) {
            if (processPredictedAppComponents.size() == this.mPredictedApps.size()) {
                this.swapInNewPredictedApps(processPredictedAppComponents);
            }
            else {
                this.onAppsUpdated();
            }
        }
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

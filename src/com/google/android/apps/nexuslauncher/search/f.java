// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.search;

import java.util.concurrent.Executor;
import java.util.Iterator;
import java.util.Comparator;
import com.android.launcher3.allapps.AppInfoComparator;
import com.android.launcher3.ItemInfoWithIcon;
import com.android.launcher3.allapps.search.DefaultAppSearchAlgorithm;
import com.android.launcher3.AppInfo;
import com.android.launcher3.allapps.search.DefaultAppSearchAlgorithm$StringMatcher;
import java.util.ArrayList;
import java.util.Collections;
import java.lang.ref.WeakReference;
import com.android.launcher3.model.LoaderResults;
import android.util.Log;
import java.util.List;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.AllAppsList;
import java.util.concurrent.FutureTask;
import com.android.launcher3.LauncherModel$ModelUpdateTask;
import java.util.concurrent.Callable;

class f implements Callable, LauncherModel$ModelUpdateTask
{
    private final FutureTask fQ;
    private AllAppsList mAllAppsList;
    private LauncherAppState mApp;
    private BgDataModel mBgDataModel;
    private LauncherModel mModel;
    private final String mQuery;
    
    f(final String s) {
        this.mQuery = s.toLowerCase();
        this.fQ = new FutureTask(this);
    }
    
    public List call() {
        if (!this.mModel.isModelLoaded()) {
            Log.d("AppSearchProvider", "Workspace not loaded, loading now");
            this.mModel.startLoaderForResults(new LoaderResults(this.mApp, this.mBgDataModel, this.mAllAppsList, 0, null));
        }
        if (!this.mModel.isModelLoaded()) {
            Log.d("AppSearchProvider", "Loading workspace failed");
            return Collections.emptyList();
        }
        final ArrayList<Object> list = new ArrayList<Object>();
        final ArrayList data = this.mAllAppsList.data;
        final DefaultAppSearchAlgorithm$StringMatcher instance = DefaultAppSearchAlgorithm$StringMatcher.getInstance();
        for (final AppInfo appInfo : data) {
            if (DefaultAppSearchAlgorithm.matches(appInfo, this.mQuery, instance)) {
                list.add(appInfo);
                if (!appInfo.usingLowResIcon) {
                    continue;
                }
                this.mApp.getIconCache().getTitleAndIcon(appInfo, false);
            }
        }
        Collections.sort(list, new AppInfoComparator(this.mApp.getContext()));
        return list;
    }
    
    public void init(final LauncherAppState mApp, final LauncherModel mModel, final BgDataModel mBgDataModel, final AllAppsList mAllAppsList, final Executor executor) {
        this.mApp = mApp;
        this.mModel = mModel;
        this.mBgDataModel = mBgDataModel;
        this.mAllAppsList = mAllAppsList;
    }
    
    public void run() {
        this.fQ.run();
    }
}

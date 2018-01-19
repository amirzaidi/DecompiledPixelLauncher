// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import java.lang.ref.WeakReference;
import com.android.launcher3.model.LoaderResults;
import android.util.Log;
import java.util.concurrent.Executor;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.AllAppsList;
import android.content.BroadcastReceiver$PendingResult;
import com.android.launcher3.LauncherModel$ModelUpdateTask;

class b implements LauncherModel$ModelUpdateTask
{
    private final BroadcastReceiver$PendingResult gy;
    private AllAppsList mAllAppsList;
    private LauncherAppState mApp;
    private BgDataModel mBgDataModel;
    private LauncherModel mModel;
    
    b(final BroadcastReceiver$PendingResult gy) {
        this.gy = gy;
    }
    
    public void init(final LauncherAppState mApp, final LauncherModel mModel, final BgDataModel mBgDataModel, final AllAppsList mAllAppsList, final Executor executor) {
        this.mApp = mApp;
        this.mModel = mModel;
        this.mBgDataModel = mBgDataModel;
        this.mAllAppsList = mAllAppsList;
    }
    
    public void run() {
        int resultCode = 0;
        if (!this.mModel.isModelLoaded()) {
            Log.d("SUWFinishReceiver", "Workspace not loaded, loading now");
            this.mModel.startLoaderForResults(new LoaderResults(this.mApp, this.mBgDataModel, this.mAllAppsList, 0, null));
        }
        Log.d("SUWFinishReceiver", "Preload completed : " + this.mModel.isModelLoaded());
        final BroadcastReceiver$PendingResult gy = this.gy;
        if (this.mModel.isModelLoaded()) {
            resultCode = -1;
        }
        gy.setResultCode(resultCode);
        this.gy.finish();
    }
}

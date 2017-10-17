// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import android.os.UserHandle;
import java.util.ArrayList;
import com.android.launcher3.LauncherModel$CallbackTask;
import java.util.concurrent.Executor;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.AllAppsList;
import com.android.launcher3.LauncherModel$ModelUpdateTask;

public abstract class BaseModelUpdateTask implements LauncherModel$ModelUpdateTask
{
    private AllAppsList mAllAppsList;
    private LauncherAppState mApp;
    private BgDataModel mDataModel;
    private LauncherModel mModel;
    private Executor mUiExecutor;
    
    public void bindDeepShortcuts(final BgDataModel bgDataModel) {
        this.scheduleCallbackTask(new BaseModelUpdateTask$3(this, bgDataModel.deepShortcutMap.clone()));
    }
    
    public void bindUpdatedShortcuts(final ArrayList list, final UserHandle userHandle) {
        this.bindUpdatedShortcuts(list, new ArrayList(), userHandle);
    }
    
    public void bindUpdatedShortcuts(final ArrayList list, final ArrayList list2, final UserHandle userHandle) {
        if (!list.isEmpty() || (list2.isEmpty() ^ true)) {
            this.scheduleCallbackTask(new BaseModelUpdateTask$2(this, list, list2, userHandle));
        }
    }
    
    public void bindUpdatedWidgets(final BgDataModel bgDataModel) {
        this.scheduleCallbackTask(new BaseModelUpdateTask$4(this, bgDataModel.widgetsModel.getWidgetsMap()));
    }
    
    public abstract void execute(final LauncherAppState p0, final BgDataModel p1, final AllAppsList p2);
    
    public ModelWriter getModelWriter() {
        return this.mModel.getWriter(false);
    }
    
    public void init(final LauncherAppState mApp, final LauncherModel mModel, final BgDataModel mDataModel, final AllAppsList mAllAppsList, final Executor mUiExecutor) {
        this.mApp = mApp;
        this.mModel = mModel;
        this.mDataModel = mDataModel;
        this.mAllAppsList = mAllAppsList;
        this.mUiExecutor = mUiExecutor;
    }
    
    public final void run() {
        if (!this.mModel.isModelLoaded()) {
            return;
        }
        this.execute(this.mApp, this.mDataModel, this.mAllAppsList);
    }
    
    public final void scheduleCallbackTask(final LauncherModel$CallbackTask launcherModel$CallbackTask) {
        this.mUiExecutor.execute(new BaseModelUpdateTask$1(this, this.mModel.getCallback(), launcherModel$CallbackTask));
    }
}

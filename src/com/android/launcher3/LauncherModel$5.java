// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.Collection;
import java.util.ArrayList;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.compat.PackageInstallerCompat$PackageInstallInfo;
import com.android.launcher3.model.BaseModelUpdateTask;

final class LauncherModel$5 extends BaseModelUpdateTask
{
    final /* synthetic */ LauncherModel this$0;
    final /* synthetic */ PackageInstallerCompat$PackageInstallInfo val$sessionInfo;
    
    LauncherModel$5(final LauncherModel this$0, final PackageInstallerCompat$PackageInstallInfo val$sessionInfo) {
        this.this$0 = this$0;
        this.val$sessionInfo = val$sessionInfo;
    }
    
    public void execute(final LauncherAppState launcherAppState, final BgDataModel bgDataModel, final AllAppsList list) {
        list.addPromiseApp(launcherAppState.getContext(), this.val$sessionInfo);
        if (!list.added.isEmpty()) {
            final ArrayList list2 = new ArrayList(list.added);
            list.added.clear();
            this.scheduleCallbackTask(new LauncherModel$5$1(this, list2));
        }
    }
}

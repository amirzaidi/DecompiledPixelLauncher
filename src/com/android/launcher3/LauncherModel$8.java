// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.model.BaseModelUpdateTask;

final class LauncherModel$8 extends BaseModelUpdateTask
{
    final /* synthetic */ LauncherModel this$0;
    final /* synthetic */ PackageUserKey val$packageUser;
    
    LauncherModel$8(final LauncherModel this$0, final PackageUserKey val$packageUser) {
        this.this$0 = this$0;
        this.val$packageUser = val$packageUser;
    }
    
    public void execute(final LauncherAppState launcherAppState, final BgDataModel bgDataModel, final AllAppsList list) {
        bgDataModel.widgetsModel.update(launcherAppState, this.val$packageUser);
        this.bindUpdatedWidgets(bgDataModel);
    }
}

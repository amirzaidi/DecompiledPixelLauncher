// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import com.android.launcher3.LauncherModel$Callbacks;
import com.android.launcher3.PromiseAppInfo;
import com.android.launcher3.LauncherModel$CallbackTask;

final class PackageInstallStateChangedTask$1 implements LauncherModel$CallbackTask
{
    final /* synthetic */ PackageInstallStateChangedTask this$0;
    final /* synthetic */ PromiseAppInfo val$updatedPromiseApp;
    
    PackageInstallStateChangedTask$1(final PackageInstallStateChangedTask this$0, final PromiseAppInfo val$updatedPromiseApp) {
        this.this$0 = this$0;
        this.val$updatedPromiseApp = val$updatedPromiseApp;
    }
    
    public void execute(final LauncherModel$Callbacks launcherModel$Callbacks) {
        launcherModel$Callbacks.bindPromiseAppProgressUpdated(this.val$updatedPromiseApp);
    }
}

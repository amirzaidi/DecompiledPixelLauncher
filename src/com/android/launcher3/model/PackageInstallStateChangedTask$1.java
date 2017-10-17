// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import com.android.launcher3.LauncherModel$Callbacks;
import java.util.HashSet;
import com.android.launcher3.LauncherModel$CallbackTask;

final class PackageInstallStateChangedTask$1 implements LauncherModel$CallbackTask
{
    final /* synthetic */ PackageInstallStateChangedTask this$0;
    final /* synthetic */ HashSet val$updates;
    
    PackageInstallStateChangedTask$1(final PackageInstallStateChangedTask this$0, final HashSet val$updates) {
        this.this$0 = this$0;
        this.val$updates = val$updates;
    }
    
    public void execute(final LauncherModel$Callbacks launcherModel$Callbacks) {
        launcherModel$Callbacks.bindRestoreItemsChange(this.val$updates);
    }
}

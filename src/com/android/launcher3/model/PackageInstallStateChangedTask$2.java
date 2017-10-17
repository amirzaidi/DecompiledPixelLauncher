// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import com.android.launcher3.LauncherModel$Callbacks;
import java.util.ArrayList;
import com.android.launcher3.LauncherModel$CallbackTask;

final class PackageInstallStateChangedTask$2 implements LauncherModel$CallbackTask
{
    final /* synthetic */ PackageInstallStateChangedTask this$0;
    final /* synthetic */ ArrayList val$removed;
    
    PackageInstallStateChangedTask$2(final PackageInstallStateChangedTask this$0, final ArrayList val$removed) {
        this.this$0 = this$0;
        this.val$removed = val$removed;
    }
    
    public void execute(final LauncherModel$Callbacks launcherModel$Callbacks) {
        launcherModel$Callbacks.bindAppInfosRemoved(this.val$removed);
    }
}

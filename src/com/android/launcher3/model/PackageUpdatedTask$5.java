// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import com.android.launcher3.LauncherModel$Callbacks;
import java.util.ArrayList;
import com.android.launcher3.LauncherModel$CallbackTask;

final class PackageUpdatedTask$5 implements LauncherModel$CallbackTask
{
    final /* synthetic */ PackageUpdatedTask this$0;
    final /* synthetic */ ArrayList val$removedApps;
    
    PackageUpdatedTask$5(final PackageUpdatedTask this$0, final ArrayList val$removedApps) {
        this.this$0 = this$0;
        this.val$removedApps = val$removedApps;
    }
    
    public void execute(final LauncherModel$Callbacks launcherModel$Callbacks) {
        launcherModel$Callbacks.bindAppInfosRemoved(this.val$removedApps);
    }
}

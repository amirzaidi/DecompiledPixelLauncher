// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import com.android.launcher3.LauncherModel$Callbacks;
import java.util.ArrayList;
import com.android.launcher3.LauncherModel$CallbackTask;

final class PackageUpdatedTask$1 implements LauncherModel$CallbackTask
{
    final /* synthetic */ PackageUpdatedTask this$0;
    final /* synthetic */ ArrayList val$addedApps;
    
    PackageUpdatedTask$1(final PackageUpdatedTask this$0, final ArrayList val$addedApps) {
        this.this$0 = this$0;
        this.val$addedApps = val$addedApps;
    }
    
    public void execute(final LauncherModel$Callbacks launcherModel$Callbacks) {
        launcherModel$Callbacks.bindAppsAdded(null, null, null, this.val$addedApps);
    }
}

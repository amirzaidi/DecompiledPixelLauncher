// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import com.android.launcher3.LauncherModel$Callbacks;
import java.util.ArrayList;
import com.android.launcher3.LauncherModel$CallbackTask;

final class CacheDataUpdatedTask$1 implements LauncherModel$CallbackTask
{
    final /* synthetic */ CacheDataUpdatedTask this$0;
    final /* synthetic */ ArrayList val$updatedApps;
    
    CacheDataUpdatedTask$1(final CacheDataUpdatedTask this$0, final ArrayList val$updatedApps) {
        this.this$0 = this$0;
        this.val$updatedApps = val$updatedApps;
    }
    
    public void execute(final LauncherModel$Callbacks launcherModel$Callbacks) {
        launcherModel$Callbacks.bindAppsUpdated(this.val$updatedApps);
    }
}

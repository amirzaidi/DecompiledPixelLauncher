// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import com.android.launcher3.LauncherModel$Callbacks;
import com.android.launcher3.LauncherModel$CallbackTask;

final class PackageUpdatedTask$6 implements LauncherModel$CallbackTask
{
    final /* synthetic */ PackageUpdatedTask this$0;
    
    PackageUpdatedTask$6(final PackageUpdatedTask this$0) {
        this.this$0 = this$0;
    }
    
    public void execute(final LauncherModel$Callbacks launcherModel$Callbacks) {
        launcherModel$Callbacks.notifyWidgetProvidersChanged();
    }
}

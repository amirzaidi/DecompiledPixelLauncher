// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import com.android.launcher3.LauncherModel$Callbacks;
import java.util.ArrayList;
import com.android.launcher3.LauncherModel$CallbackTask;

final class PackageUpdatedTask$2 implements LauncherModel$CallbackTask
{
    final /* synthetic */ PackageUpdatedTask this$0;
    final /* synthetic */ ArrayList val$modifiedFinal;
    
    PackageUpdatedTask$2(final PackageUpdatedTask this$0, final ArrayList val$modifiedFinal) {
        this.this$0 = this$0;
        this.val$modifiedFinal = val$modifiedFinal;
    }
    
    public void execute(final LauncherModel$Callbacks launcherModel$Callbacks) {
        launcherModel$Callbacks.bindAppsUpdated(this.val$modifiedFinal);
    }
}

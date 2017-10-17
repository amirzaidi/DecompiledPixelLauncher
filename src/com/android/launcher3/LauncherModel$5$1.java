// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.ArrayList;

final class LauncherModel$5$1 implements LauncherModel$CallbackTask
{
    final /* synthetic */ LauncherModel$5 this$1;
    final /* synthetic */ ArrayList val$arrayList;
    
    LauncherModel$5$1(final LauncherModel$5 this$1, final ArrayList val$arrayList) {
        this.this$1 = this$1;
        this.val$arrayList = val$arrayList;
    }
    
    public void execute(final LauncherModel$Callbacks launcherModel$Callbacks) {
        launcherModel$Callbacks.bindAppsAdded(null, null, null, this.val$arrayList);
    }
}

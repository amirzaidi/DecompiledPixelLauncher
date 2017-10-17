// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.util.ManagedProfileHeuristic;
import java.util.List;

final class LauncherModel$LoaderTask$12 implements Runnable
{
    final /* synthetic */ LauncherModel$LoaderTask this$1;
    final /* synthetic */ List val$apps;
    final /* synthetic */ ManagedProfileHeuristic val$heuristic;
    
    LauncherModel$LoaderTask$12(final LauncherModel$LoaderTask this$1, final ManagedProfileHeuristic val$heuristic, final List val$apps) {
        this.this$1 = this$1;
        this.val$heuristic = val$heuristic;
        this.val$apps = val$apps;
    }
    
    public void run() {
        this.val$heuristic.processUserApps(this.val$apps);
    }
}

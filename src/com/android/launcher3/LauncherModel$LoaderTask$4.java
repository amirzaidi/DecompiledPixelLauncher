// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.ArrayList;

final class LauncherModel$LoaderTask$4 implements Runnable
{
    final /* synthetic */ LauncherModel$LoaderTask this$1;
    final /* synthetic */ LauncherModel$Callbacks val$oldCallbacks;
    final /* synthetic */ ArrayList val$orderedScreens;
    
    LauncherModel$LoaderTask$4(final LauncherModel$LoaderTask this$1, final LauncherModel$Callbacks val$oldCallbacks, final ArrayList val$orderedScreens) {
        this.this$1 = this$1;
        this.val$oldCallbacks = val$oldCallbacks;
        this.val$orderedScreens = val$orderedScreens;
    }
    
    public void run() {
        final LauncherModel$Callbacks tryGetCallbacks = this.this$1.tryGetCallbacks(this.val$oldCallbacks);
        if (tryGetCallbacks != null) {
            tryGetCallbacks.bindScreens(this.val$orderedScreens);
        }
    }
}

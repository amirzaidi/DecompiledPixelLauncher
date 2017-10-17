// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.util.ViewOnDrawExecutor;
import java.util.concurrent.Executor;

final class LauncherModel$LoaderTask$10 implements Runnable
{
    final /* synthetic */ LauncherModel$LoaderTask this$1;
    final /* synthetic */ int val$currentScreen;
    final /* synthetic */ Executor val$deferredExecutor;
    final /* synthetic */ LauncherModel$Callbacks val$oldCallbacks;
    
    LauncherModel$LoaderTask$10(final LauncherModel$LoaderTask this$1, final LauncherModel$Callbacks val$oldCallbacks, final int val$currentScreen, final Executor val$deferredExecutor) {
        this.this$1 = this$1;
        this.val$oldCallbacks = val$oldCallbacks;
        this.val$currentScreen = val$currentScreen;
        this.val$deferredExecutor = val$deferredExecutor;
    }
    
    public void run() {
        final LauncherModel$Callbacks tryGetCallbacks = this.this$1.tryGetCallbacks(this.val$oldCallbacks);
        if (tryGetCallbacks != null) {
            if (this.val$currentScreen != -1001) {
                tryGetCallbacks.onPageBoundSynchronously(this.val$currentScreen);
            }
            tryGetCallbacks.executeOnNextDraw((ViewOnDrawExecutor)this.val$deferredExecutor);
        }
    }
}

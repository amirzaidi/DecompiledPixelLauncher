// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

final class LauncherModel$LoaderTask$7 implements Runnable
{
    final /* synthetic */ LauncherModel$LoaderTask this$1;
    final /* synthetic */ LauncherModel$Callbacks val$oldCallbacks;
    
    LauncherModel$LoaderTask$7(final LauncherModel$LoaderTask this$1, final LauncherModel$Callbacks val$oldCallbacks) {
        this.this$1 = this$1;
        this.val$oldCallbacks = val$oldCallbacks;
    }
    
    public void run() {
        final LauncherModel$Callbacks tryGetCallbacks = this.this$1.tryGetCallbacks(this.val$oldCallbacks);
        if (tryGetCallbacks != null) {
            tryGetCallbacks.clearPendingBinds();
            tryGetCallbacks.startBinding();
        }
    }
}

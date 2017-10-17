// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

final class LauncherModel$4 implements Runnable
{
    final /* synthetic */ LauncherModel this$0;
    final /* synthetic */ LauncherModel$Callbacks val$oldCallbacks;
    
    LauncherModel$4(final LauncherModel this$0, final LauncherModel$Callbacks val$oldCallbacks) {
        this.this$0 = this$0;
        this.val$oldCallbacks = val$oldCallbacks;
    }
    
    public void run() {
        this.val$oldCallbacks.clearPendingBinds();
    }
}

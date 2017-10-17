// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

final class LauncherStateTransitionAnimation$2 extends LauncherStateTransitionAnimation$PrivateTransitionCallbacks
{
    final /* synthetic */ LauncherStateTransitionAnimation this$0;
    
    LauncherStateTransitionAnimation$2(final LauncherStateTransitionAnimation this$0, final float n) {
        this.this$0 = this$0;
        super(n);
    }
    
    void onTransitionComplete() {
        this.this$0.mLauncher.getUserEventDispatcher().resetElapsedContainerMillis();
    }
}

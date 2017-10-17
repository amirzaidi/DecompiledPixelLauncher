// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

final class Launcher$27 implements Runnable
{
    final /* synthetic */ Launcher this$0;
    final /* synthetic */ int val$newScreenIndex;
    final /* synthetic */ Runnable val$startBounceAnimRunnable;
    
    Launcher$27(final Launcher this$0, final int val$newScreenIndex, final Runnable val$startBounceAnimRunnable) {
        this.this$0 = this$0;
        this.val$newScreenIndex = val$newScreenIndex;
        this.val$startBounceAnimRunnable = val$startBounceAnimRunnable;
    }
    
    public void run() {
        if (this.this$0.mWorkspace != null) {
            this.this$0.mWorkspace.snapToPage(this.val$newScreenIndex);
            this.this$0.mWorkspace.postDelayed(this.val$startBounceAnimRunnable, (long)Launcher.NEW_APPS_ANIMATION_DELAY);
        }
    }
}

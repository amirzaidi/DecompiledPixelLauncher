// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

class Launcher$LauncherOverlayCallbacksImpl implements Launcher$LauncherOverlayCallbacks
{
    final /* synthetic */ Launcher this$0;
    
    Launcher$LauncherOverlayCallbacksImpl(final Launcher this$0) {
        this.this$0 = this$0;
    }
    
    public void onScrollChanged(final float n) {
        if (this.this$0.mWorkspace != null) {
            this.this$0.mWorkspace.onOverlayScrollChanged(n);
        }
    }
}

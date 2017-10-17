// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

final class Workspace$10 implements Runnable
{
    final /* synthetic */ Workspace this$0;
    
    Workspace$10(final Workspace this$0) {
        this.this$0 = this$0;
    }
    
    public void run() {
        this.this$0.mLauncher.exitSpringLoadedDragModeDelayed(true, 500, null);
    }
}

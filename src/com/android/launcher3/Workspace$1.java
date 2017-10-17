// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

final class Workspace$1 implements Runnable
{
    final /* synthetic */ Workspace this$0;
    final /* synthetic */ boolean val$animate;
    final /* synthetic */ Runnable val$onComplete;
    final /* synthetic */ boolean val$stripEmptyScreens;
    
    Workspace$1(final Workspace this$0, final boolean val$animate, final Runnable val$onComplete, final boolean val$stripEmptyScreens) {
        this.this$0 = this$0;
        this.val$animate = val$animate;
        this.val$onComplete = val$onComplete;
        this.val$stripEmptyScreens = val$stripEmptyScreens;
    }
    
    public void run() {
        this.this$0.removeExtraEmptyScreenDelayed(this.val$animate, this.val$onComplete, 0, this.val$stripEmptyScreens);
    }
}

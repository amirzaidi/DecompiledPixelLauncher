// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.AnimatorListenerAdapter;
import android.view.View;

final class LauncherStateTransitionAnimation$6 extends LauncherStateTransitionAnimation$PrivateTransitionCallbacks
{
    final /* synthetic */ LauncherStateTransitionAnimation this$0;
    
    LauncherStateTransitionAnimation$6(final LauncherStateTransitionAnimation this$0, final float n) {
        this.this$0 = this$0;
        super(n);
    }
    
    public AnimatorListenerAdapter getMaterialRevealViewAnimatorListener(final View view, final View view2) {
        return new LauncherStateTransitionAnimation$6$1(this, view);
    }
    
    void onTransitionComplete() {
        this.this$0.mLauncher.getUserEventDispatcher().resetElapsedContainerMillis();
    }
}

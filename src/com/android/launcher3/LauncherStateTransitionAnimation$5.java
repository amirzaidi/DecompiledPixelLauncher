// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.AnimatorListenerAdapter;
import android.view.View;

final class LauncherStateTransitionAnimation$5 extends LauncherStateTransitionAnimation$PrivateTransitionCallbacks
{
    final /* synthetic */ LauncherStateTransitionAnimation this$0;
    
    LauncherStateTransitionAnimation$5(final LauncherStateTransitionAnimation this$0, final float n) {
        this.this$0 = this$0;
        super(n);
    }
    
    public AnimatorListenerAdapter getMaterialRevealViewAnimatorListener(final View view, final View view2) {
        return new LauncherStateTransitionAnimation$5$1(this, view2, view);
    }
    
    float getMaterialRevealViewStartFinalRadius() {
        return this.this$0.mLauncher.getDeviceProfile().allAppsButtonVisualSize / 2;
    }
    
    void onTransitionComplete() {
        this.this$0.mLauncher.getUserEventDispatcher().resetElapsedContainerMillis();
    }
}

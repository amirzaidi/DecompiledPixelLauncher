// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.AnimatorListenerAdapter;
import android.view.View;
import com.android.launcher3.allapps.AllAppsContainerView;

final class LauncherStateTransitionAnimation$1 extends LauncherStateTransitionAnimation$PrivateTransitionCallbacks
{
    final /* synthetic */ LauncherStateTransitionAnimation this$0;
    final /* synthetic */ boolean val$startSearchAfterTransition;
    final /* synthetic */ AllAppsContainerView val$toView;
    
    LauncherStateTransitionAnimation$1(final LauncherStateTransitionAnimation this$0, final float n, final boolean val$startSearchAfterTransition, final AllAppsContainerView val$toView) {
        this.this$0 = this$0;
        this.val$startSearchAfterTransition = val$startSearchAfterTransition;
        this.val$toView = val$toView;
        super(n);
    }
    
    public AnimatorListenerAdapter getMaterialRevealViewAnimatorListener(final View view, final View view2) {
        return new LauncherStateTransitionAnimation$1$1(this, view2);
    }
    
    public float getMaterialRevealViewStartFinalRadius() {
        return this.this$0.mLauncher.getDeviceProfile().allAppsButtonVisualSize / 2;
    }
    
    void onTransitionComplete() {
        this.this$0.mLauncher.getUserEventDispatcher().resetElapsedContainerMillis();
        if (this.val$startSearchAfterTransition) {
            this.val$toView.startAppsSearch();
        }
    }
}

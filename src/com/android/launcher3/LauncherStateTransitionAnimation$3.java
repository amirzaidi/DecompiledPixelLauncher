// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.Animator;
import android.view.View;
import android.animation.AnimatorListenerAdapter;

final class LauncherStateTransitionAnimation$3 extends AnimatorListenerAdapter
{
    final /* synthetic */ LauncherStateTransitionAnimation this$0;
    final /* synthetic */ LauncherStateTransitionAnimation$PrivateTransitionCallbacks val$pCb;
    final /* synthetic */ View val$revealView;
    
    LauncherStateTransitionAnimation$3(final LauncherStateTransitionAnimation this$0, final View val$revealView, final LauncherStateTransitionAnimation$PrivateTransitionCallbacks val$pCb) {
        this.this$0 = this$0;
        this.val$revealView = val$revealView;
        this.val$pCb = val$pCb;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.val$revealView.setVisibility(4);
        this.this$0.cleanupAnimation();
        this.val$pCb.onTransitionComplete();
    }
}

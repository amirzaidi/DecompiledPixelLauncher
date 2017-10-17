// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class LauncherStateTransitionAnimation$4 extends AnimatorListenerAdapter
{
    final /* synthetic */ LauncherStateTransitionAnimation this$0;
    final /* synthetic */ LauncherStateTransitionAnimation$PrivateTransitionCallbacks val$pCb;
    
    LauncherStateTransitionAnimation$4(final LauncherStateTransitionAnimation this$0, final LauncherStateTransitionAnimation$PrivateTransitionCallbacks val$pCb) {
        this.this$0 = this$0;
        this.val$pCb = val$pCb;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.this$0.cleanupAnimation();
        this.val$pCb.onTransitionComplete();
    }
}

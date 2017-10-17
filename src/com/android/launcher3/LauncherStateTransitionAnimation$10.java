// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class LauncherStateTransitionAnimation$10 extends AnimatorListenerAdapter
{
    boolean canceled;
    final /* synthetic */ LauncherStateTransitionAnimation this$0;
    final /* synthetic */ Runnable val$onCompleteRunnable;
    final /* synthetic */ LauncherStateTransitionAnimation$PrivateTransitionCallbacks val$pCb;
    
    LauncherStateTransitionAnimation$10(final LauncherStateTransitionAnimation this$0, final Runnable val$onCompleteRunnable, final LauncherStateTransitionAnimation$PrivateTransitionCallbacks val$pCb) {
        this.this$0 = this$0;
        this.val$onCompleteRunnable = val$onCompleteRunnable;
        this.val$pCb = val$pCb;
        this.canceled = false;
    }
    
    public void onAnimationCancel(final Animator animator) {
        this.canceled = true;
    }
    
    public void onAnimationEnd(final Animator animator) {
        if (this.canceled) {
            return;
        }
        if (this.val$onCompleteRunnable != null) {
            this.val$onCompleteRunnable.run();
        }
        this.this$0.cleanupAnimation();
        this.val$pCb.onTransitionComplete();
    }
}

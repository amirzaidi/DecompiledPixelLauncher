// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.Animator;
import android.view.View;
import android.animation.AnimatorListenerAdapter;

final class LauncherStateTransitionAnimation$9 extends AnimatorListenerAdapter
{
    final /* synthetic */ LauncherStateTransitionAnimation this$0;
    final /* synthetic */ View val$contentView;
    final /* synthetic */ BaseContainerView val$fromView;
    final /* synthetic */ Runnable val$onCompleteRunnable;
    final /* synthetic */ LauncherStateTransitionAnimation$PrivateTransitionCallbacks val$pCb;
    
    LauncherStateTransitionAnimation$9(final LauncherStateTransitionAnimation this$0, final BaseContainerView val$fromView, final Runnable val$onCompleteRunnable, final View val$contentView, final LauncherStateTransitionAnimation$PrivateTransitionCallbacks val$pCb) {
        this.this$0 = this$0;
        this.val$fromView = val$fromView;
        this.val$onCompleteRunnable = val$onCompleteRunnable;
        this.val$contentView = val$contentView;
        this.val$pCb = val$pCb;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.val$fromView.setVisibility(8);
        if (this.val$onCompleteRunnable != null) {
            this.val$onCompleteRunnable.run();
        }
        if (this.val$contentView != null) {
            this.val$contentView.setTranslationX(0.0f);
            this.val$contentView.setTranslationY(0.0f);
            this.val$contentView.setAlpha(1.0f);
        }
        this.this$0.cleanupAnimation();
        this.val$pCb.onTransitionComplete();
    }
}

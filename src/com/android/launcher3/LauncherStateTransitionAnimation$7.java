// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class LauncherStateTransitionAnimation$7 extends AnimatorListenerAdapter
{
    final /* synthetic */ LauncherStateTransitionAnimation this$0;
    final /* synthetic */ Runnable val$onCompleteRunnable;
    
    LauncherStateTransitionAnimation$7(final LauncherStateTransitionAnimation this$0, final Runnable val$onCompleteRunnable) {
        this.this$0 = this$0;
        this.val$onCompleteRunnable = val$onCompleteRunnable;
    }
    
    public void onAnimationEnd(final Animator animator) {
        if (this.val$onCompleteRunnable != null) {
            this.val$onCompleteRunnable.run();
        }
        this.this$0.cleanupAnimation();
    }
}

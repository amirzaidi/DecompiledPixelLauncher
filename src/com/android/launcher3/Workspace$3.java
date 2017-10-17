// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class Workspace$3 extends AnimatorListenerAdapter
{
    final /* synthetic */ Workspace this$0;
    final /* synthetic */ Runnable val$onComplete;
    
    Workspace$3(final Workspace this$0, final Runnable val$onComplete) {
        this.this$0 = this$0;
        this.val$onComplete = val$onComplete;
    }
    
    public void onAnimationEnd(final Animator animator) {
        if (this.this$0.mRemoveEmptyScreenRunnable != null) {
            this.this$0.mRemoveEmptyScreenRunnable.run();
        }
        if (this.val$onComplete != null) {
            this.val$onComplete.run();
        }
    }
}

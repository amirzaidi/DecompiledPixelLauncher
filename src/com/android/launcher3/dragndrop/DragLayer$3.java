// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class DragLayer$3 extends AnimatorListenerAdapter
{
    final /* synthetic */ DragLayer this$0;
    final /* synthetic */ int val$animationEndStyle;
    final /* synthetic */ Runnable val$onCompleteRunnable;
    
    DragLayer$3(final DragLayer this$0, final Runnable val$onCompleteRunnable, final int val$animationEndStyle) {
        this.this$0 = this$0;
        this.val$onCompleteRunnable = val$onCompleteRunnable;
        this.val$animationEndStyle = val$animationEndStyle;
    }
    
    public void onAnimationEnd(final Animator animator) {
        if (this.val$onCompleteRunnable != null) {
            this.val$onCompleteRunnable.run();
        }
        switch (this.val$animationEndStyle) {
            case 0: {
                this.this$0.clearAnimatedView();
                break;
            }
        }
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.Animator;
import android.view.View;
import android.animation.AnimatorListenerAdapter;

final class PinchAnimationManager$3 extends AnimatorListenerAdapter
{
    private boolean mCancelled;
    final /* synthetic */ PinchAnimationManager this$0;
    final /* synthetic */ View val$view;
    
    PinchAnimationManager$3(final PinchAnimationManager this$0, final View val$view) {
        this.this$0 = this$0;
        this.val$view = val$view;
        this.mCancelled = false;
    }
    
    public void onAnimationCancel(final Animator animator) {
        this.mCancelled = true;
    }
    
    public void onAnimationEnd(final Animator animator) {
        if (!this.mCancelled) {
            this.val$view.setVisibility(4);
        }
    }
}

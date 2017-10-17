// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class InterruptibleInOutAnimator$1 extends AnimatorListenerAdapter
{
    final /* synthetic */ InterruptibleInOutAnimator this$0;
    
    InterruptibleInOutAnimator$1(final InterruptibleInOutAnimator this$0) {
        this.this$0 = this$0;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.this$0.mDirection = 0;
    }
}

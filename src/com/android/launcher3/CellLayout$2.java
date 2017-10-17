// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.ValueAnimator;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class CellLayout$2 extends AnimatorListenerAdapter
{
    final /* synthetic */ CellLayout this$0;
    final /* synthetic */ InterruptibleInOutAnimator val$anim;
    
    CellLayout$2(final CellLayout this$0, final InterruptibleInOutAnimator val$anim) {
        this.this$0 = this$0;
        this.val$anim = val$anim;
    }
    
    public void onAnimationEnd(final Animator animator) {
        if ((float)((ValueAnimator)animator).getAnimatedValue() == 0.0f) {
            this.val$anim.setTag(null);
        }
    }
}

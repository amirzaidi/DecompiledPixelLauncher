// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.animation.ValueAnimator;

final class FirstFrameAnimatorHelper$2 implements Runnable
{
    final /* synthetic */ FirstFrameAnimatorHelper this$0;
    final /* synthetic */ ValueAnimator val$animation;
    
    FirstFrameAnimatorHelper$2(final FirstFrameAnimatorHelper this$0, final ValueAnimator val$animation) {
        this.this$0 = this$0;
        this.val$animation = val$animation;
    }
    
    public void run() {
        this.val$animation.removeUpdateListener((ValueAnimator$AnimatorUpdateListener)this.this$0);
    }
}

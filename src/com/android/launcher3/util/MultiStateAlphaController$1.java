// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class MultiStateAlphaController$1 implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ MultiStateAlphaController this$0;
    final /* synthetic */ int val$index;
    
    MultiStateAlphaController$1(final MultiStateAlphaController this$0, final int val$index) {
        this.this$0 = this$0;
        this.val$index = val$index;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        this.this$0.setAlphaAtIndex((float)valueAnimator.getAnimatedValue(), this.val$index);
    }
}

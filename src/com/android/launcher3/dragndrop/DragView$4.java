// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class DragView$4 implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ DragView this$0;
    
    DragView$4(final DragView this$0) {
        this.this$0 = this$0;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        this.this$0.mCrossFadeProgress = valueAnimator.getAnimatedFraction();
        this.this$0.invalidate();
    }
}

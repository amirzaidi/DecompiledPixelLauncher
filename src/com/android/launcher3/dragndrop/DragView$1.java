// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class DragView$1 implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ DragView this$0;
    final /* synthetic */ float val$initialScale;
    final /* synthetic */ float val$scale;
    
    DragView$1(final DragView this$0, final float val$initialScale, final float val$scale) {
        this.this$0 = this$0;
        this.val$initialScale = val$initialScale;
        this.val$scale = val$scale;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        final float n = 1.0f;
        final float floatValue = (float)valueAnimator.getAnimatedValue();
        this.this$0.setScaleX(this.val$initialScale + (this.val$scale - this.val$initialScale) * floatValue);
        this.this$0.setScaleY(this.val$initialScale + (this.val$scale - this.val$initialScale) * floatValue);
        if (DragView.sDragAlpha != n) {
            this.this$0.setAlpha(n - floatValue + DragView.sDragAlpha * floatValue);
        }
        if (this.this$0.getParent() == null) {
            valueAnimator.cancel();
        }
    }
}

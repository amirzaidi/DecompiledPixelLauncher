// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class CellLayout$ReorderPreviewAnimation$1 implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ CellLayout$ReorderPreviewAnimation this$1;
    
    CellLayout$ReorderPreviewAnimation$1(final CellLayout$ReorderPreviewAnimation this$1) {
        this.this$1 = this$1;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        final float n = 1.0f;
        final float floatValue = (float)valueAnimator.getAnimatedValue();
        float n2;
        if (this.this$1.mode == 0 && this.this$1.repeating) {
            n2 = n;
        }
        else {
            n2 = floatValue;
        }
        final float translationX = this.this$1.finalDeltaX * n2 + (n - n2) * this.this$1.initDeltaX;
        final float translationY = (n - n2) * this.this$1.initDeltaY + this.this$1.finalDeltaY * n2;
        this.this$1.child.setTranslationX(translationX);
        this.this$1.child.setTranslationY(translationY);
        final float n3 = this.this$1.finalScale * floatValue + (n - floatValue) * this.this$1.initScale;
        this.this$1.child.setScaleX(n3);
        this.this$1.child.setScaleY(n3);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.graphics.Bitmap;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class CellLayout$1 implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ CellLayout this$0;
    final /* synthetic */ InterruptibleInOutAnimator val$anim;
    final /* synthetic */ int val$thisIndex;
    
    CellLayout$1(final CellLayout this$0, final InterruptibleInOutAnimator val$anim, final int val$thisIndex) {
        this.this$0 = this$0;
        this.val$anim = val$anim;
        this.val$thisIndex = val$thisIndex;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        if (this.val$anim.getTag() == null) {
            valueAnimator.cancel();
        }
        else {
            this.this$0.mDragOutlineAlphas[this.val$thisIndex] = (float)valueAnimator.getAnimatedValue();
            this.this$0.invalidate(this.this$0.mDragOutlines[this.val$thisIndex]);
        }
    }
}

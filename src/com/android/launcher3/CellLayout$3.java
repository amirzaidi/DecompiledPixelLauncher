// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.ValueAnimator;
import android.view.View;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class CellLayout$3 implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ CellLayout this$0;
    final /* synthetic */ View val$child;
    final /* synthetic */ CellLayout$LayoutParams val$lp;
    final /* synthetic */ int val$newX;
    final /* synthetic */ int val$newY;
    final /* synthetic */ int val$oldX;
    final /* synthetic */ int val$oldY;
    
    CellLayout$3(final CellLayout this$0, final CellLayout$LayoutParams val$lp, final int val$oldX, final int val$newX, final int val$oldY, final int val$newY, final View val$child) {
        this.this$0 = this$0;
        this.val$lp = val$lp;
        this.val$oldX = val$oldX;
        this.val$newX = val$newX;
        this.val$oldY = val$oldY;
        this.val$newY = val$newY;
        this.val$child = val$child;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        final float n = 1.0f;
        final float floatValue = (float)valueAnimator.getAnimatedValue();
        this.val$lp.x = (int)((n - floatValue) * this.val$oldX + this.val$newX * floatValue);
        this.val$lp.y = (int)(floatValue * this.val$newY + (n - floatValue) * this.val$oldY);
        this.val$child.requestLayout();
    }
}

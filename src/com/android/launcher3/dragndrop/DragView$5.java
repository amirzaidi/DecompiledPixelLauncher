// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.graphics.ColorFilter;
import android.graphics.ColorMatrixColorFilter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class DragView$5 implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ DragView this$0;
    
    DragView$5(final DragView this$0) {
        this.this$0 = this$0;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        this.this$0.mPaint.setColorFilter((ColorFilter)new ColorMatrixColorFilter(this.this$0.mCurrentFilter));
        this.this$0.invalidate();
    }
}

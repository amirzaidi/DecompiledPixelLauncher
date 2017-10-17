// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.graphics.ColorFilter;
import android.graphics.ColorMatrixColorFilter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class ButtonDropTarget$1 implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ ButtonDropTarget this$0;
    
    ButtonDropTarget$1(final ButtonDropTarget this$0) {
        this.this$0 = this$0;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        this.this$0.mDrawable.setColorFilter((ColorFilter)new ColorMatrixColorFilter(this.this$0.mCurrentFilter));
        this.this$0.invalidate();
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class AppWidgetResizeFrame$2 implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ AppWidgetResizeFrame this$0;
    
    AppWidgetResizeFrame$2(final AppWidgetResizeFrame this$0) {
        this.this$0 = this$0;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        this.this$0.requestLayout();
    }
}

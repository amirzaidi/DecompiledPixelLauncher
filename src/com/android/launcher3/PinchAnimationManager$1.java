// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class PinchAnimationManager$1 implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ PinchAnimationManager this$0;
    final /* synthetic */ PinchThresholdManager val$thresholdManager;
    
    PinchAnimationManager$1(final PinchAnimationManager this$0, final PinchThresholdManager val$thresholdManager) {
        this.this$0 = this$0;
        this.val$thresholdManager = val$thresholdManager;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        final float floatValue = (float)valueAnimator.getAnimatedValue();
        this.this$0.setAnimationProgress(floatValue);
        this.val$thresholdManager.updateAndAnimatePassedThreshold(floatValue, this.this$0);
    }
}

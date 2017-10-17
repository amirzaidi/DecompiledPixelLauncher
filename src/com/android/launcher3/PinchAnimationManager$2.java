// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.animation.ValueAnimator;
import android.util.Log;
import android.animation.TimeInterpolator;
import android.util.Property;
import android.animation.Animator$AnimatorListener;
import com.android.launcher3.anim.AnimationLayerSet;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class PinchAnimationManager$2 extends AnimatorListenerAdapter
{
    final /* synthetic */ PinchAnimationManager this$0;
    final /* synthetic */ PinchThresholdManager val$thresholdManager;
    
    PinchAnimationManager$2(final PinchAnimationManager this$0, final PinchThresholdManager val$thresholdManager) {
        this.this$0 = this$0;
        this.val$thresholdManager = val$thresholdManager;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.this$0.mIsAnimating = false;
        this.val$thresholdManager.reset();
        this.this$0.mWorkspace.onEndStateTransition();
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.notification;

import android.animation.ValueAnimator;
import android.view.View;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class SwipeHelper$4 implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ SwipeHelper this$0;
    final /* synthetic */ View val$animView;
    final /* synthetic */ boolean val$canBeDismissed;
    
    SwipeHelper$4(final SwipeHelper this$0, final View val$animView, final boolean val$canBeDismissed) {
        this.this$0 = this$0;
        this.val$animView = val$animView;
        this.val$canBeDismissed = val$canBeDismissed;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        this.this$0.onTranslationUpdate(this.val$animView, (float)valueAnimator.getAnimatedValue(), this.val$canBeDismissed);
    }
}

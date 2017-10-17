// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import android.view.ViewGroup$MarginLayoutParams;
import android.animation.ValueAnimator;
import android.view.View;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class PopupContainerWithArrow$4 implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ PopupContainerWithArrow this$0;
    final /* synthetic */ View val$removeMarginView;
    final /* synthetic */ int val$spacing;
    
    PopupContainerWithArrow$4(final PopupContainerWithArrow this$0, final View val$removeMarginView, final int val$spacing) {
        this.this$0 = this$0;
        this.val$removeMarginView = val$removeMarginView;
        this.val$spacing = val$spacing;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        ((ViewGroup$MarginLayoutParams)this.val$removeMarginView.getLayoutParams()).bottomMargin = (int)((float)valueAnimator.getAnimatedValue() * this.val$spacing);
    }
}

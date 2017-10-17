// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class PopupContainerWithArrow$7 extends AnimatorListenerAdapter
{
    final /* synthetic */ PopupContainerWithArrow this$0;
    final /* synthetic */ PopupItemView val$view;
    
    PopupContainerWithArrow$7(final PopupContainerWithArrow this$0, final PopupItemView val$view) {
        this.this$0 = this$0;
        this.val$view = val$view;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.val$view.setVisibility(4);
    }
}

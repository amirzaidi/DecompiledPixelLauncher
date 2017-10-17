// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class PopupContainerWithArrow$1 extends AnimatorListenerAdapter
{
    final /* synthetic */ PopupContainerWithArrow this$0;
    final /* synthetic */ PopupItemView val$popupItemView;
    
    PopupContainerWithArrow$1(final PopupContainerWithArrow this$0, final PopupItemView val$popupItemView) {
        this.this$0 = this$0;
        this.val$popupItemView = val$popupItemView;
    }
    
    public void onAnimationStart(final Animator animator) {
        this.val$popupItemView.setVisibility(0);
    }
}

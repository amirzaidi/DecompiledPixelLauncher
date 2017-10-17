// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import android.view.View;
import com.android.launcher3.Utilities;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class PopupContainerWithArrow$1 extends AnimatorListenerAdapter
{
    final /* synthetic */ PopupContainerWithArrow this$0;
    
    PopupContainerWithArrow$1(final PopupContainerWithArrow this$0) {
        this.this$0 = this$0;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.this$0.mOpenCloseAnimator = null;
        Utilities.sendCustomAccessibilityEvent((View)this.this$0, 32, this.this$0.getContext().getString(2131492998));
    }
}

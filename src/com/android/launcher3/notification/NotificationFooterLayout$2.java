// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.notification;

import android.view.ViewGroup;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class NotificationFooterLayout$2 extends AnimatorListenerAdapter
{
    final /* synthetic */ NotificationFooterLayout this$0;
    
    NotificationFooterLayout$2(final NotificationFooterLayout this$0) {
        this.this$0 = this$0;
    }
    
    public void onAnimationEnd(final Animator animator) {
        ((ViewGroup)this.this$0.getParent()).findViewById(2131624003).setVisibility(8);
        this.this$0.getLayoutParams().height = 0;
        this.this$0.requestLayout();
    }
}

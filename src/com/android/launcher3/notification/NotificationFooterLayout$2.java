// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.notification;

import android.view.View;
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
        ((ViewGroup)this.this$0.getParent()).removeView((View)this.this$0);
    }
}

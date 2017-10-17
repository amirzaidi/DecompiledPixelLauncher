// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.Animator;
import android.view.View;
import android.animation.AnimatorListenerAdapter;

final class LauncherStateTransitionAnimation$6$1 extends AnimatorListenerAdapter
{
    final /* synthetic */ LauncherStateTransitionAnimation$6 this$1;
    final /* synthetic */ View val$revealView;
    
    LauncherStateTransitionAnimation$6$1(final LauncherStateTransitionAnimation$6 this$1, final View val$revealView) {
        this.this$1 = this$1;
        this.val$revealView = val$revealView;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.val$revealView.setVisibility(4);
    }
}

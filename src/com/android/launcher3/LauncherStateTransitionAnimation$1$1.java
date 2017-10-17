// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.Animator;
import android.view.View;
import android.animation.AnimatorListenerAdapter;

final class LauncherStateTransitionAnimation$1$1 extends AnimatorListenerAdapter
{
    final /* synthetic */ LauncherStateTransitionAnimation$1 this$1;
    final /* synthetic */ View val$allAppsButtonView;
    
    LauncherStateTransitionAnimation$1$1(final LauncherStateTransitionAnimation$1 this$1, final View val$allAppsButtonView) {
        this.this$1 = this$1;
        this.val$allAppsButtonView = val$allAppsButtonView;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.val$allAppsButtonView.setVisibility(0);
    }
    
    public void onAnimationStart(final Animator animator) {
        this.val$allAppsButtonView.setVisibility(4);
    }
}

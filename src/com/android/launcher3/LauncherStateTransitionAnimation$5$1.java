// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.Animator;
import android.view.View;
import android.animation.AnimatorListenerAdapter;

final class LauncherStateTransitionAnimation$5$1 extends AnimatorListenerAdapter
{
    final /* synthetic */ LauncherStateTransitionAnimation$5 this$1;
    final /* synthetic */ View val$allAppsButtonView;
    final /* synthetic */ View val$revealView;
    
    LauncherStateTransitionAnimation$5$1(final LauncherStateTransitionAnimation$5 this$1, final View val$allAppsButtonView, final View val$revealView) {
        this.this$1 = this$1;
        this.val$allAppsButtonView = val$allAppsButtonView;
        this.val$revealView = val$revealView;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.val$revealView.setVisibility(4);
        this.val$allAppsButtonView.setAlpha(1.0f);
    }
    
    public void onAnimationStart(final Animator animator) {
        this.val$allAppsButtonView.setVisibility(0);
        this.val$allAppsButtonView.setAlpha(0.0f);
    }
}

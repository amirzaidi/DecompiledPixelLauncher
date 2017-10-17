// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.os.Bundle;
import android.animation.Animator;
import android.view.ViewGroup;
import android.animation.AnimatorListenerAdapter;

final class WorkspaceStateTransitionAnimation$1 extends AnimatorListenerAdapter
{
    boolean canceled;
    final /* synthetic */ WorkspaceStateTransitionAnimation this$0;
    final /* synthetic */ boolean val$accessibilityEnabled;
    final /* synthetic */ ViewGroup val$overviewPanel;
    final /* synthetic */ TransitionStates val$states;
    
    WorkspaceStateTransitionAnimation$1(final WorkspaceStateTransitionAnimation this$0, final TransitionStates val$states, final boolean val$accessibilityEnabled, final ViewGroup val$overviewPanel) {
        this.this$0 = this$0;
        this.val$states = val$states;
        this.val$accessibilityEnabled = val$accessibilityEnabled;
        this.val$overviewPanel = val$overviewPanel;
        this.canceled = false;
    }
    
    public void onAnimationCancel(final Animator animator) {
        this.canceled = true;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.this$0.mStateAnimator = null;
        if (this.canceled) {
            return;
        }
        if (this.val$accessibilityEnabled && this.val$overviewPanel.getVisibility() == 0) {
            this.val$overviewPanel.getChildAt(0).performAccessibilityAction(64, (Bundle)null);
        }
    }
    
    public void onAnimationStart(final Animator animator) {
        this.this$0.mWorkspace.getPageIndicator().setShouldAutoHide(this.val$states.stateIsSpringLoaded ^ true);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.Animator;
import android.view.View;
import android.animation.AnimatorListenerAdapter;

final class CellLayout$4 extends AnimatorListenerAdapter
{
    boolean cancelled;
    final /* synthetic */ CellLayout this$0;
    final /* synthetic */ View val$child;
    final /* synthetic */ CellLayout$LayoutParams val$lp;
    
    CellLayout$4(final CellLayout this$0, final CellLayout$LayoutParams val$lp, final View val$child) {
        this.this$0 = this$0;
        this.val$lp = val$lp;
        this.val$child = val$child;
        this.cancelled = false;
    }
    
    public void onAnimationCancel(final Animator animator) {
        this.cancelled = true;
    }
    
    public void onAnimationEnd(final Animator animator) {
        if (!this.cancelled) {
            this.val$lp.isLockedToGrid = true;
            this.val$child.requestLayout();
        }
        if (this.this$0.mReorderAnimators.containsKey((Object)this.val$lp)) {
            this.this$0.mReorderAnimators.remove((Object)this.val$lp);
        }
    }
}

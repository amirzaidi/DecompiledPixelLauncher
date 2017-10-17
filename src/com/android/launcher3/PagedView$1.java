// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.View;
import android.view.ViewGroup;
import android.animation.LayoutTransition;
import android.animation.LayoutTransition$TransitionListener;

final class PagedView$1 implements LayoutTransition$TransitionListener
{
    final /* synthetic */ PagedView this$0;
    
    PagedView$1(final PagedView this$0) {
        this.this$0 = this$0;
    }
    
    public void endTransition(final LayoutTransition layoutTransition, final ViewGroup viewGroup, final View view, final int n) {
        if (!layoutTransition.isRunning()) {
            layoutTransition.removeTransitionListener((LayoutTransition$TransitionListener)this);
            this.this$0.updateMaxScrollX();
        }
    }
    
    public void startTransition(final LayoutTransition layoutTransition, final ViewGroup viewGroup, final View view, final int n) {
    }
}

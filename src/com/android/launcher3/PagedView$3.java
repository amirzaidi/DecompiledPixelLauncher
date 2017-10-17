// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class PagedView$3 extends AnimatorListenerAdapter
{
    final /* synthetic */ PagedView this$0;
    
    PagedView$3(final PagedView this$0) {
        this.this$0 = this$0;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.this$0.onPostReorderingAnimationCompleted();
    }
}

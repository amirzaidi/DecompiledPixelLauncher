// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class CellLayout$ReorderPreviewAnimation$2 extends AnimatorListenerAdapter
{
    final /* synthetic */ CellLayout$ReorderPreviewAnimation this$1;
    
    CellLayout$ReorderPreviewAnimation$2(final CellLayout$ReorderPreviewAnimation this$1) {
        this.this$1 = this$1;
    }
    
    public void onAnimationRepeat(final Animator animator) {
        final boolean b = true;
        this.this$1.setInitialAnimationValues(b);
        this.this$1.repeating = b;
    }
}

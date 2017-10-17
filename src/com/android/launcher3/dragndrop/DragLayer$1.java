// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.view.View;

final class DragLayer$1 implements Runnable
{
    final /* synthetic */ DragLayer this$0;
    final /* synthetic */ View val$child;
    final /* synthetic */ Runnable val$onFinishAnimationRunnable;
    
    DragLayer$1(final DragLayer this$0, final View val$child, final Runnable val$onFinishAnimationRunnable) {
        this.this$0 = this$0;
        this.val$child = val$child;
        this.val$onFinishAnimationRunnable = val$onFinishAnimationRunnable;
    }
    
    public void run() {
        this.val$child.setVisibility(0);
        if (this.val$onFinishAnimationRunnable != null) {
            this.val$onFinishAnimationRunnable.run();
        }
    }
}

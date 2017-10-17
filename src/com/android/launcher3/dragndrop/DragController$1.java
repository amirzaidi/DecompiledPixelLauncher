// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.view.View;

final class DragController$1 implements Runnable
{
    final /* synthetic */ DragController this$0;
    final /* synthetic */ Runnable val$onComplete;
    final /* synthetic */ View val$originalIcon;
    
    DragController$1(final DragController this$0, final View val$originalIcon, final Runnable val$onComplete) {
        this.this$0 = this$0;
        this.val$originalIcon = val$originalIcon;
        this.val$onComplete = val$onComplete;
    }
    
    public void run() {
        if (this.val$originalIcon != null) {
            this.val$originalIcon.setVisibility(0);
        }
        if (this.val$onComplete != null) {
            this.val$onComplete.run();
        }
    }
}

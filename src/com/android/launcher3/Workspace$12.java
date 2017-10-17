// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.View;

final class Workspace$12 implements Runnable
{
    final /* synthetic */ Workspace this$0;
    final /* synthetic */ View val$finalView;
    final /* synthetic */ Runnable val$onCompleteRunnable;
    
    Workspace$12(final Workspace this$0, final View val$finalView, final Runnable val$onCompleteRunnable) {
        this.this$0 = this$0;
        this.val$finalView = val$finalView;
        this.val$onCompleteRunnable = val$onCompleteRunnable;
    }
    
    public void run() {
        if (this.val$finalView != null) {
            this.val$finalView.setVisibility(0);
        }
        if (this.val$onCompleteRunnable != null) {
            this.val$onCompleteRunnable.run();
        }
    }
}

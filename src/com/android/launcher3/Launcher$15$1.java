// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.ViewTreeObserver$OnDrawListener;

final class Launcher$15$1 implements Runnable
{
    final /* synthetic */ Launcher$15 this$1;
    final /* synthetic */ ViewTreeObserver$OnDrawListener val$listener;
    
    Launcher$15$1(final Launcher$15 this$1, final ViewTreeObserver$OnDrawListener val$listener) {
        this.this$1 = this$1;
        this.val$listener = val$listener;
    }
    
    public void run() {
        if (this.this$1.this$0.mWorkspace != null && this.this$1.this$0.mWorkspace.getViewTreeObserver() != null) {
            this.this$1.this$0.mWorkspace.getViewTreeObserver().removeOnDrawListener(this.val$listener);
        }
    }
}

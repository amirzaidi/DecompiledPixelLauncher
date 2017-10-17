// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.util.ViewOnDrawExecutor;

final class Launcher$29 implements Runnable
{
    final /* synthetic */ Launcher this$0;
    final /* synthetic */ ViewOnDrawExecutor val$executor;
    
    Launcher$29(final Launcher this$0, final ViewOnDrawExecutor val$executor) {
        this.this$0 = this$0;
        this.val$executor = val$executor;
    }
    
    public void run() {
        this.this$0.finishFirstPageBind(this.val$executor);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

final class Launcher$34 implements Runnable
{
    final /* synthetic */ Launcher this$0;
    final /* synthetic */ PromiseAppInfo val$app;
    
    Launcher$34(final Launcher this$0, final PromiseAppInfo val$app) {
        this.this$0 = this$0;
        this.val$app = val$app;
    }
    
    public void run() {
        this.this$0.bindPromiseAppProgressUpdated(this.val$app);
    }
}

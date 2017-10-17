// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

class DeferredHandler$IdleRunnable implements Runnable
{
    Runnable mRunnable;
    final /* synthetic */ DeferredHandler this$0;
    
    DeferredHandler$IdleRunnable(final DeferredHandler this$0, final Runnable mRunnable) {
        this.this$0 = this$0;
        this.mRunnable = mRunnable;
    }
    
    public void run() {
        this.mRunnable.run();
    }
}

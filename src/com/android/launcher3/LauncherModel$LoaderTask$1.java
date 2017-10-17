// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

final class LauncherModel$LoaderTask$1 implements Runnable
{
    final /* synthetic */ LauncherModel$LoaderTask this$1;
    
    LauncherModel$LoaderTask$1(final LauncherModel$LoaderTask this$1) {
        this.this$1 = this$1;
    }
    
    public void run() {
        synchronized (this.this$1) {
            this.this$1.mLoadAndBindStepFinished = true;
            this.this$1.notify();
        }
    }
}

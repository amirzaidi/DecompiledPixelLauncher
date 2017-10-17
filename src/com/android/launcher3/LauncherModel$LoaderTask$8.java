// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.util.ViewOnDrawExecutor;
import java.util.concurrent.Executor;

final class LauncherModel$LoaderTask$8 implements Runnable
{
    final /* synthetic */ LauncherModel$LoaderTask this$1;
    final /* synthetic */ Executor val$deferredExecutor;
    final /* synthetic */ LauncherModel$Callbacks val$oldCallbacks;
    final /* synthetic */ boolean val$validFirstPage;
    
    LauncherModel$LoaderTask$8(final LauncherModel$LoaderTask this$1, final LauncherModel$Callbacks val$oldCallbacks, final boolean val$validFirstPage, final Executor val$deferredExecutor) {
        this.this$1 = this$1;
        this.val$oldCallbacks = val$oldCallbacks;
        this.val$validFirstPage = val$validFirstPage;
        this.val$deferredExecutor = val$deferredExecutor;
    }
    
    public void run() {
        ViewOnDrawExecutor viewOnDrawExecutor = null;
        final LauncherModel$Callbacks tryGetCallbacks = this.this$1.tryGetCallbacks(this.val$oldCallbacks);
        if (tryGetCallbacks != null) {
            if (this.val$validFirstPage) {
                viewOnDrawExecutor = (ViewOnDrawExecutor)this.val$deferredExecutor;
            }
            tryGetCallbacks.finishFirstPageBind(viewOnDrawExecutor);
        }
    }
}

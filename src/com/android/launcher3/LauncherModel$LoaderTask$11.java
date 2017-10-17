// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.os.SystemClock;
import java.util.ArrayList;

final class LauncherModel$LoaderTask$11 implements Runnable
{
    final /* synthetic */ LauncherModel$LoaderTask this$1;
    final /* synthetic */ ArrayList val$list;
    final /* synthetic */ LauncherModel$Callbacks val$oldCallbacks;
    
    LauncherModel$LoaderTask$11(final LauncherModel$LoaderTask this$1, final LauncherModel$Callbacks val$oldCallbacks, final ArrayList val$list) {
        this.this$1 = this$1;
        this.val$oldCallbacks = val$oldCallbacks;
        this.val$list = val$list;
    }
    
    public void run() {
        SystemClock.uptimeMillis();
        final LauncherModel$Callbacks tryGetCallbacks = this.this$1.tryGetCallbacks(this.val$oldCallbacks);
        if (tryGetCallbacks != null) {
            tryGetCallbacks.bindAllApplications(this.val$list);
        }
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.util.Log;
import android.os.SystemClock;
import java.util.ArrayList;

final class LauncherModel$LoaderTask$14 implements Runnable
{
    final /* synthetic */ LauncherModel$LoaderTask this$1;
    final /* synthetic */ ArrayList val$added;
    final /* synthetic */ LauncherModel$Callbacks val$oldCallbacks;
    
    LauncherModel$LoaderTask$14(final LauncherModel$LoaderTask this$1, final LauncherModel$Callbacks val$oldCallbacks, final ArrayList val$added) {
        this.this$1 = this$1;
        this.val$oldCallbacks = val$oldCallbacks;
        this.val$added = val$added;
    }
    
    public void run() {
        SystemClock.uptimeMillis();
        final LauncherModel$Callbacks tryGetCallbacks = this.this$1.tryGetCallbacks(this.val$oldCallbacks);
        if (tryGetCallbacks != null) {
            tryGetCallbacks.bindAllApplications(this.val$added);
        }
        else {
            Log.i("Launcher.Model", "not binding apps: no Launcher activity");
        }
    }
}

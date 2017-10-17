// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.content.Context;
import com.android.launcher3.compat.LauncherAppsCompat;
import android.os.UserHandle;
import android.content.ComponentName;

final class UninstallDropTarget$1 implements Runnable
{
    final /* synthetic */ UninstallDropTarget$DropTargetResultCallback val$callback;
    final /* synthetic */ ComponentName val$cn;
    final /* synthetic */ Launcher val$launcher;
    final /* synthetic */ UserHandle val$user;
    
    UninstallDropTarget$1(final Launcher val$launcher, final ComponentName val$cn, final UserHandle val$user, final UninstallDropTarget$DropTargetResultCallback val$callback) {
        this.val$launcher = val$launcher;
        this.val$cn = val$cn;
        this.val$user = val$user;
        this.val$callback = val$callback;
    }
    
    public void run() {
        this.val$callback.onDragObjectRemoved(LauncherAppsCompat.getInstance((Context)this.val$launcher).getApplicationInfo(this.val$cn.getPackageName(), 8192, this.val$user) == null);
    }
}

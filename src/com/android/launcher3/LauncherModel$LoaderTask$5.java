// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.ArrayList;

final class LauncherModel$LoaderTask$5 implements Runnable
{
    final /* synthetic */ LauncherModel$LoaderTask this$1;
    final /* synthetic */ int val$chunkSize;
    final /* synthetic */ LauncherModel$Callbacks val$oldCallbacks;
    final /* synthetic */ int val$start;
    final /* synthetic */ ArrayList val$workspaceItems;
    
    LauncherModel$LoaderTask$5(final LauncherModel$LoaderTask this$1, final LauncherModel$Callbacks val$oldCallbacks, final ArrayList val$workspaceItems, final int val$start, final int val$chunkSize) {
        this.this$1 = this$1;
        this.val$oldCallbacks = val$oldCallbacks;
        this.val$workspaceItems = val$workspaceItems;
        this.val$start = val$start;
        this.val$chunkSize = val$chunkSize;
    }
    
    public void run() {
        final LauncherModel$Callbacks tryGetCallbacks = this.this$1.tryGetCallbacks(this.val$oldCallbacks);
        if (tryGetCallbacks != null) {
            tryGetCallbacks.bindItems(this.val$workspaceItems, this.val$start, this.val$start + this.val$chunkSize, false);
        }
    }
}

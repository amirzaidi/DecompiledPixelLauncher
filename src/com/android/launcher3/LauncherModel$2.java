// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

final class LauncherModel$2 implements Runnable
{
    final /* synthetic */ ItemInfo val$item;
    final /* synthetic */ long val$itemId;
    final /* synthetic */ StackTraceElement[] val$stackTrace;
    
    LauncherModel$2(final long val$itemId, final ItemInfo val$item, final StackTraceElement[] val$stackTrace) {
        this.val$itemId = val$itemId;
        this.val$item = val$item;
        this.val$stackTrace = val$stackTrace;
    }
    
    public void run() {
        synchronized (LauncherModel.sBgDataModel) {
            LauncherModel.checkItemInfoLocked(this.val$itemId, this.val$item, this.val$stackTrace);
        }
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

final class Workspace$11 implements Runnable
{
    final /* synthetic */ Workspace this$0;
    final /* synthetic */ long val$container;
    final /* synthetic */ ItemInfo val$item;
    final /* synthetic */ PendingAddItemInfo val$pendingInfo;
    final /* synthetic */ long val$screenId;
    
    Workspace$11(final Workspace this$0, final PendingAddItemInfo val$pendingInfo, final long val$container, final long val$screenId, final ItemInfo val$item) {
        this.this$0 = this$0;
        this.val$pendingInfo = val$pendingInfo;
        this.val$container = val$container;
        this.val$screenId = val$screenId;
        this.val$item = val$item;
    }
    
    public void run() {
        this.this$0.deferRemoveExtraEmptyScreen();
        this.this$0.mLauncher.addPendingItem(this.val$pendingInfo, this.val$container, this.val$screenId, this.this$0.mTargetCell, this.val$item.spanX, this.val$item.spanY);
    }
}

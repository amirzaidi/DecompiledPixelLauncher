// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

final class IconCache$1$1 implements Runnable
{
    final /* synthetic */ IconCache$1 this$1;
    final /* synthetic */ IconCache$ItemInfoUpdateReceiver val$caller;
    final /* synthetic */ ItemInfoWithIcon val$info;
    
    IconCache$1$1(final IconCache$1 this$1, final IconCache$ItemInfoUpdateReceiver val$caller, final ItemInfoWithIcon val$info) {
        this.this$1 = this$1;
        this.val$caller = val$caller;
        this.val$info = val$info;
    }
    
    public void run() {
        this.val$caller.reapplyItemInfo(this.val$info);
    }
}

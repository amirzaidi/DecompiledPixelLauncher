// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.model.PackageItemInfo;

final class IconCache$1 implements Runnable
{
    final /* synthetic */ IconCache this$0;
    final /* synthetic */ IconCache$ItemInfoUpdateReceiver val$caller;
    final /* synthetic */ ItemInfoWithIcon val$info;
    
    IconCache$1(final IconCache this$0, final ItemInfoWithIcon val$info, final IconCache$ItemInfoUpdateReceiver val$caller) {
        this.this$0 = this$0;
        this.val$info = val$info;
        this.val$caller = val$caller;
    }
    
    public void run() {
        if (this.val$info instanceof AppInfo || this.val$info instanceof ShortcutInfo) {
            this.this$0.getTitleAndIcon(this.val$info, false);
        }
        else if (this.val$info instanceof PackageItemInfo) {
            this.this$0.getTitleAndIconForApp((PackageItemInfo)this.val$info, false);
        }
        this.this$0.mMainThreadExecutor.execute(new IconCache$1$1(this, this.val$caller, this.val$info));
    }
}

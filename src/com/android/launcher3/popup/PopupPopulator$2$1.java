// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.Launcher;

final class PopupPopulator$2$1 implements Runnable
{
    final /* synthetic */ PopupPopulator$2 this$1;
    final /* synthetic */ Launcher val$launcher;
    final /* synthetic */ ItemInfo val$originalInfo;
    
    PopupPopulator$2$1(final PopupPopulator$2 this$1, final Launcher val$launcher, final ItemInfo val$originalInfo) {
        this.this$1 = this$1;
        this.val$launcher = val$launcher;
        this.val$originalInfo = val$originalInfo;
    }
    
    public void run() {
        this.val$launcher.refreshAndBindWidgetsForPackageUser(PackageUserKey.fromItemInfo(this.val$originalInfo));
    }
}

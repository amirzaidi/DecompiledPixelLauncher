// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.util.Provider;

final class InstallShortcutReceiver$PendingInstallShortcutInfo$1 extends Provider
{
    final /* synthetic */ InstallShortcutReceiver$PendingInstallShortcutInfo this$1;
    final /* synthetic */ LauncherAppState val$app;
    final /* synthetic */ ShortcutInfo val$si;
    
    InstallShortcutReceiver$PendingInstallShortcutInfo$1(final InstallShortcutReceiver$PendingInstallShortcutInfo this$1, final LauncherAppState val$app, final ShortcutInfo val$si) {
        this.this$1 = this$1;
        this.val$app = val$app;
        this.val$si = val$si;
    }
    
    public ShortcutInfo get() {
        this.val$app.getIconCache().getTitleAndIcon(this.val$si, this.this$1.activityInfo, false);
        return this.val$si;
    }
}

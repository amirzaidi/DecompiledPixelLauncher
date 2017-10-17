// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.graphics.LauncherIcons;
import com.android.launcher3.shortcuts.ShortcutInfoCompat;
import com.android.launcher3.util.Provider;

final class LauncherModel$6 extends Provider
{
    final /* synthetic */ LauncherModel this$0;
    final /* synthetic */ ShortcutInfoCompat val$info;
    final /* synthetic */ ShortcutInfo val$si;
    
    LauncherModel$6(final LauncherModel this$0, final ShortcutInfo val$si, final ShortcutInfoCompat val$info) {
        this.this$0 = this$0;
        this.val$si = val$si;
        this.val$info = val$info;
    }
    
    public ShortcutInfo get() {
        this.val$si.updateFromDeepShortcutInfo(this.val$info, this.this$0.mApp.getContext());
        this.val$si.iconBitmap = LauncherIcons.createShortcutIcon(this.val$info, this.this$0.mApp.getContext());
        return this.val$si;
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.ArrayList;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.util.Provider;
import com.android.launcher3.model.BaseModelUpdateTask;

final class LauncherModel$7 extends BaseModelUpdateTask
{
    final /* synthetic */ LauncherModel this$0;
    final /* synthetic */ Provider val$shortcutProvider;
    
    LauncherModel$7(final LauncherModel this$0, final Provider val$shortcutProvider) {
        this.this$0 = this$0;
        this.val$shortcutProvider = val$shortcutProvider;
    }
    
    public void execute(final LauncherAppState launcherAppState, final BgDataModel bgDataModel, final AllAppsList list) {
        final ShortcutInfo shortcutInfo = (ShortcutInfo)this.val$shortcutProvider.get();
        final ArrayList<ShortcutInfo> list2 = new ArrayList<ShortcutInfo>();
        list2.add(shortcutInfo);
        this.bindUpdatedShortcuts(list2, shortcutInfo.user);
    }
}

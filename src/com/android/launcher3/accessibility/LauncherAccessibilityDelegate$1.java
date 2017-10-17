// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.accessibility;

import com.android.launcher3.Workspace;
import com.android.launcher3.PendingAddItemInfo;
import com.android.launcher3.ShortcutInfo;
import java.util.ArrayList;
import com.android.launcher3.AppInfo;
import com.android.launcher3.ItemInfo;

final class LauncherAccessibilityDelegate$1 implements Runnable
{
    final /* synthetic */ LauncherAccessibilityDelegate this$0;
    final /* synthetic */ int[] val$coordinates;
    final /* synthetic */ ItemInfo val$item;
    final /* synthetic */ long val$screenId;
    
    LauncherAccessibilityDelegate$1(final LauncherAccessibilityDelegate this$0, final ItemInfo val$item, final long val$screenId, final int[] val$coordinates) {
        this.this$0 = this$0;
        this.val$item = val$item;
        this.val$screenId = val$screenId;
        this.val$coordinates = val$coordinates;
    }
    
    public void run() {
        final long n = -100;
        final int n2 = 1;
        if (this.val$item instanceof AppInfo) {
            final ShortcutInfo shortcut = ((AppInfo)this.val$item).makeShortcut();
            this.this$0.mLauncher.getModelWriter().addItemToDatabase(shortcut, n, this.val$screenId, this.val$coordinates[0], this.val$coordinates[n2]);
            final ArrayList<ShortcutInfo> list = new ArrayList<ShortcutInfo>();
            list.add(shortcut);
            this.this$0.mLauncher.bindItems(list, 0, list.size(), n2 != 0);
        }
        else if (this.val$item instanceof PendingAddItemInfo) {
            final PendingAddItemInfo pendingAddItemInfo = (PendingAddItemInfo)this.val$item;
            final Workspace workspace = this.this$0.mLauncher.getWorkspace();
            workspace.snapToPage(workspace.getPageIndexForScreenId(this.val$screenId));
            this.this$0.mLauncher.addPendingItem(pendingAddItemInfo, n, this.val$screenId, this.val$coordinates, pendingAddItemInfo.spanX, pendingAddItemInfo.spanY);
        }
        this.this$0.announceConfirmation(2131492976);
    }
}

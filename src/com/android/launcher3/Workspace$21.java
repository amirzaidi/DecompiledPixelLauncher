// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.View;
import java.util.Set;
import com.android.launcher3.util.PackageUserKey;
import java.util.HashSet;

final class Workspace$21 implements Workspace$ItemOperator
{
    final /* synthetic */ Workspace this$0;
    final /* synthetic */ HashSet val$folderIds;
    final /* synthetic */ PackageUserKey val$packageUserKey;
    final /* synthetic */ Set val$updatedBadges;
    
    Workspace$21(final Workspace this$0, final PackageUserKey val$packageUserKey, final Set val$updatedBadges, final HashSet val$folderIds) {
        this.this$0 = this$0;
        this.val$packageUserKey = val$packageUserKey;
        this.val$updatedBadges = val$updatedBadges;
        this.val$folderIds = val$folderIds;
    }
    
    public boolean evaluate(final ItemInfo itemInfo, final View view) {
        if (itemInfo instanceof ShortcutInfo && view instanceof BubbleTextView && this.val$packageUserKey.updateFromItemInfo(itemInfo) && this.val$updatedBadges.contains(this.val$packageUserKey)) {
            ((BubbleTextView)view).applyBadgeState(itemInfo, true);
            this.val$folderIds.add(itemInfo.container);
        }
        return false;
    }
}

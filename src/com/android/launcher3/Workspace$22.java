// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.Iterator;
import com.android.launcher3.badge.FolderBadgeInfo;
import com.android.launcher3.folder.FolderIcon;
import android.view.View;
import java.util.HashSet;

final class Workspace$22 implements Workspace$ItemOperator
{
    final /* synthetic */ Workspace this$0;
    final /* synthetic */ HashSet val$folderIds;
    
    Workspace$22(final Workspace this$0, final HashSet val$folderIds) {
        this.this$0 = this$0;
        this.val$folderIds = val$folderIds;
    }
    
    public boolean evaluate(final ItemInfo itemInfo, final View view) {
        if (itemInfo instanceof FolderInfo && this.val$folderIds.contains(itemInfo.id) && view instanceof FolderIcon) {
            final FolderBadgeInfo badgeInfo = new FolderBadgeInfo();
            final Iterator iterator = ((FolderInfo)itemInfo).contents.iterator();
            while (iterator.hasNext()) {
                badgeInfo.addBadgeInfo(this.this$0.mLauncher.getPopupDataProvider().getBadgeInfoForItem(iterator.next()));
            }
            ((FolderIcon)view).setBadgeInfo(badgeInfo);
        }
        return false;
    }
}

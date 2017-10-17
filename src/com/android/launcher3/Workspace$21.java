// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.View;
import java.util.HashSet;

final class Workspace$21 implements Workspace$ItemOperator
{
    final /* synthetic */ Workspace this$0;
    final /* synthetic */ HashSet val$folderIds;
    
    Workspace$21(final Workspace this$0, final HashSet val$folderIds) {
        this.this$0 = this$0;
        this.val$folderIds = val$folderIds;
    }
    
    public boolean evaluate(final ItemInfo itemInfo, final View view) {
        if (itemInfo instanceof FolderInfo && this.val$folderIds.contains(itemInfo.id)) {
            ((FolderInfo)itemInfo).itemsChanged(false);
        }
        return false;
    }
}

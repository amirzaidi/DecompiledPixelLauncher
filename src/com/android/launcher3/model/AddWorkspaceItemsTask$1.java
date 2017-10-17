// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import java.util.Iterator;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.LauncherModel$Callbacks;
import java.util.ArrayList;
import com.android.launcher3.LauncherModel$CallbackTask;

final class AddWorkspaceItemsTask$1 implements LauncherModel$CallbackTask
{
    final /* synthetic */ AddWorkspaceItemsTask this$0;
    final /* synthetic */ ArrayList val$addedItemsFinal;
    final /* synthetic */ ArrayList val$addedWorkspaceScreensFinal;
    
    AddWorkspaceItemsTask$1(final AddWorkspaceItemsTask this$0, final ArrayList val$addedItemsFinal, final ArrayList val$addedWorkspaceScreensFinal) {
        this.this$0 = this$0;
        this.val$addedItemsFinal = val$addedItemsFinal;
        this.val$addedWorkspaceScreensFinal = val$addedWorkspaceScreensFinal;
    }
    
    public void execute(final LauncherModel$Callbacks launcherModel$Callbacks) {
        final ArrayList<ItemInfo> list = new ArrayList<ItemInfo>();
        final ArrayList<ItemInfo> list2 = new ArrayList<ItemInfo>();
        if (!this.val$addedItemsFinal.isEmpty()) {
            final long screenId = this.val$addedItemsFinal.get(this.val$addedItemsFinal.size() - 1).screenId;
            for (final ItemInfo itemInfo : this.val$addedItemsFinal) {
                if (itemInfo.screenId == screenId) {
                    list.add(itemInfo);
                }
                else {
                    list2.add(itemInfo);
                }
            }
        }
        launcherModel$Callbacks.bindAppsAdded(this.val$addedWorkspaceScreensFinal, list2, list, null);
    }
}

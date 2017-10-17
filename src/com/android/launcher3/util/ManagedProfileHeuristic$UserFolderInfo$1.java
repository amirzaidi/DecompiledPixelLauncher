// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import java.util.Iterator;
import com.android.launcher3.ShortcutInfo;

final class ManagedProfileHeuristic$UserFolderInfo$1 implements Runnable
{
    final /* synthetic */ ManagedProfileHeuristic$UserFolderInfo this$1;
    
    ManagedProfileHeuristic$UserFolderInfo$1(final ManagedProfileHeuristic$UserFolderInfo this$1) {
        this.this$1 = this$1;
    }
    
    public void run() {
        this.this$1.folderInfo.prepareAutoUpdate();
        final Iterator iterator = this.this$1.pendingShortcuts.iterator();
        while (iterator.hasNext()) {
            this.this$1.folderInfo.add(iterator.next(), false);
        }
    }
}

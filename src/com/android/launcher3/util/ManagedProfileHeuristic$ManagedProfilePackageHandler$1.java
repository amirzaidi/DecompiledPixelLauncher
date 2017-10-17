// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import java.util.Iterator;
import com.android.launcher3.ShortcutInfo;
import java.util.ArrayList;
import com.android.launcher3.FolderInfo;

final class ManagedProfileHeuristic$ManagedProfilePackageHandler$1 implements Runnable
{
    final /* synthetic */ ManagedProfileHeuristic$ManagedProfilePackageHandler this$1;
    final /* synthetic */ FolderInfo val$workFolder;
    final /* synthetic */ ArrayList val$workFolderApps;
    
    ManagedProfileHeuristic$ManagedProfilePackageHandler$1(final ManagedProfileHeuristic$ManagedProfilePackageHandler this$1, final FolderInfo val$workFolder, final ArrayList val$workFolderApps) {
        this.this$1 = this$1;
        this.val$workFolder = val$workFolder;
        this.val$workFolderApps = val$workFolderApps;
    }
    
    public void run() {
        this.val$workFolder.prepareAutoUpdate();
        final Iterator iterator = this.val$workFolderApps.iterator();
        while (iterator.hasNext()) {
            this.val$workFolder.add(iterator.next(), false);
        }
    }
}

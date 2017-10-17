// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.folder.FolderIcon;
import android.view.View;

final class Workspace$14 implements Workspace$ItemOperator
{
    final /* synthetic */ Workspace this$0;
    
    Workspace$14(final Workspace this$0) {
        this.this$0 = this$0;
    }
    
    public boolean evaluate(final ItemInfo itemInfo, final View view) {
        if (view instanceof FolderIcon) {
            ((FolderIcon)view).removeListeners();
        }
        return false;
    }
}

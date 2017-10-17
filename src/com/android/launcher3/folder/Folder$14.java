// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import com.android.launcher3.CellLayout;
import com.android.launcher3.DropTarget;
import android.view.View;
import com.android.launcher3.ItemInfo;
import android.view.ViewGroup;
import com.android.launcher3.ShortcutInfo;

final class Folder$14 implements Runnable
{
    final /* synthetic */ Folder this$0;
    
    Folder$14(final Folder this$0) {
        this.this$0 = this$0;
    }
    
    public void run() {
        final int n = 1;
        final int size = this.this$0.mInfo.contents.size();
        if (size <= n) {
            View view;
            if (size == n) {
                final CellLayout cellLayout = this.this$0.mLauncher.getCellLayout(this.this$0.mInfo.container, this.this$0.mInfo.screenId);
                final ShortcutInfo shortcutInfo = this.this$0.mInfo.contents.remove(0);
                final View shortcut = this.this$0.mLauncher.createShortcut(cellLayout, shortcutInfo);
                this.this$0.mLauncher.getModelWriter().addOrMoveItemInDatabase(shortcutInfo, this.this$0.mInfo.container, this.this$0.mInfo.screenId, this.this$0.mInfo.cellX, this.this$0.mInfo.cellY);
                view = shortcut;
            }
            else {
                view = null;
            }
            this.this$0.mLauncher.removeItem((View)this.this$0.mFolderIcon, this.this$0.mInfo, n != 0);
            if (this.this$0.mFolderIcon instanceof DropTarget) {
                this.this$0.mDragController.removeDropTarget((DropTarget)this.this$0.mFolderIcon);
            }
            if (view != null) {
                this.this$0.mLauncher.getWorkspace().addInScreenFromBind(view, this.this$0.mInfo);
                view.requestFocus();
            }
        }
    }
}

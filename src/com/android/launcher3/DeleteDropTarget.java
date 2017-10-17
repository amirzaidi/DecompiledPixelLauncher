// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.text.TextUtils;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.folder.Folder;
import android.view.View;
import android.util.AttributeSet;
import android.content.Context;

public class DeleteDropTarget extends ButtonDropTarget
{
    public DeleteDropTarget(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public DeleteDropTarget(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
    }
    
    public static void removeWorkspaceOrFolderItem(final Launcher launcher, final ItemInfo itemInfo, final View view) {
        launcher.removeItem(view, itemInfo, true);
        launcher.getWorkspace().stripEmptyScreens();
        launcher.getDragLayer().announceForAccessibility((CharSequence)launcher.getString(2131492977));
    }
    
    public static boolean supportsAccessibleDrop(final ItemInfo itemInfo) {
        return itemInfo instanceof ShortcutInfo || itemInfo instanceof LauncherAppWidgetInfo || itemInfo instanceof FolderInfo;
    }
    
    public void completeDrop(final DropTarget$DragObject dropTarget$DragObject) {
        final ItemInfo dragInfo = dropTarget$DragObject.dragInfo;
        if (dropTarget$DragObject.dragSource instanceof Workspace || dropTarget$DragObject.dragSource instanceof Folder) {
            removeWorkspaceOrFolderItem(this.mLauncher, dragInfo, null);
        }
    }
    
    public void onDragStart(final DropTarget$DragObject dropTarget$DragObject, final DragOptions dragOptions) {
        super.onDragStart(dropTarget$DragObject, dragOptions);
        this.setTextBasedOnDragSource(dropTarget$DragObject.dragSource);
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mHoverColor = this.getResources().getColor(2131361814);
        this.setDrawable(2130837571);
    }
    
    public void setTextBasedOnDragSource(final DragSource dragSource) {
        if (!TextUtils.isEmpty(this.getText())) {
            int text;
            if (dragSource.supportsDeleteDropTarget()) {
                text = 2131492919;
            }
            else {
                text = 17039360;
            }
            this.setText(text);
        }
    }
    
    protected boolean supportsDrop(final DragSource dragSource, final ItemInfo itemInfo) {
        return true;
    }
}

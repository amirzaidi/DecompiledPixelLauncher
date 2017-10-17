// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.accessibility;

import android.view.View;
import com.android.launcher3.CellLayout;
import com.android.launcher3.folder.FolderPagedView;

public class FolderAccessibilityHelper extends DragAndDropAccessibilityDelegate
{
    private final FolderPagedView mParent;
    private final int mStartPosition;
    
    public FolderAccessibilityHelper(final CellLayout cellLayout) {
        super(cellLayout);
        this.mParent = (FolderPagedView)cellLayout.getParent();
        this.mStartPosition = this.mParent.indexOfChild((View)cellLayout) * cellLayout.getCountX() * cellLayout.getCountY();
    }
    
    protected String getConfirmationForIconDrop(final int n) {
        return this.mContext.getString(2131492973);
    }
    
    protected String getLocationDescriptionForIconDrop(final int n) {
        return this.mContext.getString(2131492971, new Object[] { this.mStartPosition + n + 1 });
    }
    
    protected int intersectsValidDropTarget(final int n) {
        return Math.min(n, this.mParent.getAllocatedContentSize() - this.mStartPosition - 1);
    }
}

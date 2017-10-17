// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.accessibility;

import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.DropTarget$DragObject;
import com.android.launcher3.Launcher;
import com.android.launcher3.CellLayout;
import android.view.ViewGroup;
import com.android.launcher3.dragndrop.DragController$DragListener;

public class AccessibleDragListenerAdapter implements DragController$DragListener
{
    private final int mDragType;
    private final ViewGroup mViewGroup;
    
    public AccessibleDragListenerAdapter(final ViewGroup mViewGroup, final int mDragType) {
        this.mViewGroup = mViewGroup;
        this.mDragType = mDragType;
    }
    
    protected void enableAccessibleDrag(final boolean b) {
        for (int i = 0; i < this.mViewGroup.getChildCount(); ++i) {
            this.setEnableForLayout((CellLayout)this.mViewGroup.getChildAt(i), b);
        }
    }
    
    public void onDragEnd() {
        this.enableAccessibleDrag(false);
        Launcher.getLauncher(this.mViewGroup.getContext()).getDragController().removeDragListener(this);
    }
    
    public void onDragStart(final DropTarget$DragObject dropTarget$DragObject, final DragOptions dragOptions) {
        this.enableAccessibleDrag(true);
    }
    
    protected final void setEnableForLayout(final CellLayout cellLayout, final boolean b) {
        cellLayout.enableAccessibleDrag(b, this.mDragType);
    }
}

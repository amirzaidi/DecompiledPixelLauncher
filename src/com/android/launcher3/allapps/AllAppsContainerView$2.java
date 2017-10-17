// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.DropTarget$DragObject;
import android.view.View;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragController$DragListener;

final class AllAppsContainerView$2 implements DragController$DragListener
{
    final /* synthetic */ AllAppsContainerView this$0;
    final /* synthetic */ DragController val$dragController;
    final /* synthetic */ View val$v;
    
    AllAppsContainerView$2(final AllAppsContainerView this$0, final View val$v, final DragController val$dragController) {
        this.this$0 = this$0;
        this.val$v = val$v;
        this.val$dragController = val$dragController;
    }
    
    public void onDragEnd() {
        this.val$v.setVisibility(0);
        this.val$dragController.removeDragListener(this);
    }
    
    public void onDragStart(final DropTarget$DragObject dropTarget$DragObject, final DragOptions dragOptions) {
        this.val$v.setVisibility(4);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.View;

final class Workspace$18 implements Workspace$ItemOperator
{
    final /* synthetic */ Workspace this$0;
    
    Workspace$18(final Workspace this$0) {
        this.this$0 = this$0;
    }
    
    public boolean evaluate(final ItemInfo itemInfo, final View view) {
        if (view instanceof DropTarget) {
            this.this$0.mDragController.removeDropTarget((DropTarget)view);
        }
        return false;
    }
}

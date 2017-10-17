// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

final class ButtonDropTarget$2 implements Runnable
{
    final /* synthetic */ ButtonDropTarget this$0;
    final /* synthetic */ DropTarget$DragObject val$d;
    
    ButtonDropTarget$2(final ButtonDropTarget this$0, final DropTarget$DragObject val$d) {
        this.this$0 = this$0;
        this.val$d = val$d;
    }
    
    public void run() {
        this.this$0.completeDrop(this.val$d);
        this.this$0.mDropTargetBar.onDragEnd();
        this.this$0.mLauncher.exitSpringLoadedDragModeDelayed(true, 0, null);
    }
}

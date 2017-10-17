// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.view.View;
import com.android.launcher3.DropTarget$DragObject;

final class Folder$13 implements Runnable
{
    final /* synthetic */ Folder this$0;
    final /* synthetic */ DropTarget$DragObject val$d;
    final /* synthetic */ boolean val$isFlingToDelete;
    final /* synthetic */ boolean val$success;
    final /* synthetic */ View val$target;
    
    Folder$13(final Folder this$0, final View val$target, final DropTarget$DragObject val$d, final boolean val$isFlingToDelete, final boolean val$success) {
        this.this$0 = this$0;
        this.val$target = val$target;
        this.val$d = val$d;
        this.val$isFlingToDelete = val$isFlingToDelete;
        this.val$success = val$success;
    }
    
    public void run() {
        this.this$0.onDropCompleted(this.val$target, this.val$d, this.val$isFlingToDelete, this.val$success);
        this.this$0.mDeferredAction = null;
    }
}

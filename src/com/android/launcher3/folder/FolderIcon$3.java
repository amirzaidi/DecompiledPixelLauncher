// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import com.android.launcher3.ShortcutInfo;

final class FolderIcon$3 implements Runnable
{
    final /* synthetic */ FolderIcon this$0;
    final /* synthetic */ ShortcutInfo val$item;
    final /* synthetic */ FolderIcon$PreviewItemDrawingParams val$params;
    
    FolderIcon$3(final FolderIcon this$0, final FolderIcon$PreviewItemDrawingParams val$params, final ShortcutInfo val$item) {
        this.this$0 = this$0;
        this.val$params = val$params;
        this.val$item = val$item;
    }
    
    public void run() {
        if (this.val$params != null) {
            this.val$params.hidden = false;
        }
        this.this$0.mFolder.showItem(this.val$item);
        this.this$0.invalidate();
    }
}

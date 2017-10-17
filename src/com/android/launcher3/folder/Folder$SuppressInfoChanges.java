// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import com.android.launcher3.FolderInfo$FolderListener;

class Folder$SuppressInfoChanges implements AutoCloseable
{
    final /* synthetic */ Folder this$0;
    
    Folder$SuppressInfoChanges(final Folder this$0) {
        this.this$0 = this$0;
        this$0.mInfo.removeListener(this$0);
    }
    
    public void close() {
        this.this$0.mInfo.addListener(this.this$0);
        this.this$0.updateTextViewFocus();
    }
}

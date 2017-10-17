// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

final class Folder$7 implements Runnable
{
    final /* synthetic */ Folder this$0;
    
    Folder$7(final Folder this$0) {
        this.this$0 = this$0;
    }
    
    public void run() {
        if (this.this$0.getItemCount() <= 1) {
            this.this$0.replaceFolderWithFinalItem();
        }
    }
}

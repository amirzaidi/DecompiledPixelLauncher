// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

final class Folder$9 implements Runnable
{
    final /* synthetic */ Folder this$0;
    
    Folder$9(final Folder this$0) {
        this.this$0 = this$0;
    }
    
    public void run() {
        this.this$0.mLauncher.getUserEventDispatcher().resetElapsedContainerMillis();
    }
}

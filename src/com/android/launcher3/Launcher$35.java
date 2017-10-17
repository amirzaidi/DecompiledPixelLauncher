// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.HashSet;

final class Launcher$35 implements Runnable
{
    final /* synthetic */ Launcher this$0;
    final /* synthetic */ HashSet val$updates;
    
    Launcher$35(final Launcher this$0, final HashSet val$updates) {
        this.this$0 = this$0;
        this.val$updates = val$updates;
    }
    
    public void run() {
        this.this$0.bindRestoreItemsChange(this.val$updates);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.testing;

import android.os.Binder;

public class MemoryTracker$MemoryTrackerInterface extends Binder
{
    final /* synthetic */ MemoryTracker this$0;
    
    public MemoryTracker$MemoryTrackerInterface(final MemoryTracker this$0) {
        this.this$0 = this$0;
    }
    
    MemoryTracker getService() {
        return this.this$0;
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.testing;

import android.os.IBinder;
import android.content.ComponentName;
import android.content.ServiceConnection;

final class WeightWatcher$2 implements ServiceConnection
{
    final /* synthetic */ WeightWatcher this$0;
    
    WeightWatcher$2(final WeightWatcher this$0) {
        this.this$0 = this$0;
    }
    
    public void onServiceConnected(final ComponentName componentName, final IBinder binder) {
        this.this$0.mMemoryService = ((MemoryTracker$MemoryTrackerInterface)binder).getService();
        this.this$0.initViews();
    }
    
    public void onServiceDisconnected(final ComponentName componentName) {
        this.this$0.mMemoryService = null;
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.testing;

import android.os.Message;
import android.os.Handler;

final class WeightWatcher$1 extends Handler
{
    final /* synthetic */ WeightWatcher this$0;
    
    WeightWatcher$1(final WeightWatcher this$0) {
        this.this$0 = this$0;
    }
    
    public void handleMessage(final Message message) {
        final int n = 3;
        switch (message.what) {
            case 1: {
                this.this$0.mHandler.sendEmptyMessage(n);
                break;
            }
            case 2: {
                this.this$0.mHandler.removeMessages(n);
                break;
            }
            case 3: {
                final int[] trackedProcesses = this.this$0.mMemoryService.getTrackedProcesses();
                final int childCount = this.this$0.getChildCount();
                if (trackedProcesses.length != childCount) {
                    this.this$0.initViews();
                }
                else {
                    for (int i = 0; i < childCount; ++i) {
                        final WeightWatcher$ProcessWatcher weightWatcher$ProcessWatcher = (WeightWatcher$ProcessWatcher)this.this$0.getChildAt(i);
                        if (WeightWatcher.indexOf(trackedProcesses, weightWatcher$ProcessWatcher.getPid()) < 0) {
                            this.this$0.initViews();
                            break;
                        }
                        weightWatcher$ProcessWatcher.update();
                    }
                }
                this.this$0.mHandler.sendEmptyMessageDelayed(n, 5000L);
                break;
            }
        }
    }
}

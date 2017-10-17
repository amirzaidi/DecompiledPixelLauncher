// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.testing;

import android.os.Message;
import android.os.Handler;

final class MemoryTracker$1 extends Handler
{
    final /* synthetic */ MemoryTracker this$0;
    
    MemoryTracker$1(final MemoryTracker this$0) {
        this.this$0 = this$0;
    }
    
    public void handleMessage(final Message message) {
        final int n = 3;
        switch (message.what) {
            case 1: {
                this.this$0.mHandler.removeMessages(n);
                this.this$0.mHandler.sendEmptyMessage(n);
                break;
            }
            case 2: {
                this.this$0.mHandler.removeMessages(n);
                break;
            }
            case 3: {
                this.this$0.update();
                this.this$0.mHandler.removeMessages(n);
                this.this$0.mHandler.sendEmptyMessageDelayed(n, 5000L);
                break;
            }
        }
    }
}

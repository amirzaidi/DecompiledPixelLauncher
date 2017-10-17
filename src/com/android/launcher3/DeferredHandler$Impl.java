// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.LinkedList;
import android.os.Message;
import android.os.MessageQueue$IdleHandler;
import android.os.Handler;

class DeferredHandler$Impl extends Handler implements MessageQueue$IdleHandler
{
    final /* synthetic */ DeferredHandler this$0;
    
    DeferredHandler$Impl(final DeferredHandler this$0) {
        this.this$0 = this$0;
    }
    
    public void handleMessage(final Message message) {
        LinkedList list = this.this$0.mQueue;
        synchronized (list) {
            if (this.this$0.mQueue.size() == 0) {
                return;
            }
            final Runnable runnable = this.this$0.mQueue.removeFirst();
            // monitorexit(list)
            runnable.run();
            list = this.this$0.mQueue;
            // monitorenter(list)
            final DeferredHandler$Impl deferredHandler$Impl = this;
            final DeferredHandler this$0 = deferredHandler$Impl.this$0;
            final DeferredHandler this$2 = this$0;
            this$2.scheduleNextLocked();
            return;
        }
        try {
            final DeferredHandler$Impl deferredHandler$Impl = this;
            final DeferredHandler this$2;
            final DeferredHandler this$0 = this$2 = deferredHandler$Impl.this$0;
            this$2.scheduleNextLocked();
        }
        finally {
        }
        // monitorexit(list)
    }
    
    public boolean queueIdle() {
        this.handleMessage(null);
        return false;
    }
}

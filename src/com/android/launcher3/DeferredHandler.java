// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.Iterator;
import android.os.MessageQueue$IdleHandler;
import java.util.Collection;
import android.os.Looper;
import java.util.LinkedList;
import android.os.MessageQueue;

public class DeferredHandler
{
    private DeferredHandler$Impl mHandler;
    private MessageQueue mMessageQueue;
    LinkedList mQueue;
    
    public DeferredHandler() {
        this.mQueue = new LinkedList();
        this.mMessageQueue = Looper.myQueue();
        this.mHandler = new DeferredHandler$Impl(this);
    }
    
    public void cancelAll() {
        synchronized (this.mQueue) {
            this.mQueue.clear();
        }
    }
    
    public void flush() {
        final LinkedList<Runnable> list = (LinkedList<Runnable>)new LinkedList<Object>();
        Object o = this.mQueue;
        synchronized (o) {
            list.addAll((Collection<?>)this.mQueue);
            this.mQueue.clear();
            // monitorexit(o)
            o = list.iterator();
            while (((Iterator)o).hasNext()) {
                ((Iterator<Runnable>)o).next().run();
            }
        }
    }
    
    public void post(final Runnable runnable) {
        synchronized (this.mQueue) {
            this.mQueue.add(runnable);
            if (this.mQueue.size() == 1) {
                this.scheduleNextLocked();
            }
        }
    }
    
    public void postIdle(final Runnable runnable) {
        this.post(new DeferredHandler$IdleRunnable(this, runnable));
    }
    
    void scheduleNextLocked() {
        if (this.mQueue.size() > 0) {
            if (((Runnable)this.mQueue.getFirst()) instanceof DeferredHandler$IdleRunnable) {
                this.mMessageQueue.addIdleHandler((MessageQueue$IdleHandler)this.mHandler);
            }
            else {
                this.mHandler.sendEmptyMessage(1);
            }
        }
    }
}

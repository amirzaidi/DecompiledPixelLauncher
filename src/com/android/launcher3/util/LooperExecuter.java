// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import java.util.List;
import java.util.concurrent.TimeUnit;
import android.os.Looper;
import android.os.Handler;
import java.util.concurrent.AbstractExecutorService;

public class LooperExecuter extends AbstractExecutorService
{
    private final Handler mHandler;
    
    public LooperExecuter(final Looper looper) {
        this.mHandler = new Handler(looper);
    }
    
    public boolean awaitTermination(final long n, final TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }
    
    public void execute(final Runnable runnable) {
        if (this.mHandler.getLooper() == Looper.myLooper()) {
            runnable.run();
        }
        else {
            this.mHandler.post(runnable);
        }
    }
    
    public boolean isShutdown() {
        return false;
    }
    
    public boolean isTerminated() {
        return false;
    }
    
    public void shutdown() {
        throw new UnsupportedOperationException();
    }
    
    public List shutdownNow() {
        throw new UnsupportedOperationException();
    }
}

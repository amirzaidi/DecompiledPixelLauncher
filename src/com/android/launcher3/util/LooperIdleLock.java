// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import com.android.launcher3.Utilities;
import android.os.Looper;
import android.os.MessageQueue$IdleHandler;

public class LooperIdleLock implements MessageQueue$IdleHandler, Runnable
{
    private boolean mIsLocked;
    private final Object mLock;
    
    public LooperIdleLock(final Object mLock, final Looper looper) {
        this.mLock = mLock;
        this.mIsLocked = true;
        if (Utilities.ATLEAST_MARSHMALLOW) {
            looper.getQueue().addIdleHandler((MessageQueue$IdleHandler)this);
        }
        else {
            new LooperExecutor(looper).execute(this);
        }
    }
    
    public boolean awaitLocked(final long n) {
        Label_0021: {
            if (!this.mIsLocked) {
                break Label_0021;
            }
            try {
                this.mLock.wait(n);
                return this.mIsLocked;
            }
            catch (InterruptedException ex) {
                return this.mIsLocked;
            }
        }
    }
    
    public boolean queueIdle() {
        final Object mLock = this.mLock;
        synchronized (mLock) {
            this.mIsLocked = false;
            this.mLock.notify();
            return false;
        }
    }
    
    public void run() {
        Looper.myQueue().addIdleHandler((MessageQueue$IdleHandler)this);
    }
}

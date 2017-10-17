// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.os.Handler;

public class IconCache$IconLoadRequest
{
    private final Handler mHandler;
    private final Runnable mRunnable;
    
    IconCache$IconLoadRequest(final Runnable mRunnable, final Handler mHandler) {
        this.mRunnable = mRunnable;
        this.mHandler = mHandler;
    }
    
    public void cancel() {
        this.mHandler.removeCallbacks(this.mRunnable);
    }
}

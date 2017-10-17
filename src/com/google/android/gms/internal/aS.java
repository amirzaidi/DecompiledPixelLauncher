// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import java.util.concurrent.ThreadFactory;

class as implements ThreadFactory
{
    final /* synthetic */ az rT;
    
    as(final az rt) {
        this.rT = rt;
    }
    
    public Thread newThread(final Runnable runnable) {
        return new Thread(new aw(this, runnable), "ClearcutLoggerApiImpl");
    }
}

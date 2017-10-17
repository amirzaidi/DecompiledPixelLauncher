// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import java.util.concurrent.ThreadFactory;

class am implements ThreadFactory
{
    final /* synthetic */ at rZ;
    
    am(final at rz) {
        this.rZ = rz;
    }
    
    public Thread newThread(final Runnable runnable) {
        return new Thread(new ap(this, runnable), "ClearcutLoggerApiImpl");
    }
}

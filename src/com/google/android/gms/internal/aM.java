// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.content.Context;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.Executors;
import com.google.android.gms.common.api.u;
import com.google.android.gms.clearcut.LogEventParcelable;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.a.m;
import java.util.concurrent.TimeUnit;
import com.google.android.gms.common.a.a;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledExecutorService;
import com.google.android.gms.clearcut.g;
import com.google.android.gms.common.api.d;
import android.util.Log;

class am implements Runnable
{
    final /* synthetic */ az rP;
    
    am(final az rp) {
        this.rP = rp;
    }
    
    public void run() {
        final az rp = this.rP;
        synchronized (rp.sj) {
            boolean b;
            if (this.rP.sl > this.rP.se.jt()) {
                b = true;
            }
            else {
                b = false;
            }
            if (!b && this.rP.sb != null) {
                Log.i("ClearcutLoggerApiImpl", "disconnect managed GoogleApiClient");
                this.rP.sb.dx();
                this.rP.sb = null;
            }
        }
    }
}

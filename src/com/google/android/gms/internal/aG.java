// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.f;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.Executors;
import com.google.android.gms.common.api.t;
import com.google.android.gms.clearcut.LogEventParcelable;
import com.google.android.gms.common.a.m;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledExecutorService;
import com.google.android.gms.clearcut.g;
import com.google.android.gms.common.api.a;
import android.util.Log;

class ag implements Runnable
{
    final /* synthetic */ at rV;
    
    ag(final at rv) {
        this.rV = rv;
    }
    
    public void run() {
        final at rv = this.rV;
        synchronized (rv.sp) {
            boolean b;
            if (this.rV.sr > this.rV.sk.mh()) {
                b = true;
            }
            else {
                b = false;
            }
            if (!b && this.rV.sh != null) {
                Log.i("ClearcutLoggerApiImpl", "disconnect managed GoogleApiClient");
                this.rV.sh.gi();
                this.rV.sh = null;
            }
        }
    }
}

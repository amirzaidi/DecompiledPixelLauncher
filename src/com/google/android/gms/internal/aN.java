// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.content.Context;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.Executors;
import com.google.android.gms.common.api.u;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.a.m;
import java.util.concurrent.TimeUnit;
import com.google.android.gms.common.a.a;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledExecutorService;
import com.google.android.gms.clearcut.g;
import android.util.Log;
import com.google.android.gms.common.api.o;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.d;
import com.google.android.gms.clearcut.LogEventParcelable;

final class an extends ay
{
    private final LogEventParcelable rQ;
    
    an(final LogEventParcelable rq, final d d) {
        super(d);
        this.rQ = rq;
    }
    
    public boolean equals(final Object o) {
        return o instanceof an && this.rQ.equals(((an)o).rQ);
    }
    
    public String toString() {
        final String value = String.valueOf(this.rQ);
        return new StringBuilder(String.valueOf(value).length() + 12).append("MethodImpl(").append(value).append(")").toString();
    }
    
    protected Status uc(final Status status) {
        return status;
    }
    
    protected void ud(final at at) {
        final au au = new au(this);
        try {
            final LogEventParcelable rq = this.rQ;
            try {
                ut(rq);
                at.zza(au, this.rQ);
            }
            catch (RuntimeException ex) {
                Log.e("ClearcutLoggerApiImpl", "derived ClearcutLogger.MessageProducer ", (Throwable)ex);
                this.rs(new Status(10, "MessageProducer"));
            }
        }
        catch (RuntimeException ex2) {}
    }
}

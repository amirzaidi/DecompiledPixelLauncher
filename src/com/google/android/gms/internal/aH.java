// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.f;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.Executors;
import com.google.android.gms.common.api.t;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledExecutorService;
import com.google.android.gms.clearcut.g;
import android.util.Log;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.clearcut.LogEventParcelable;

final class ah extends as
{
    private final LogEventParcelable rW;
    
    ah(final LogEventParcelable rw, final a a) {
        super(a);
        this.rW = rw;
    }
    
    public boolean equals(final Object o) {
        return o instanceof ah && this.rW.equals(((ah)o).rW);
    }
    
    public String toString() {
        final String value = String.valueOf(this.rW);
        return new StringBuilder(String.valueOf(value).length() + 12).append("MethodImpl(").append(value).append(")").toString();
    }
    
    protected Status ub(final Status status) {
        return status;
    }
    
    protected void uc(final an an) {
        final ao ao = new ao(this);
        try {
            final LogEventParcelable rw = this.rW;
            try {
                us(rw);
                an.zza(ao, this.rW);
            }
            catch (RuntimeException ex) {
                Log.e("ClearcutLoggerApiImpl", "derived ClearcutLogger.MessageProducer ", (Throwable)ex);
                this.ru(new Status(10, "MessageProducer"));
            }
        }
        catch (RuntimeException ex2) {}
    }
}

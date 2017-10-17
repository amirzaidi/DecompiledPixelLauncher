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
import com.google.android.gms.common.api.d;
import java.util.concurrent.ScheduledExecutorService;
import com.google.android.gms.clearcut.g;

public class az implements g
{
    private static final ax sa;
    private static final long sc;
    private static final Object sf;
    private static ScheduledExecutorService si;
    private d sb;
    private ScheduledFuture sd;
    private final a se;
    private final ak sg;
    private final Runnable sh;
    private final Object sj;
    private final long sk;
    private long sl;
    
    static {
        sf = new Object();
        sa = new ax(null);
        sc = TimeUnit.MILLISECONDS.convert(2, TimeUnit.MINUTES);
    }
    
    public az() {
        this(new m(), az.sc, new aq());
    }
    
    public az(final a se, final long sk, final ak sg) {
        this.sj = new Object();
        this.sl = 0L;
        this.sd = null;
        this.sb = null;
        this.sh = new am(this);
        this.se = se;
        this.sk = sk;
        this.sg = sg;
    }
    
    private c uA(final d d, final ay ay) {
        this.ur().execute(new ag(this, d, ay));
        return ay;
    }
    
    private an uC(final d d, final LogEventParcelable logEventParcelable) {
        az.sa.up();
        final an an = new an(logEventParcelable, d);
        an.rV(new al(this));
        return an;
    }
    
    private ScheduledExecutorService ur() {
        synchronized (az.sf) {
            if (az.si == null) {
                az.si = Executors.newSingleThreadScheduledExecutor(new as(this));
            }
            return az.si;
        }
    }
    
    private static void ut(final LogEventParcelable logEventParcelable) {
        if (logEventParcelable.GR != null && logEventParcelable.GJ.nW.length == 0) {
            logEventParcelable.GJ.nW = logEventParcelable.GR.LI();
        }
        if (logEventParcelable.GM != null && logEventParcelable.GJ.nZ.length == 0) {
            logEventParcelable.GJ.nZ = logEventParcelable.GM.LI();
        }
        logEventParcelable.GK = aI.uW(logEventParcelable.GJ);
    }
    
    public c us(final d d, final LogEventParcelable logEventParcelable) {
        return this.uA(d, this.uC(d, logEventParcelable));
    }
    
    public c uz(final Context context, final LogEventParcelable logEventParcelable) {
        while (true) {
            while (true) {
                synchronized (this.sj) {
                    if (this.sb == null) {
                        (this.sb = this.sg.ub(context)).dv();
                    }
                    this.sl = this.se.jt() + this.sk;
                    if (this.sd == null) {
                        this.sd = this.ur().schedule(this.sh, this.sk, TimeUnit.MILLISECONDS);
                        return this.us(this.sb, logEventParcelable);
                    }
                }
                this.sd.cancel(false);
                continue;
            }
        }
    }
}

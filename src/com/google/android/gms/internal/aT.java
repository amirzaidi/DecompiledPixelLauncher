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
import com.google.android.gms.common.api.a;
import java.util.concurrent.ScheduledExecutorService;
import com.google.android.gms.clearcut.g;

public class at implements g
{
    private static final ar sg;
    private static final long si;
    private static final Object sl;
    private static ScheduledExecutorService so;
    private a sh;
    private ScheduledFuture sj;
    private final com.google.android.gms.common.a.a sk;
    private final af sm;
    private final Runnable sn;
    private final Object sp;
    private final long sq;
    private long sr;
    
    static {
        sl = new Object();
        sg = new ar(null);
        si = TimeUnit.MILLISECONDS.convert(2, TimeUnit.MINUTES);
    }
    
    public at() {
        this(new m(), at.si, new aj());
    }
    
    public at(final com.google.android.gms.common.a.a sk, final long sq, final af sm) {
        this.sp = new Object();
        this.sr = 0L;
        this.sj = null;
        this.sh = null;
        this.sn = new ag(this);
        this.sk = sk;
        this.sq = sq;
        this.sm = sm;
    }
    
    private ah uB(final a a, final LogEventParcelable logEventParcelable) {
        at.sg.uo();
        final ah ah = new ah(logEventParcelable, a);
        ah.rX(new ae(this));
        return ah;
    }
    
    private ScheduledExecutorService uq() {
        synchronized (at.sl) {
            if (at.so == null) {
                at.so = Executors.newSingleThreadScheduledExecutor(new am(this));
            }
            return at.so;
        }
    }
    
    private static void us(final LogEventParcelable logEventParcelable) {
        if (logEventParcelable.Iw != null && logEventParcelable.Io.oy.length == 0) {
            logEventParcelable.Io.oy = logEventParcelable.Iw.MB();
        }
        if (logEventParcelable.Ir != null && logEventParcelable.Io.oB.length == 0) {
            logEventParcelable.Io.oB = logEventParcelable.Ir.MB();
        }
        logEventParcelable.Ip = aC.uV(logEventParcelable.Io);
    }
    
    private f uz(final a a, final as as) {
        this.uq().execute(new aa(this, a, as));
        return as;
    }
    
    public f ur(final a a, final LogEventParcelable logEventParcelable) {
        return this.uz(a, this.uB(a, logEventParcelable));
    }
    
    public f uy(final Context context, final LogEventParcelable logEventParcelable) {
        while (true) {
            while (true) {
                synchronized (this.sp) {
                    if (this.sh == null) {
                        (this.sh = this.sm.ua(context)).gg();
                    }
                    this.sr = this.sk.mh() + this.sq;
                    if (this.sj == null) {
                        this.sj = this.uq().schedule(this.sn, this.sq, TimeUnit.MILLISECONDS);
                        return this.ur(this.sh, logEventParcelable);
                    }
                }
                this.sj.cancel(false);
                continue;
            }
        }
    }
}

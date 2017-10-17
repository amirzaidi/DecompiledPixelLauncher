// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.a;
import android.os.DeadObjectException;
import com.google.android.gms.common.api.o;
import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;
import android.os.RemoteException;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.api.d;
import java.util.concurrent.atomic.AtomicReference;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.j;

public abstract class b extends f
{
    private final j nm;
    private final h nn;
    private AtomicReference no;
    
    protected b(final h nn, final d d) {
        super((d)l.ho(d, "GoogleApiClient must not be null"));
        this.no = new AtomicReference();
        this.nm = nn.dT();
        this.nn = nn;
    }
    
    private void rl(final RemoteException ex) {
        this.rs(new Status(8, ex.getLocalizedMessage(), null));
    }
    
    public final j rm() {
        return this.nm;
    }
    
    protected void rn(final com.google.android.gms.common.api.b b) {
    }
    
    public final h ro() {
        return this.nn;
    }
    
    protected abstract void rp(final o p0);
    
    public final void rq(final o o) {
        try {
            this.rp(o);
        }
        catch (DeadObjectException ex) {
            this.rl((RemoteException)ex);
            throw ex;
        }
        catch (RemoteException ex2) {
            this.rl(ex2);
        }
    }
    
    protected void rr() {
        final g g = this.no.getAndSet(null);
        if (g != null) {
            g.rZ(this);
        }
    }
    
    public final void rs(final Status status) {
        boolean b = false;
        if (!status.dF()) {
            b = true;
        }
        l.hq(b, "Failed result must not be success");
        final com.google.android.gms.common.api.b rw = this.rW(status);
        this.rT(rw);
        this.rn(rw);
    }
    
    public void rt(final g g) {
        this.no.set(g);
    }
    
    public void ru() {
        this.ds(null);
    }
}

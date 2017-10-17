// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.v;
import android.os.DeadObjectException;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.m;
import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;
import android.os.RemoteException;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.api.a;
import java.util.concurrent.atomic.AtomicReference;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.api.h;

public abstract class b extends f
{
    private final h nO;
    private final e nP;
    private AtomicReference nQ;
    
    protected b(final e np, final a a) {
        super((a)l.kc(a, "GoogleApiClient must not be null"));
        this.nQ = new AtomicReference();
        this.nO = np.gz();
        this.nP = np;
    }
    
    private void rn(final RemoteException ex) {
        this.ru(new Status(8, ex.getLocalizedMessage(), null));
    }
    
    public final h ro() {
        return this.nO;
    }
    
    protected void rp(final m m) {
    }
    
    public final e rq() {
        return this.nP;
    }
    
    protected abstract void rr(final n p0);
    
    public final void rs(final n n) {
        try {
            this.rr(n);
        }
        catch (DeadObjectException ex) {
            this.rn((RemoteException)ex);
            throw ex;
        }
        catch (RemoteException ex2) {
            this.rn(ex2);
        }
    }
    
    protected void rt() {
        final g g = this.nQ.getAndSet(null);
        if (g != null) {
            g.sb(this);
        }
    }
    
    public final void ru(final Status status) {
        boolean b = false;
        if (!status.gY()) {
            b = true;
        }
        l.ke(b, "Failed result must not be success");
        final m ry = this.rY(status);
        this.rV(ry);
        this.rp(ry);
    }
    
    public void rv(final g g) {
        this.nQ.set(g);
    }
    
    public void rw() {
        this.gF(null);
    }
}

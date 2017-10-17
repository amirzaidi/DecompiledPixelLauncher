// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.os.RemoteException;
import android.util.Log;
import java.util.Iterator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.t;
import com.google.android.gms.common.api.y;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.api.a;
import android.os.Looper;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import com.google.android.gms.common.internal.zzr;
import com.google.android.gms.common.api.m;
import java.lang.ref.WeakReference;
import com.google.android.gms.common.api.v;

public abstract class f extends com.google.android.gms.common.api.f
{
    static final ThreadLocal oc;
    private volatile boolean od;
    private boolean oe;
    private v of;
    private boolean og;
    private bo oh;
    private Integer oi;
    protected final WeakReference oj;
    private boolean ok;
    private volatile d ol;
    private m om;
    private zzr on;
    private final CountDownLatch oo;
    private final ArrayList op;
    protected final bA oq;
    private final Object or;
    
    static {
        oc = new ch();
    }
    
    f() {
        this.or = new Object();
        this.oo = new CountDownLatch(1);
        this.op = new ArrayList();
        this.ok = false;
        this.oq = new bA(Looper.getMainLooper());
        this.oj = new WeakReference(null);
    }
    
    protected f(final Looper looper) {
        this.or = new Object();
        this.oo = new CountDownLatch(1);
        this.op = new ArrayList();
        this.ok = false;
        this.oq = new bA(looper);
        this.oj = new WeakReference(null);
    }
    
    protected f(final a a) {
        this.or = new Object();
        this.oo = new CountDownLatch(1);
        this.op = new ArrayList();
        this.ok = false;
        Looper looper;
        if (a == null) {
            looper = Looper.getMainLooper();
        }
        else {
            looper = a.gf();
        }
        this.oq = new bA(looper);
        this.oj = new WeakReference((T)a);
    }
    
    private m get() {
        final boolean b = true;
        boolean b2 = false;
        synchronized (this.or) {
            if (!this.od) {
                b2 = b;
            }
            l.kj(b2, "Result has already been consumed.");
            l.kj(this.rW(), "Result is not ready.");
            final m om = this.om;
            this.om = null;
            this.of = null;
            this.od = true;
            // monitorexit(this.or)
            this.rt();
            return om;
        }
    }
    
    private void rR(final m om) {
        this.om = om;
        this.on = null;
        this.oo.countDown();
        final Status gv = this.om.gV();
        if (!this.oe) {
            if (this.of != null) {
                this.oq.zU();
                this.oq.zV(this.of, this.get());
            }
            else if (this.om instanceof y) {
                this.oh = new bo(this, null);
            }
        }
        else {
            this.of = null;
        }
        final Iterator<t> iterator = (Iterator<t>)this.op.iterator();
        while (iterator.hasNext()) {
            iterator.next().hh(gv);
        }
        this.op.clear();
    }
    
    public static void rZ(final m m) {
        if (m instanceof y) {
            try {
                ((y)m).hq();
            }
            catch (RuntimeException ex) {
                final String value = String.valueOf(m);
                Log.w("BasePendingResult", new StringBuilder(String.valueOf(value).length() + 18).append("Unable to release ").append(value).toString(), (Throwable)ex);
            }
        }
    }
    
    public void cancel() {
        final Object or = this.or;
        // monitorenter(or)
        try {
            if (!this.oe && !this.od) {
                if (this.on != null) {
                    try {
                        final zzr on = this.on;
                        try {
                            on.cancel();
                        }
                        catch (RemoteException ex) {}
                        finally {
                        }
                        // monitorexit(or)
                    }
                    catch (RemoteException ex2) {}
                }
                rZ(this.om);
                this.oe = true;
                this.rR(this.rY(Status.hk));
            }
        }
        finally {}
    }
    
    public final void gF(final v of) {
        final boolean b = true;
        boolean b2 = false;
        final Object or = this.or;
        // monitorenter(or)
        Label_0096: {
            if (of == null) {
                break Label_0096;
            }
            try {
                l.kj(!this.od && b, "Result has already been consumed.");
                if (this.ol == null) {
                    b2 = b;
                }
                l.kj(b2, "Cannot set callbacks if then() has been called.");
                if (!this.rP()) {
                    if (!this.rW()) {
                        this.of = of;
                    }
                    else {
                        this.oq.zV(of, this.get());
                    }
                    return;
                }
                return;
                this.of = null;
            }
            finally {
            }
            // monitorexit(or)
        }
    }
    
    public void rO() {
        this.ok = (this.ok || f.oc.get());
    }
    
    public boolean rP() {
        synchronized (this.or) {
            return this.oe;
        }
    }
    
    public final void rQ(final Status status) {
        synchronized (this.or) {
            if (!this.rW()) {
                this.rV(this.rY(status));
                this.og = true;
            }
        }
    }
    
    public Integer rS() {
        return this.oi;
    }
    
    public boolean rT() {
        synchronized (this.or) {
            if (this.oj.get() == null || !this.ok) {
                this.cancel();
            }
            return this.rP();
        }
    }
    
    boolean rU() {
        return false;
    }
    
    public final void rV(final m m) {
        final boolean b = true;
        boolean b2 = false;
        synchronized (this.or) {
            if (!this.og && !this.oe && (!this.rW() || !this.rU())) {
                l.kj(!this.rW() && b, "Results have already been set");
                if (!this.od) {
                    b2 = b;
                }
                l.kj(b2, "Result has already been consumed");
                this.rR(m);
                return;
            }
            rZ(m);
        }
    }
    
    public final boolean rW() {
        return this.oo.getCount() == 0L;
    }
    
    public final void rX(final t t) {
        final boolean b = true;
        boolean b2 = false;
        boolean b3 = this.od;
        while (true) {
            while (true) {
                Label_0024: {
                    if (b3) {
                        b3 = false;
                        break Label_0024;
                    }
                    Label_0087: {
                        break Label_0087;
                        while (true) {
                            l.ke(b2, "Callback cannot be null.");
                            synchronized (this.or) {
                                b3 = this.rW();
                                if (!b3) {
                                    this.op.add(t);
                                }
                                else {
                                    t.hh(this.om.gV());
                                }
                                return;
                                b3 = b;
                                break;
                                b2 = b;
                            }
                        }
                    }
                }
                l.kj(b3, "Result has already been consumed.");
                if (t == null) {
                    continue;
                }
                break;
            }
            continue;
        }
    }
    
    protected abstract m rY(final Status p0);
    
    protected void rt() {
    }
}

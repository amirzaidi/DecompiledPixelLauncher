// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.os.RemoteException;
import android.util.Log;
import java.util.Iterator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.u;
import com.google.android.gms.common.api.y;
import com.google.android.gms.common.internal.l;
import android.os.Looper;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import com.google.android.gms.common.internal.zzr;
import com.google.android.gms.common.api.b;
import java.lang.ref.WeakReference;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.c;

public abstract class f extends c
{
    static final ThreadLocal nA;
    private volatile boolean nB;
    private boolean nC;
    private a nD;
    private boolean nE;
    private bu nF;
    private Integer nG;
    protected final WeakReference nH;
    private boolean nI;
    private volatile d nJ;
    private b nK;
    private zzr nL;
    private final CountDownLatch nM;
    private final ArrayList nN;
    protected final bG nO;
    private final Object nP;
    
    static {
        nA = new cn();
    }
    
    f() {
        this.nP = new Object();
        this.nM = new CountDownLatch(1);
        this.nN = new ArrayList();
        this.nI = false;
        this.nO = new bG(Looper.getMainLooper());
        this.nH = new WeakReference(null);
    }
    
    protected f(final Looper looper) {
        this.nP = new Object();
        this.nM = new CountDownLatch(1);
        this.nN = new ArrayList();
        this.nI = false;
        this.nO = new bG(looper);
        this.nH = new WeakReference(null);
    }
    
    protected f(final com.google.android.gms.common.api.d d) {
        this.nP = new Object();
        this.nM = new CountDownLatch(1);
        this.nN = new ArrayList();
        this.nI = false;
        Looper looper;
        if (d == null) {
            looper = Looper.getMainLooper();
        }
        else {
            looper = d.du();
        }
        this.nO = new bG(looper);
        this.nH = new WeakReference((T)d);
    }
    
    private b get() {
        final boolean b = true;
        boolean b2 = false;
        synchronized (this.nP) {
            if (!this.nB) {
                b2 = b;
            }
            l.hv(b2, "Result has already been consumed.");
            l.hv(this.rU(), "Result is not ready.");
            final b nk = this.nK;
            this.nK = null;
            this.nD = null;
            this.nB = true;
            // monitorexit(this.nP)
            this.rr();
            return nk;
        }
    }
    
    private void rP(final b nk) {
        this.nK = nk;
        this.nL = null;
        this.nM.countDown();
        final Status dr = this.nK.dr();
        if (!this.nC) {
            if (this.nD != null) {
                this.nO.zV();
                this.nO.zW(this.nD, this.get());
            }
            else if (this.nK instanceof y) {
                this.nF = new bu(this, null);
            }
        }
        else {
            this.nD = null;
        }
        final Iterator<u> iterator = (Iterator<u>)this.nN.iterator();
        while (iterator.hasNext()) {
            iterator.next().eu(dr);
        }
        this.nN.clear();
    }
    
    public static void rX(final b b) {
        if (b instanceof y) {
            try {
                ((y)b).eC();
            }
            catch (RuntimeException ex) {
                final String value = String.valueOf(b);
                Log.w("BasePendingResult", new StringBuilder(String.valueOf(value).length() + 18).append("Unable to release ").append(value).toString(), (Throwable)ex);
            }
        }
    }
    
    public void cancel() {
        final Object np = this.nP;
        // monitorenter(np)
        try {
            if (!this.nC && !this.nB) {
                if (this.nL != null) {
                    try {
                        final zzr nl = this.nL;
                        try {
                            nl.cancel();
                        }
                        catch (RemoteException ex) {}
                        finally {
                        }
                        // monitorexit(np)
                    }
                    catch (RemoteException ex2) {}
                }
                rX(this.nK);
                this.nC = true;
                this.rP(this.rW(Status.dR));
            }
        }
        finally {}
    }
    
    public final void ds(final a nd) {
        final boolean b = true;
        boolean b2 = false;
        final Object np = this.nP;
        // monitorenter(np)
        Label_0096: {
            if (nd == null) {
                break Label_0096;
            }
            try {
                l.hv(!this.nB && b, "Result has already been consumed.");
                if (this.nJ == null) {
                    b2 = b;
                }
                l.hv(b2, "Cannot set callbacks if then() has been called.");
                if (!this.rN()) {
                    if (!this.rU()) {
                        this.nD = nd;
                    }
                    else {
                        this.nO.zW(nd, this.get());
                    }
                    return;
                }
                return;
                this.nD = null;
            }
            finally {
            }
            // monitorexit(np)
        }
    }
    
    public void rM() {
        this.nI = (this.nI || f.nA.get());
    }
    
    public boolean rN() {
        synchronized (this.nP) {
            return this.nC;
        }
    }
    
    public final void rO(final Status status) {
        synchronized (this.nP) {
            if (!this.rU()) {
                this.rT(this.rW(status));
                this.nE = true;
            }
        }
    }
    
    public Integer rQ() {
        return this.nG;
    }
    
    public boolean rR() {
        synchronized (this.nP) {
            if (this.nH.get() == null || !this.nI) {
                this.cancel();
            }
            return this.rN();
        }
    }
    
    boolean rS() {
        return false;
    }
    
    public final void rT(final b b) {
        final boolean b2 = true;
        boolean b3 = false;
        synchronized (this.nP) {
            if (!this.nE && !this.nC && (!this.rU() || !this.rS())) {
                l.hv(!this.rU() && b2, "Results have already been set");
                if (!this.nB) {
                    b3 = b2;
                }
                l.hv(b3, "Result has already been consumed");
                this.rP(b);
                return;
            }
            rX(b);
        }
    }
    
    public final boolean rU() {
        return this.nM.getCount() == 0L;
    }
    
    public final void rV(final u u) {
        final boolean b = true;
        boolean b2 = false;
        boolean b3 = this.nB;
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
                            l.hq(b2, "Callback cannot be null.");
                            synchronized (this.nP) {
                                b3 = this.rU();
                                if (!b3) {
                                    this.nN.add(u);
                                }
                                else {
                                    u.eu(this.nK.dr());
                                }
                                return;
                                b3 = b;
                                break;
                                b2 = b;
                            }
                        }
                    }
                }
                l.hv(b3, "Result has already been consumed.");
                if (u == null) {
                    continue;
                }
                break;
            }
            continue;
        }
    }
    
    protected abstract b rW(final Status p0);
    
    protected void rr() {
    }
}

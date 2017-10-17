// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.api;

import java.io.PrintWriter;
import java.io.FileDescriptor;
import java.util.Collections;
import java.util.WeakHashMap;
import java.util.Collection;
import com.google.android.gms.internal.cd;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.internal.bq;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.Lock;
import com.google.android.gms.internal.cA;
import java.util.concurrent.locks.ReentrantLock;
import com.google.android.gms.common.internal.Q;
import com.google.android.gms.internal.bF;
import com.google.android.gms.internal.bN;
import android.support.v4.a.t;
import java.util.HashSet;
import android.content.Context;
import com.google.android.gms.common.a;
import java.util.ArrayList;
import android.accounts.Account;
import android.os.Looper;
import java.util.Set;
import java.util.Map;
import android.view.View;

public final class e
{
    private View ec;
    private final Map ed;
    private final Set ee;
    private Looper ef;
    private Account eg;
    private String eh;
    private com.google.android.gms.internal.e ei;
    private final ArrayList ej;
    private final Set ek;
    private int el;
    private final Map em;
    private f en;
    private String eo;
    private int ep;
    private l eq;
    private final ArrayList er;
    private a es;
    private final Context mContext;
    
    public e(final Context mContext) {
        this.ek = new HashSet();
        this.ee = new HashSet();
        this.ed = new t();
        this.em = new t();
        this.ep = -1;
        this.es = a.nI();
        this.eq = bN.vL;
        this.ej = new ArrayList();
        this.er = new ArrayList();
        this.mContext = mContext;
        this.ef = mContext.getMainLooper();
        this.eh = mContext.getPackageName();
        this.eo = mContext.getClass().getName();
    }
    
    private static i dL(final l l, final Object o, final Context context, final Looper looper, final com.google.android.gms.common.internal.a a, final g g, final f f) {
        return l.ek(context, looper, a, o, g, f);
    }
    
    private d dM() {
        final com.google.android.gms.common.internal.a dj = this.dJ();
        final Map gq = dj.gq();
        final t t = new t();
        final t t2 = new t();
        final ArrayList<bF> list = new ArrayList<bF>();
        final Iterator<h> iterator = this.em.keySet().iterator();
        h h = null;
        h h2 = null;
        while (iterator.hasNext()) {
            final h h3 = iterator.next();
            final Object value = this.em.get(h3);
            int n = 0;
            if (gq.get(h3) != null) {
                if (!gq.get(h3).he) {
                    n = 2;
                }
                else {
                    n = 1;
                }
            }
            t.put(h3, n);
            final bF bf = new bF(h3, n);
            list.add(bf);
            h h4;
            i i;
            if (!h3.dU()) {
                final l dv = h3.dV();
                if (dv.es() != 1) {
                    h4 = h;
                }
                else {
                    h4 = h3;
                }
                i = dL(dv, value, this.mContext, this.ef, dj, bf, bf);
            }
            else {
                final n dw = h3.dW();
                if (dw.es() != 1) {
                    h4 = h;
                }
                else {
                    h4 = h3;
                }
                i = dP(dw, value, this.mContext, this.ef, dj, bf, bf);
            }
            final i j = i;
            final h h5 = h4;
            t2.put(h3.dT(), j);
            h h6;
            if (!j.eh()) {
                h6 = h2;
            }
            else {
                if (h2 != null) {
                    final String value2 = String.valueOf(h3.dY());
                    final String value3 = String.valueOf(h2.dY());
                    throw new IllegalStateException(new StringBuilder(String.valueOf(value2).length() + 21 + String.valueOf(value3).length()).append(value2).append(" cannot be used with ").append(value3).toString());
                }
                h6 = h3;
            }
            h = h5;
            h2 = h6;
        }
        if (h2 != null) {
            if (h != null) {
                final String value4 = String.valueOf(h2.dY());
                final String value5 = String.valueOf(h.dY());
                throw new IllegalStateException(new StringBuilder(String.valueOf(value4).length() + 21 + String.valueOf(value5).length()).append(value4).append(" cannot be used with ").append(value5).toString());
            }
            com.google.android.gms.common.internal.l.hw(this.eg == null, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead", h2.dY());
            com.google.android.gms.common.internal.l.hw(this.ek.equals(this.ee), "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead.", h2.dY());
        }
        return new cA(this.mContext, new ReentrantLock(), this.ef, dj, this.es, this.eq, t, this.ej, this.er, t2, this.ep, cA.Cm(t2.values(), true), list);
    }
    
    private void dN(final d d) {
        bq.yH(this.ei).yG(this.ep, d, this.en);
    }
    
    private static b dP(final n n, final Object o, final Context context, final Looper looper, final com.google.android.gms.common.internal.a a, final g g, final f f) {
        return new b(context, looper, n.en(), g, f, a, n.em(o));
    }
    
    public d build() {
        boolean b = false;
        Label_0069: {
            if (!this.em.isEmpty()) {
                break Label_0069;
            }
            while (true) {
                com.google.android.gms.common.internal.l.hq(b, "must call addApi() to add at least one API");
                final d dm = this.dM();
                Label_0079: {
                    synchronized (d.dQ) {
                        d.dQ.add(dm);
                        // monitorexit(d.dt())
                        if (this.ep < 0) {
                            return dm;
                        }
                        break Label_0079;
                        b = true;
                        continue;
                    }
                }
                this.dN(dm);
                return dm;
            }
        }
    }
    
    public e dI() {
        return this.dK("<<default account>>");
    }
    
    public com.google.android.gms.common.internal.a dJ() {
        cd wl = cd.wl;
        if (this.em.containsKey(bN.vI)) {
            wl = this.em.get(bN.vI);
        }
        return new com.google.android.gms.common.internal.a(this.eg, this.ek, this.ed, this.el, this.ec, this.eh, this.eo, wl);
    }
    
    public e dK(final String s) {
        Account eg = null;
        if (s != null) {
            eg = new Account(s, "com.google");
        }
        this.eg = eg;
        return this;
    }
    
    public e dO(final h h) {
        com.google.android.gms.common.internal.l.ho(h, "Api must not be null");
        this.em.put(h, null);
        final List et = h.dX().et(null);
        this.ee.addAll(et);
        this.ek.addAll(et);
        return this;
    }
}

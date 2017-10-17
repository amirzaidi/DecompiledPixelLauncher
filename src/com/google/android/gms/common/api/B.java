// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.api;

import java.io.PrintWriter;
import java.io.FileDescriptor;
import java.util.Collections;
import java.util.WeakHashMap;
import java.util.Collection;
import com.google.android.gms.internal.bX;
import com.google.android.gms.internal.bk;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.Lock;
import com.google.android.gms.internal.cu;
import java.util.concurrent.locks.ReentrantLock;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.internal.Q;
import com.google.android.gms.internal.bz;
import com.google.android.gms.internal.bH;
import android.support.v4.a.t;
import java.util.HashSet;
import android.content.Context;
import com.google.android.gms.common.a;
import java.util.ArrayList;
import com.google.android.gms.internal.e;
import android.accounts.Account;
import android.os.Looper;
import java.util.Set;
import java.util.Map;
import android.view.View;

public final class b
{
    private View gK;
    private final Map gL;
    private final Set gM;
    private Looper gN;
    private Account gO;
    private String gP;
    private e gQ;
    private final ArrayList gR;
    private final Set gS;
    private int gT;
    private final Map gU;
    private c gV;
    private String gW;
    private int gX;
    private j gY;
    private final ArrayList gZ;
    private a ha;
    private final Context mContext;
    
    public b(final Context mContext) {
        this.gS = new HashSet();
        this.gM = new HashSet();
        this.gL = new t();
        this.gU = new t();
        this.gX = -1;
        this.ha = a.getInstance();
        this.gY = bH.vR;
        this.gR = new ArrayList();
        this.gZ = new ArrayList();
        this.mContext = mContext;
        this.gN = mContext.getMainLooper();
        this.gP = mContext.getPackageName();
        this.gW = mContext.getClass().getName();
    }
    
    private static g gr(final j j, final Object o, final Context context, final Looper looper, final com.google.android.gms.common.internal.a a, final d d, final c c) {
        return j.gR(context, looper, a, o, d, c);
    }
    
    private com.google.android.gms.common.api.a gs() {
        final com.google.android.gms.common.internal.a gp = this.gp();
        final Map je = gp.je();
        final t t = new t();
        final t t2 = new t();
        final ArrayList<bz> list = new ArrayList<bz>();
        final Iterator<com.google.android.gms.common.api.e> iterator = this.gU.keySet().iterator();
        com.google.android.gms.common.api.e e = null;
        com.google.android.gms.common.api.e e2 = null;
        while (iterator.hasNext()) {
            final com.google.android.gms.common.api.e e3 = iterator.next();
            final Object value = this.gU.get(e3);
            int n = 0;
            if (je.get(e3) != null) {
                if (!je.get(e3).jW) {
                    n = 2;
                }
                else {
                    n = 1;
                }
            }
            t.put(e3, n);
            final bz bz = new bz(e3, n);
            list.add(bz);
            com.google.android.gms.common.api.e e4;
            g g;
            if (!e3.gA()) {
                final j gb = e3.gB();
                if (gb.hf() != 1) {
                    e4 = e;
                }
                else {
                    e4 = e3;
                }
                g = gr(gb, value, this.mContext, this.gN, gp, bz, bz);
            }
            else {
                final com.google.android.gms.common.api.l gc = e3.gC();
                if (gc.hf() != 1) {
                    e4 = e;
                }
                else {
                    e4 = e3;
                }
                g = gv(gc, value, this.mContext, this.gN, gp, bz, bz);
            }
            final g g2 = g;
            final com.google.android.gms.common.api.e e5 = e4;
            t2.put(e3.gz(), g2);
            com.google.android.gms.common.api.e e6;
            if (!g2.gO()) {
                e6 = e2;
            }
            else {
                if (e2 != null) {
                    final String value2 = String.valueOf(e3.gE());
                    final String value3 = String.valueOf(e2.gE());
                    throw new IllegalStateException(new StringBuilder(String.valueOf(value2).length() + 21 + String.valueOf(value3).length()).append(value2).append(" cannot be used with ").append(value3).toString());
                }
                e6 = e3;
            }
            e = e5;
            e2 = e6;
        }
        if (e2 != null) {
            if (e != null) {
                final String value4 = String.valueOf(e2.gE());
                final String value5 = String.valueOf(e.gE());
                throw new IllegalStateException(new StringBuilder(String.valueOf(value4).length() + 21 + String.valueOf(value5).length()).append(value4).append(" cannot be used with ").append(value5).toString());
            }
            l.kk(this.gO == null, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead", e2.gE());
            l.kk(this.gS.equals(this.gM), "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead.", e2.gE());
        }
        return new cu(this.mContext, new ReentrantLock(), this.gN, gp, this.ha, this.gY, t, this.gR, this.gZ, t2, this.gX, cu.Cl(t2.values(), true), list);
    }
    
    private void gt(final com.google.android.gms.common.api.a a) {
        bk.yG(this.gQ).yF(this.gX, a, this.gV);
    }
    
    private static com.google.android.gms.common.internal.b gv(final com.google.android.gms.common.api.l l, final Object o, final Context context, final Looper looper, final com.google.android.gms.common.internal.a a, final d d, final c c) {
        return new com.google.android.gms.common.internal.b(context, looper, l.gU(), d, c, a, l.gT(o));
    }
    
    public com.google.android.gms.common.api.a build() {
        boolean b = false;
        Label_0069: {
            if (!this.gU.isEmpty()) {
                break Label_0069;
            }
            while (true) {
                l.ke(b, "must call addApi() to add at least one API");
                final com.google.android.gms.common.api.a gs = this.gs();
                Label_0079: {
                    synchronized (com.google.android.gms.common.api.a.gJ) {
                        com.google.android.gms.common.api.a.gJ.add(gs);
                        // monitorexit(a.ge())
                        if (this.gX < 0) {
                            return gs;
                        }
                        break Label_0079;
                        b = true;
                        continue;
                    }
                }
                this.gt(gs);
                return gs;
            }
        }
    }
    
    public b go() {
        return this.gq("<<default account>>");
    }
    
    public com.google.android.gms.common.internal.a gp() {
        bX wr = bX.wr;
        if (this.gU.containsKey(bH.vO)) {
            wr = this.gU.get(bH.vO);
        }
        return new com.google.android.gms.common.internal.a(this.gO, this.gS, this.gL, this.gT, this.gK, this.gP, this.gW, wr);
    }
    
    public b gq(final String s) {
        Account go = null;
        if (s != null) {
            go = new Account(s, "com.google");
        }
        this.gO = go;
        return this;
    }
    
    public b gu(final com.google.android.gms.common.api.e e) {
        l.kc(e, "Api must not be null");
        this.gU.put(e, null);
        final List hg = e.gD().hg(null);
        this.gM.addAll(hg);
        this.gS.addAll(hg);
        return this;
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.common.api.h;
import java.util.Iterator;
import com.google.android.gms.common.api.j;
import android.support.v4.a.t;
import java.util.Collections;
import java.util.WeakHashMap;
import java.util.ArrayList;
import com.google.android.gms.common.api.l;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.common.f;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.Set;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.i;
import android.os.Bundle;
import android.content.Context;

final class bv implements bx
{
    private final Context mContext;
    private Bundle uj;
    private final i uk;
    private ConnectionResult ul;
    private final cf um;
    private ConnectionResult un;
    private final cA uo;
    private final Looper up;
    private final Set uq;
    private final Lock ur;
    private boolean us;
    private final Map ut;
    private int uu;
    private final cf uv;
    
    private bv(final Context mContext, final cA uo, final Lock ur, final Looper up, final f f, final Map map, final Map map2, final a a, final l l, final i uk, final ArrayList list, final ArrayList list2, final Map map3, final Map map4) {
        this.uq = Collections.newSetFromMap(new WeakHashMap<Object, Boolean>());
        this.ul = null;
        this.un = null;
        this.us = false;
        this.uu = 0;
        this.mContext = mContext;
        this.uo = uo;
        this.ur = ur;
        this.up = up;
        this.uk = uk;
        this.um = new cf(mContext, this.uo, ur, up, f, map2, null, map4, null, list2, new bS(this, null));
        this.uv = new cf(mContext, this.uo, ur, up, f, map, a, map3, l, list, new cy(this, null));
        final t t = new t();
        final Iterator<j> iterator = map2.keySet().iterator();
        while (iterator.hasNext()) {
            t.put(iterator.next(), this.um);
        }
        final Iterator<j> iterator2 = map.keySet().iterator();
        while (iterator2.hasNext()) {
            t.put(iterator2.next(), this.uv);
        }
        this.ut = Collections.unmodifiableMap((Map<?, ?>)t);
    }
    
    private void yK(final int n, final boolean b) {
        this.uo.Bu(n, b);
        this.un = null;
        this.ul = null;
    }
    
    public static bv yM(final Context context, final cA ca, final Lock lock, final Looper looper, final f f, final Map map, final a a, final Map map2, final l l, final ArrayList list) {
        i i = null;
        final t t = new t();
        final t t2 = new t();
        for (final Map.Entry<K, i> entry : map.entrySet()) {
            final i j = entry.getValue();
            if (j.eh()) {
                i = j;
            }
            if (!j.dZ()) {
                t2.put((j)entry.getKey(), j);
            }
            else {
                t.put((j)entry.getKey(), j);
            }
        }
        com.google.android.gms.common.internal.l.hv(!t.isEmpty(), "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        final t t3 = new t();
        final t t4 = new t();
        for (final h h : map2.keySet()) {
            final j dt = h.dT();
            if (!t.containsKey(dt)) {
                if (!t2.containsKey(dt)) {
                    throw new IllegalStateException("Each API in the apiTypeMap must have a corresponding client in the clients map.");
                }
                t4.put(h, map2.get(h));
            }
            else {
                t3.put(h, map2.get(h));
            }
        }
        final ArrayList<bF> list2 = new ArrayList<bF>();
        final ArrayList<bF> list3 = new ArrayList<bF>();
        for (final bF bf : list) {
            if (!t3.containsKey(bf.uL)) {
                if (!t4.containsKey(bf.uL)) {
                    throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the apiTypeMap");
                }
                list3.add(bf);
            }
            else {
                list2.add(bf);
            }
        }
        return new bv(context, ca, lock, looper, f, t, t2, a, l, i, list2, list3, t3, t4);
    }
    
    private void yO() {
        this.un = null;
        this.ul = null;
        this.um.yN();
        this.uv.yN();
    }
    
    private void yT(final Bundle uj) {
        if (this.uj != null) {
            if (uj != null) {
                this.uj.putAll(uj);
            }
        }
        else {
            this.uj = uj;
        }
    }
    
    private void yZ() {
        switch (this.uu) {
            default: {
                Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", (Throwable)new AssertionError());
                break;
            }
            case 2: {
                this.uo.Bt(this.uj);
            }
            case 1: {
                this.zk();
                break;
            }
        }
        this.uu = 0;
    }
    
    private static boolean za(final ConnectionResult connectionResult) {
        boolean b = false;
        if (connectionResult != null && connectionResult.nw()) {
            b = true;
        }
        return b;
    }
    
    private void zd(final ConnectionResult connectionResult) {
        switch (this.uu) {
            default: {
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", (Throwable)new Exception());
                break;
            }
            case 2: {
                this.uo.Bs(connectionResult);
            }
            case 1: {
                this.zk();
                break;
            }
        }
        this.uu = 0;
    }
    
    private boolean zf(final b b) {
        final j rm = b.rm();
        com.google.android.gms.common.internal.l.hq(this.ut.containsKey(rm), "GoogleApiClient is not configured to use the API required for this call.");
        return ((cf)this.ut.get(rm)).equals(this.uv);
    }
    
    private void zi() {
        if (!za(this.ul)) {
            if (this.ul != null && za(this.un)) {
                this.uv.yV();
                this.zd(this.ul);
            }
            else if (this.ul != null && this.un != null) {
                ConnectionResult connectionResult = this.ul;
                if (this.uv.wH < this.um.wH) {
                    connectionResult = this.un;
                }
                this.zd(connectionResult);
            }
        }
        else if (!za(this.un) && !this.zj()) {
            if (this.un != null) {
                if (this.uu != 1) {
                    this.zd(this.un);
                    this.um.yV();
                }
                else {
                    this.zk();
                }
            }
        }
        else {
            this.yZ();
        }
    }
    
    private boolean zj() {
        return this.un != null && this.un.nu() == 4;
    }
    
    private void zk() {
        final Iterator<com.google.android.gms.internal.a> iterator = this.uq.iterator();
        while (iterator.hasNext()) {
            iterator.next().rk();
        }
        this.uq.clear();
    }
    
    private PendingIntent zl() {
        if (this.uk != null) {
            return PendingIntent.getActivity(this.mContext, this.uo.Cu(), this.uk.ef(), 134217728);
        }
        return null;
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        printWriter.append(s).append("authClient").println(":");
        this.uv.dump(String.valueOf(s).concat("  "), fileDescriptor, printWriter, array);
        printWriter.append(s).append("anonClient").println(":");
        this.um.dump(String.valueOf(s).concat("  "), fileDescriptor, printWriter, array);
    }
    
    public void yN() {
        this.uu = 2;
        this.us = false;
        this.yO();
    }
    
    public void yQ() {
        this.um.yQ();
        this.uv.yQ();
    }
    
    public void yV() {
        this.un = null;
        this.ul = null;
        this.uu = 0;
        this.um.yV();
        this.uv.yV();
        this.zk();
    }
    
    public b yX(final b b) {
        if (!this.zf(b)) {
            return this.um.yX(b);
        }
        if (!this.zj()) {
            return this.uv.yX(b);
        }
        b.rs(new Status(4, null, this.zl()));
        return b;
    }
    
    public boolean zb() {
        boolean b = true;
        this.ur.lock();
        try {
            if (this.um.zb() || (!this.zg() && !this.zj() && this.uu != (b ? 1 : 0))) {
                b = false;
            }
            return b;
        }
        finally {
            this.ur.unlock();
        }
    }
    
    public b zc(final b b) {
        if (!this.zf(b)) {
            return this.um.zc(b);
        }
        if (!this.zj()) {
            return this.uv.zc(b);
        }
        b.rs(new Status(4, null, this.zl()));
        return b;
    }
    
    public boolean zg() {
        return this.uv.zb();
    }
}

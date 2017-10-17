// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.internal.l;
import java.util.Iterator;
import com.google.android.gms.common.api.h;
import android.support.v4.a.t;
import java.util.Collections;
import java.util.WeakHashMap;
import java.util.ArrayList;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.common.f;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.Set;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.g;
import android.os.Bundle;
import android.content.Context;

final class bp implements br
{
    private final Context mContext;
    private int uA;
    private final bZ uB;
    private Bundle up;
    private final g uq;
    private ConnectionResult ur;
    private final bZ us;
    private ConnectionResult ut;
    private final cu uu;
    private final Looper uv;
    private final Set uw;
    private final Lock ux;
    private boolean uy;
    private final Map uz;
    
    private bp(final Context mContext, final cu uu, final Lock ux, final Looper uv, final f f, final Map map, final Map map2, final a a, final j j, final g uq, final ArrayList list, final ArrayList list2, final Map map3, final Map map4) {
        this.uw = Collections.newSetFromMap(new WeakHashMap<Object, Boolean>());
        this.ur = null;
        this.ut = null;
        this.uy = false;
        this.uA = 0;
        this.mContext = mContext;
        this.uu = uu;
        this.ux = ux;
        this.uv = uv;
        this.uq = uq;
        this.us = new bZ(mContext, this.uu, ux, uv, f, map2, null, map4, null, list2, new bM(this, null));
        this.uB = new bZ(mContext, this.uu, ux, uv, f, map, a, map3, j, list, new cs(this, null));
        final t t = new t();
        final Iterator<h> iterator = map2.keySet().iterator();
        while (iterator.hasNext()) {
            t.put(iterator.next(), this.us);
        }
        final Iterator<h> iterator2 = map.keySet().iterator();
        while (iterator2.hasNext()) {
            t.put(iterator2.next(), this.uB);
        }
        this.uz = Collections.unmodifiableMap((Map<?, ?>)t);
    }
    
    private void yJ(final int n, final boolean b) {
        this.uu.Bt(n, b);
        this.ut = null;
        this.ur = null;
    }
    
    public static bp yL(final Context context, final cu cu, final Lock lock, final Looper looper, final f f, final Map map, final a a, final Map map2, final j j, final ArrayList list) {
        g g = null;
        final t t = new t();
        final t t2 = new t();
        for (final Map.Entry<K, g> entry : map.entrySet()) {
            final g g2 = entry.getValue();
            if (g2.gO()) {
                g = g2;
            }
            if (!g2.gG()) {
                t2.put((h)entry.getKey(), g2);
            }
            else {
                t.put((h)entry.getKey(), g2);
            }
        }
        l.kj(!t.isEmpty(), "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        final t t3 = new t();
        final t t4 = new t();
        for (final e e : map2.keySet()) {
            final h gz = e.gz();
            if (!t.containsKey(gz)) {
                if (!t2.containsKey(gz)) {
                    throw new IllegalStateException("Each API in the apiTypeMap must have a corresponding client in the clients map.");
                }
                t4.put(e, map2.get(e));
            }
            else {
                t3.put(e, map2.get(e));
            }
        }
        final ArrayList<bz> list2 = new ArrayList<bz>();
        final ArrayList<bz> list3 = new ArrayList<bz>();
        for (final bz bz : list) {
            if (!t3.containsKey(bz.uR)) {
                if (!t4.containsKey(bz.uR)) {
                    throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the apiTypeMap");
                }
                list3.add(bz);
            }
            else {
                list2.add(bz);
            }
        }
        return new bp(context, cu, lock, looper, f, t, t2, a, j, g, list2, list3, t3, t4);
    }
    
    private void yN() {
        this.ut = null;
        this.ur = null;
        this.us.yM();
        this.uB.yM();
    }
    
    private void yS(final Bundle up) {
        if (this.up != null) {
            if (up != null) {
                this.up.putAll(up);
            }
        }
        else {
            this.up = up;
        }
    }
    
    private void yY() {
        switch (this.uA) {
            default: {
                Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", (Throwable)new AssertionError());
                break;
            }
            case 2: {
                this.uu.Bs(this.up);
            }
            case 1: {
                this.zj();
                break;
            }
        }
        this.uA = 0;
    }
    
    private static boolean yZ(final ConnectionResult connectionResult) {
        boolean b = false;
        if (connectionResult != null && connectionResult.qj()) {
            b = true;
        }
        return b;
    }
    
    private void zc(final ConnectionResult connectionResult) {
        switch (this.uA) {
            default: {
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", (Throwable)new Exception());
                break;
            }
            case 2: {
                this.uu.Br(connectionResult);
            }
            case 1: {
                this.zj();
                break;
            }
        }
        this.uA = 0;
    }
    
    private boolean ze(final b b) {
        final h ro = b.ro();
        l.ke(this.uz.containsKey(ro), "GoogleApiClient is not configured to use the API required for this call.");
        return ((bZ)this.uz.get(ro)).equals(this.uB);
    }
    
    private void zh() {
        if (!yZ(this.ur)) {
            if (this.ur != null && yZ(this.ut)) {
                this.uB.yU();
                this.zc(this.ur);
            }
            else if (this.ur != null && this.ut != null) {
                ConnectionResult connectionResult = this.ur;
                if (this.uB.wN < this.us.wN) {
                    connectionResult = this.ut;
                }
                this.zc(connectionResult);
            }
        }
        else if (!yZ(this.ut) && !this.zi()) {
            if (this.ut != null) {
                if (this.uA != 1) {
                    this.zc(this.ut);
                    this.us.yU();
                }
                else {
                    this.zj();
                }
            }
        }
        else {
            this.yY();
        }
    }
    
    private boolean zi() {
        return this.ut != null && this.ut.qh() == 4;
    }
    
    private void zj() {
        final Iterator<com.google.android.gms.internal.a> iterator = this.uw.iterator();
        while (iterator.hasNext()) {
            iterator.next().rm();
        }
        this.uw.clear();
    }
    
    private PendingIntent zk() {
        if (this.uq != null) {
            return PendingIntent.getActivity(this.mContext, this.uu.Ct(), this.uq.gM(), 134217728);
        }
        return null;
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        printWriter.append(s).append("authClient").println(":");
        this.uB.dump(String.valueOf(s).concat("  "), fileDescriptor, printWriter, array);
        printWriter.append(s).append("anonClient").println(":");
        this.us.dump(String.valueOf(s).concat("  "), fileDescriptor, printWriter, array);
    }
    
    public void yM() {
        this.uA = 2;
        this.uy = false;
        this.yN();
    }
    
    public void yP() {
        this.us.yP();
        this.uB.yP();
    }
    
    public void yU() {
        this.ut = null;
        this.ur = null;
        this.uA = 0;
        this.us.yU();
        this.uB.yU();
        this.zj();
    }
    
    public b yW(final b b) {
        if (!this.ze(b)) {
            return this.us.yW(b);
        }
        if (!this.zi()) {
            return this.uB.yW(b);
        }
        b.ru(new Status(4, null, this.zk()));
        return b;
    }
    
    public boolean za() {
        boolean b = true;
        this.ux.lock();
        try {
            if (this.us.za() || (!this.zf() && !this.zi() && this.uA != (b ? 1 : 0))) {
                b = false;
            }
            return b;
        }
        finally {
            this.ux.unlock();
        }
    }
    
    public b zb(final b b) {
        if (!this.ze(b)) {
            return this.us.zb(b);
        }
        if (!this.zi()) {
            return this.uB.zb(b);
        }
        b.ru(new Status(4, null, this.zk()));
        return b;
    }
    
    public boolean zf() {
        return this.uB.za();
    }
}

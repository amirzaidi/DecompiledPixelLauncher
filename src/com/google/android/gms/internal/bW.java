// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import java.util.Collection;
import java.lang.ref.ReferenceQueue;
import android.content.Context;
import android.os.Handler$Callback;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.app.PendingIntent;
import android.os.DeadObjectException;
import android.support.v4.a.t;
import android.util.Log;
import java.util.Map;
import com.google.android.gms.common.api.l;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.internal.a;
import java.util.Iterator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.b;
import java.util.HashSet;
import java.util.LinkedList;
import com.google.android.gms.common.api.C;
import com.google.android.gms.common.ConnectionResult;
import java.util.Set;
import com.google.android.gms.common.api.n;
import java.util.Queue;
import android.util.SparseArray;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.d;

class bw implements d, c
{
    private final g uF;
    private final SparseArray uG;
    final /* synthetic */ bG uH;
    private final SparseArray uI;
    private final Queue uJ;
    private final n uK;
    private final Set uL;
    private ConnectionResult uM;
    private boolean uN;
    private final bW uO;
    
    public bw(final bG uh, final C c) {
        this.uH = uh;
        this.uJ = new LinkedList();
        this.uI = new SparseArray();
        this.uL = new HashSet();
        this.uG = new SparseArray();
        this.uM = null;
        this.uF = this.zv(c);
        Object uk;
        if (!(this.uF instanceof b)) {
            uk = this.uF;
        }
        else {
            uk = ((b)this.uF).jm();
        }
        this.uK = (n)uk;
        this.uO = c.hx();
    }
    
    private void zA() {
        if (this.uN) {
            this.uH.mHandler.removeMessages(9, (Object)this.uO);
            this.uH.mHandler.removeMessages(8, (Object)this.uO);
            this.uN = false;
        }
    }
    
    private void zD() {
        if (this.uF.gN() && this.uG.size() == 0) {
            for (int i = 0; i < this.uI.size(); ++i) {
                if (((bQ)this.uI.get(this.uI.keyAt(i))).Bv()) {
                    this.zy();
                    return;
                }
            }
            this.uF.gJ();
        }
    }
    
    private void zE(final Status status) {
        final Iterator iterator = this.uJ.iterator();
        while (iterator.hasNext()) {
            iterator.next().AL(status);
        }
        this.uJ.clear();
    }
    
    private void zG(final ConnectionResult connectionResult) {
        final Iterator<cw> iterator = this.uL.iterator();
        while (iterator.hasNext()) {
            iterator.next().CD(this.uO, connectionResult);
        }
        this.uL.clear();
    }
    
    private void zK() {
        final int n = 8;
        if (this.uN) {
            this.zA();
            Status status;
            if (this.uH.vJ.qz(this.uH.mContext) != 18) {
                status = new Status(n, "API failed to connect while resuming due to an unknown error.");
            }
            else {
                status = new Status(n, "Connection timed out while waiting for Google Play services update to complete.");
            }
            this.zE(status);
            this.uF.gJ();
        }
    }
    
    private void zL() {
        if (this.uN) {
            this.zz();
        }
    }
    
    private g zv(final C c) {
        final e hy = c.hy();
        if (!hy.gA()) {
            return c.hy().gB().gR(c.hz(), this.uH.mHandler.getLooper(), a.ja(c.hz()), c.hw(), this, this);
        }
        final l gc = hy.gC();
        return new b(c.hz(), this.uH.mHandler.getLooper(), gc.gU(), this, this, a.ja(c.hz()), gc.gT(c.hw()));
    }
    
    private void zx(final bC bc) {
        final int n = 1;
        bc.AM(this.uI);
        Label_0055: {
            if (bc.vp == 3) {
                break Label_0055;
            }
            Label_0190: {
                if (bc.vp == 4) {
                    break Label_0190;
                }
                try {
                    while (true) {
                        Map<?, ?> map2;
                        SparseArray ug3;
                        while (true) {
                            bc.AK(this.uK);
                            return;
                            Map map = null;
                            bj bj = null;
                            try {
                                final SparseArray ug = this.uG;
                                try {
                                    final Object value = ug.get(bc.vo);
                                    try {
                                        map = (Map)value;
                                        final com.google.android.gms.internal.b wt = ((cd)bc).wT;
                                        try {
                                            bj = (bj)wt;
                                            if (map == null) {
                                                Log.w("GoogleApiManager", "Received call to unregister a listener without a matching registration call.");
                                                continue;
                                            }
                                        }
                                        catch (ClassCastException ex) {
                                            throw new IllegalStateException("Listener unregistration methods must implement ListenerApiMethod");
                                        }
                                    }
                                    catch (ClassCastException ex2) {}
                                }
                                catch (ClassCastException ex3) {}
                            }
                            catch (ClassCastException ex4) {}
                            map.remove(bj.yD());
                            continue;
                            try {
                                final SparseArray ug2 = this.uG;
                                try {
                                    final Object value2 = ug2.get(bc.vo);
                                    try {
                                        map2 = (Map<?, ?>)value2;
                                        if (map2 != null) {
                                            final Map<?, ?> map3 = map2;
                                            final com.google.android.gms.internal.b wt2 = ((cd)bc).wT;
                                            map3.put(((bj)wt2).yD(), wt2);
                                            continue;
                                        }
                                        map2 = (Map<?, ?>)new t(1);
                                        ug3 = this.uG;
                                    }
                                    catch (ClassCastException ex5) {}
                                }
                                catch (ClassCastException ex6) {}
                            }
                            catch (ClassCastException ex7) {}
                            break;
                        }
                        ug3.put(bc.vo, (Object)map2);
                        continue;
                    }
                }
                catch (DeadObjectException ex8) {
                    this.uF.gJ();
                    this.gx(n);
                }
            }
        }
    }
    
    private void zy() {
        final int n = 10;
        this.uH.mHandler.removeMessages(n, (Object)this.uO);
        this.uH.mHandler.sendMessageDelayed(this.uH.mHandler.obtainMessage(n, (Object)this.uO), this.uH.vH);
    }
    
    private void zz() {
        if (!this.uF.gN() && !this.uF.gH()) {
            if (this.uF.gP() && this.uH.vK != 0) {
                this.uH.vK = this.uH.vJ.qz(this.uH.mContext);
                if (this.uH.vK != 0) {
                    this.gw(new ConnectionResult(this.uH.vK, null));
                    return;
                }
            }
            this.uF.gL(new bE(this.uH, this.uF, this.uO));
        }
    }
    
    public void gw(final ConnectionResult um) {
        this.zC();
        this.uH.vK = -1;
        this.zG(um);
        final int key = this.uI.keyAt(0);
        Object o = this.uJ;
        Label_0103: {
            if (((Collection)o).isEmpty()) {
                break Label_0103;
            }
            while (true) {
                o = bG.vG;
                Label_0167: {
                    synchronized (o) {
                        if (this.uH.vy != null && this.uH.vC.contains(this.uO)) {
                            this.uH.vy.yz(um, key);
                            return;
                        }
                        // monitorexit(o)
                        o = this.uH;
                        if (((bG)o).AV(um, key)) {
                            return;
                        }
                        break Label_0167;
                        this.uM = um;
                        return;
                    }
                }
                if (um.qh() == 18) {
                    this.uN = true;
                }
                if (!this.uN) {
                    final String value = String.valueOf(this.uO.BF());
                    o = new StringBuilder(String.valueOf(value).length() + 38).append("API: ").append(value).append(" is not available on this device.").toString();
                    this.zE(new Status(17, (String)o));
                    return;
                }
                final Handler as = this.uH.mHandler;
                o = Message.obtain(this.uH.mHandler, 8, (Object)this.uO);
                as.sendMessageDelayed((Message)o, this.uH.vI);
            }
        }
    }
    
    public void gx(final int n) {
        this.zC();
        this.uN = true;
        this.uH.mHandler.sendMessageDelayed(Message.obtain(this.uH.mHandler, 8, (Object)this.uO), this.uH.vI);
        this.uH.mHandler.sendMessageDelayed(Message.obtain(this.uH.mHandler, 9, (Object)this.uO), this.uH.vF);
        this.uH.vK = -1;
    }
    
    public void gy(final Bundle bundle) {
        this.zC();
        this.zG(ConnectionResult.nk);
        this.zA();
        for (int i = 0; i < this.uG.size(); ++i) {
            for (final com.google.android.gms.internal.b b : ((Map)this.uG.get(this.uG.keyAt(i))).values()) {
                try {
                    b.rs(this.uK);
                }
                catch (DeadObjectException ex) {
                    this.uF.gJ();
                    this.gx(1);
                }
            }
        }
        this.zt();
        this.zy();
    }
    
    public void zB(final int n, final boolean b) {
        final Iterator iterator = this.uJ.iterator();
        while (iterator.hasNext()) {
            final bC bc = iterator.next();
            if (bc.vo == n && bc.vp != 1 && bc.cancel()) {
                iterator.remove();
            }
        }
        ((bQ)this.uI.get(n)).BD();
        this.uG.delete(n);
        if (!b) {
            this.uI.remove(n);
            this.uH.vz.remove(n);
            if (this.uI.size() == 0 && this.uJ.isEmpty()) {
                this.zA();
                this.uF.gJ();
                this.uH.vE.remove(this.uO);
                synchronized (bG.vG) {
                    this.uH.vC.remove(this.uO);
                }
            }
        }
    }
    
    public void zC() {
        this.uM = null;
    }
    
    public void zH(final int n) {
        this.uI.put(n, (Object)new bQ(this.uO.BG(), this.uF));
    }
    
    ConnectionResult zJ() {
        return this.uM;
    }
    
    boolean zM() {
        return this.uF.gN();
    }
    
    public void zr(final cw cw) {
        this.uL.add(cw);
    }
    
    public void zs(final int n) {
        ((bQ)this.uI.get(n)).Bz(new cx(this, n));
    }
    
    public void zt() {
        while (this.uF.gN() && !this.uJ.isEmpty()) {
            this.zx(this.uJ.remove());
        }
    }
    
    public void zu(final bC bc) {
        if (!this.uF.gN()) {
            this.uJ.add(bc);
            if (this.uM != null && this.uM.qk()) {
                this.gw(this.uM);
            }
            else {
                this.zz();
            }
        }
        else {
            this.zx(bc);
            this.zy();
        }
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.internal.l;
import android.util.Log;
import com.google.android.gms.common.api.y;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.api.w;
import java.lang.ref.WeakReference;
import com.google.android.gms.common.api.u;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.v;

public class d implements v
{
    private boolean nS;
    private f nT;
    private Status nU;
    private u nV;
    private final WeakReference nW;
    private final cv nX;
    private volatile w nY;
    private d nZ;
    private final Object oa;
    
    private boolean rB() {
        final a a = (a)this.nW.get();
        return this.nY != null && a != null;
    }
    
    private void rE(final Status nu) {
        synchronized (this.oa) {
            this.rJ(this.nU = nu);
        }
    }
    
    private void rI(final m m) {
        if (m instanceof y) {
            try {
                ((y)m).hq();
            }
            catch (RuntimeException ex) {
                final String value = String.valueOf(m);
                Log.w("TransformedResultImpl", new StringBuilder(String.valueOf(value).length() + 18).append("Unable to release ").append(value).toString(), (Throwable)ex);
            }
        }
    }
    
    private void rJ(final Status status) {
        while (true) {
            Label_0072: {
                synchronized (this.oa) {
                    if (this.nV == null) {
                        if (this.rB()) {
                            break Label_0072;
                        }
                    }
                    else {
                        final Status hj = this.nV.hj(status);
                        l.kc(hj, "onFailure must not return null");
                        this.nZ.rE(hj);
                    }
                    return;
                }
            }
            this.nY.hl(status);
        }
    }
    
    private void rx() {
        if (this.nV == null && this.nY == null) {
            return;
        }
        final a a = (a)this.nW.get();
        if (!this.nS && this.nV != null && a != null) {
            a.gn(this);
            this.nS = true;
        }
        if (this.nU == null) {
            if (this.nT != null) {
                this.nT.gF(this);
            }
        }
        else {
            this.rJ(this.nU);
        }
    }
    
    public void hk(final m m) {
        while (true) {
            Label_0083: {
                synchronized (this.oa) {
                    if (!m.gV().gY()) {
                        this.rE(m.gV());
                        this.rI(m);
                    }
                    else {
                        if (this.nV != null) {
                            break Label_0083;
                        }
                        if (this.rB()) {
                            this.nY.hm(m);
                        }
                    }
                    return;
                }
            }
            bN.Bu().submit(new bn(this, m));
        }
    }
    
    public void rH(final f nt) {
        synchronized (this.oa) {
            this.nT = nt;
            this.rx();
        }
    }
    
    void ry() {
        this.nY = null;
    }
}

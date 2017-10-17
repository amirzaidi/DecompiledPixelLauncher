// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.internal.l;
import android.util.Log;
import com.google.android.gms.common.api.y;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.api.w;
import java.lang.ref.WeakReference;
import com.google.android.gms.common.api.v;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.a;

public class d implements a
{
    private boolean nq;
    private c nr;
    private Status ns;
    private v nt;
    private final WeakReference nu;
    private final cB nv;
    private volatile w nw;
    private d nx;
    private final Object ny;
    
    private void rC(final Status ns) {
        synchronized (this.ny) {
            this.rH(this.ns = ns);
        }
    }
    
    private void rG(final b b) {
        if (b instanceof y) {
            try {
                ((y)b).eC();
            }
            catch (RuntimeException ex) {
                final String value = String.valueOf(b);
                Log.w("TransformedResultImpl", new StringBuilder(String.valueOf(value).length() + 18).append("Unable to release ").append(value).toString(), (Throwable)ex);
            }
        }
    }
    
    private void rH(final Status status) {
        while (true) {
            Label_0072: {
                synchronized (this.ny) {
                    if (this.nt == null) {
                        if (this.rz()) {
                            break Label_0072;
                        }
                    }
                    else {
                        final Status ew = this.nt.ew(status);
                        l.ho(ew, "onFailure must not return null");
                        this.nx.rC(ew);
                    }
                    return;
                }
            }
            this.nw.ex(status);
        }
    }
    
    private void rv() {
        if (this.nt == null && this.nw == null) {
            return;
        }
        final com.google.android.gms.common.api.d d = (com.google.android.gms.common.api.d)this.nu.get();
        if (!this.nq && this.nt != null && d != null) {
            d.dC(this);
            this.nq = true;
        }
        if (this.ns == null) {
            if (this.nr != null) {
                this.nr.ds(this);
            }
        }
        else {
            this.rH(this.ns);
        }
    }
    
    private boolean rz() {
        final com.google.android.gms.common.api.d d = (com.google.android.gms.common.api.d)this.nu.get();
        return this.nw != null && d != null;
    }
    
    public void C(final b b) {
        while (true) {
            Label_0083: {
                synchronized (this.ny) {
                    if (!b.dr().dF()) {
                        this.rC(b.dr());
                        this.rG(b);
                    }
                    else {
                        if (this.nt != null) {
                            break Label_0083;
                        }
                        if (this.rz()) {
                            this.nw.ey(b);
                        }
                    }
                    return;
                }
            }
            bT.Bv().submit(new bt(this, b));
        }
    }
    
    public void rF(final c nr) {
        synchronized (this.ny) {
            this.nr = nr;
            this.rv();
        }
    }
    
    void rw() {
        this.nw = null;
    }
}

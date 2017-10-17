// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.m;
import java.util.Set;
import com.google.android.gms.common.api.D;
import android.support.v4.a.t;
import com.google.android.gms.common.api.E;
import com.google.android.gms.common.api.Status;
import android.support.v4.a.b;
import com.google.android.gms.common.ConnectionResult;

public final class cw extends f
{
    private int xJ;
    private boolean xK;
    
    private void CE(final ConnectionResult connectionResult) {
        for (int i = 0; i < null.size(); ++i) {
            this.CD((bW)null.aib(i), connectionResult);
        }
    }
    
    protected E CB(final Status status) {
        synchronized (null) {
            this.CE(new ConnectionResult(8));
            E e;
            if (null.size() != 1) {
                e = new E(status, null);
            }
            else {
                e = new D(status, null);
            }
            return e;
        }
    }
    
    public Set CC() {
        return null.keySet();
    }
    
    public void CD(final bW bw, final ConnectionResult connectionResult) {
        while (true) {
            int n = 1;
            // monitorenter(null)
            final b b = null;
            try {
                b.put(bw, connectionResult);
                --this.xJ;
                if (!connectionResult.qj()) {
                    this.xK = true;
                }
                if (this.xJ != 0) {
                    return;
                }
            }
            finally {
            }
            // monitorexit(null)
            Status hn;
            if (!this.xK) {
                hn = Status.hn;
            }
            else {
                hn = new Status(13);
            }
            E e;
            if (null.size() != n) {
                e = new(com.google.android.gms.common.api.E.class);
                n = 0;
                new E(hn, null);
            }
            else {
                e = new(com.google.android.gms.common.api.D.class);
                n = 0;
                new D(hn, null);
            }
            this.rV(e);
        }
    }
}

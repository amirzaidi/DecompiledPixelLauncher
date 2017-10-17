// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.d;
import android.util.Log;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.util.SparseArray;

public class bq extends bo
{
    private final SparseArray ud;
    
    private bq(final aC ac) {
        super(ac);
        this.ud = new SparseArray();
        this.sC.uH("AutoManageHelper", this);
    }
    
    public static bq yH(final e e) {
        final aC va = aJ.va(e);
        final bq bq = (bq)va.uG("AutoManageHelper", bq.class);
        if (bq == null) {
            return new bq(va);
        }
        return bq;
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        for (int i = 0; i < this.ud.size(); ++i) {
            ((cz)this.ud.valueAt(i)).dump(s, fileDescriptor, printWriter, array);
        }
    }
    
    public void onStart() {
        super.onStart();
        final boolean mStarted = this.mStarted;
        final String value = String.valueOf(this.ud);
        Log.d("AutoManageHelper", new StringBuilder(String.valueOf(value).length() + 14).append("onStart ").append(mStarted).append(" ").append(value).toString());
        if (!this.tZ) {
            for (int i = 0; i < this.ud.size(); ++i) {
                ((cz)this.ud.valueAt(i)).xc.dv();
            }
        }
    }
    
    public void onStop() {
        super.onStop();
        for (int i = 0; i < this.ud.size(); ++i) {
            ((cz)this.ud.valueAt(i)).xc.dx();
        }
    }
    
    protected void yC() {
        for (int i = 0; i < this.ud.size(); ++i) {
            ((cz)this.ud.valueAt(i)).xc.dv();
        }
    }
    
    public void yF(final int n) {
        final cz cz = (cz)this.ud.get(n);
        this.ud.remove(n);
        if (cz != null) {
            cz.Cj();
        }
    }
    
    public void yG(final int n, final d d, final f f) {
        final int n2 = 54;
        boolean b = false;
        l.ho(d, "GoogleApiClient instance cannot be null");
        if (this.ud.indexOfKey(n) < 0) {
            b = true;
        }
        l.hv(b, new StringBuilder(n2).append("Already managing a GoogleApiClient with id ").append(n).toString());
        Log.d("AutoManageHelper", new StringBuilder(n2).append("starting AutoManage for client ").append(n).append(" ").append(this.mStarted).append(" ").append(this.tZ).toString());
        this.ud.put(n, (Object)new cz(this, n, d, f));
        if (this.mStarted && !this.tZ) {
            final String value = String.valueOf(d);
            Log.d("AutoManageHelper", new StringBuilder(String.valueOf(value).length() + 11).append("connecting ").append(value).toString());
            d.dv();
        }
    }
    
    protected void yz(final ConnectionResult connectionResult, final int n) {
        Log.w("AutoManageHelper", "Unresolved error while connecting client. Stopping auto-manage.");
        if (n >= 0) {
            final cz cz = (cz)this.ud.get(n);
            if (cz != null) {
                this.yF(n);
                final f xd = cz.xd;
                if (xd != null) {
                    xd.dQ(connectionResult);
                }
            }
            return;
        }
        Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", (Throwable)new Exception());
    }
}

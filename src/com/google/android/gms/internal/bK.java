// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.a;
import android.util.Log;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.util.SparseArray;

public class bk extends bi
{
    private final SparseArray uj;
    
    private bk(final aw aw) {
        super(aw);
        this.uj = new SparseArray();
        this.sI.uG("AutoManageHelper", this);
    }
    
    public static bk yG(final e e) {
        final aw uz = aD.uZ(e);
        final bk bk = (bk)uz.uF("AutoManageHelper", bk.class);
        if (bk == null) {
            return new bk(uz);
        }
        return bk;
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        for (int i = 0; i < this.uj.size(); ++i) {
            ((ct)this.uj.valueAt(i)).dump(s, fileDescriptor, printWriter, array);
        }
    }
    
    public void onStart() {
        super.onStart();
        final boolean mStarted = this.mStarted;
        final String value = String.valueOf(this.uj);
        Log.d("AutoManageHelper", new StringBuilder(String.valueOf(value).length() + 14).append("onStart ").append(mStarted).append(" ").append(value).toString());
        if (!this.uf) {
            for (int i = 0; i < this.uj.size(); ++i) {
                ((ct)this.uj.valueAt(i)).xi.gg();
            }
        }
    }
    
    public void onStop() {
        super.onStop();
        for (int i = 0; i < this.uj.size(); ++i) {
            ((ct)this.uj.valueAt(i)).xi.gi();
        }
    }
    
    protected void yB() {
        for (int i = 0; i < this.uj.size(); ++i) {
            ((ct)this.uj.valueAt(i)).xi.gg();
        }
    }
    
    public void yE(final int n) {
        final ct ct = (ct)this.uj.get(n);
        this.uj.remove(n);
        if (ct != null) {
            ct.Ci();
        }
    }
    
    public void yF(final int n, final a a, final c c) {
        final int n2 = 54;
        boolean b = false;
        l.kc(a, "GoogleApiClient instance cannot be null");
        if (this.uj.indexOfKey(n) < 0) {
            b = true;
        }
        l.kj(b, new StringBuilder(n2).append("Already managing a GoogleApiClient with id ").append(n).toString());
        Log.d("AutoManageHelper", new StringBuilder(n2).append("starting AutoManage for client ").append(n).append(" ").append(this.mStarted).append(" ").append(this.uf).toString());
        this.uj.put(n, (Object)new ct(this, n, a, c));
        if (this.mStarted && !this.uf) {
            final String value = String.valueOf(a);
            Log.d("AutoManageHelper", new StringBuilder(String.valueOf(value).length() + 11).append("connecting ").append(value).toString());
            a.gg();
        }
    }
    
    protected void yy(final ConnectionResult connectionResult, final int n) {
        Log.w("AutoManageHelper", "Unresolved error while connecting client. Stopping auto-manage.");
        if (n >= 0) {
            final ct ct = (ct)this.uj.get(n);
            if (ct != null) {
                this.yE(n);
                final c xj = ct.xj;
                if (xj != null) {
                    xj.gw(connectionResult);
                }
            }
            return;
        }
        Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", (Throwable)new Exception());
    }
}

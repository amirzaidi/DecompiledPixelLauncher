// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.c;

class ct implements c
{
    public final int xh;
    public final a xi;
    public final c xj;
    final /* synthetic */ bk xk;
    
    public ct(final bk xk, final int xh, final a xi, final c xj) {
        this.xk = xk;
        this.xh = xh;
        this.xi = xi;
        this.xj = xj;
        xi.gk(this);
    }
    
    public void Ci() {
        this.xi.gh(this);
        this.xi.gi();
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        printWriter.append(s).append("GoogleApiClient #").print(this.xh);
        printWriter.println(":");
        this.xi.dump(String.valueOf(s).concat("  "), fileDescriptor, printWriter, array);
    }
    
    public void gw(final ConnectionResult connectionResult) {
        final String value = String.valueOf(connectionResult);
        Log.d("AutoManageHelper", new StringBuilder(String.valueOf(value).length() + 27).append("beginFailureResolution for ").append(value).toString());
        this.xk.yz(connectionResult, this.xh);
    }
}

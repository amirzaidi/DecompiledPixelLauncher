// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.api.f;

class cz implements f
{
    public final int xb;
    public final d xc;
    public final f xd;
    final /* synthetic */ bq xe;
    
    public cz(final bq xe, final int xb, final d xc, final f xd) {
        this.xe = xe;
        this.xb = xb;
        this.xc = xc;
        this.xd = xd;
        xc.dz(this);
    }
    
    public void Cj() {
        this.xc.dw(this);
        this.xc.dx();
    }
    
    public void dQ(final ConnectionResult connectionResult) {
        final String value = String.valueOf(connectionResult);
        Log.d("AutoManageHelper", new StringBuilder(String.valueOf(value).length() + 27).append("beginFailureResolution for ").append(value).toString());
        this.xe.yA(connectionResult, this.xb);
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        printWriter.append(s).append("GoogleApiClient #").print(this.xb);
        printWriter.println(":");
        this.xc.dump(String.valueOf(s).concat("  "), fileDescriptor, printWriter, array);
    }
}

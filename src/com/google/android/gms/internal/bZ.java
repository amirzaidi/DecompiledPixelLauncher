// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.d;

public class bz implements d, c
{
    public final e uR;
    private final int uS;
    private bZ uT;
    
    public bz(final e ur, final int us) {
        this.uR = ur;
        this.uS = us;
    }
    
    private void zS() {
        l.kc(this.uT, "Callbacks must be attached to a GoogleApiClient instance before connecting the client.");
    }
    
    public void gw(final ConnectionResult connectionResult) {
        this.zS();
        this.uT.BZ(connectionResult, this.uR, this.uS);
    }
    
    public void gx(final int n) {
        this.zS();
        this.uT.BX(n);
    }
    
    public void gy(final Bundle bundle) {
        this.zS();
        this.uT.BS(bundle);
    }
    
    public void zR(final bZ ut) {
        this.uT = ut;
    }
}

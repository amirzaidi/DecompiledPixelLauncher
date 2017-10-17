// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.os.Bundle;
import java.util.Collections;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.ConnectionResult;

public class ca implements co
{
    private final cf wi;
    
    public ca(final cf wi) {
        this.wi = wi;
    }
    
    public void AD(final ConnectionResult connectionResult, final h h, final int n) {
    }
    
    public b Ac(final b b) {
        this.wi.wC.xg.add(b);
        return b;
    }
    
    public boolean Ad() {
        return true;
    }
    
    public b Ah(final b b) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
    
    public void At() {
        this.wi.BZ();
        this.wi.wC.xq = Collections.emptySet();
    }
    
    public void Au(final Bundle bundle) {
    }
    
    public void Az(final int n) {
    }
    
    public void zY() {
        this.wi.BV();
    }
}

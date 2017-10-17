// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.a;

class aa implements Runnable
{
    final /* synthetic */ a rN;
    final /* synthetic */ as rO;
    final /* synthetic */ at rP;
    
    aa(final at rp, final a rn, final as ro) {
        this.rP = rp;
        this.rN = rn;
        this.rO = ro;
    }
    
    public void run() {
        this.rN.gj(this.rO);
    }
}

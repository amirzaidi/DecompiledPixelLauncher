// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.d;

class ag implements Runnable
{
    final /* synthetic */ d rH;
    final /* synthetic */ ay rI;
    final /* synthetic */ az rJ;
    
    ag(final az rj, final d rh, final ay ri) {
        this.rJ = rj;
        this.rH = rh;
        this.rI = ri;
    }
    
    public void run() {
        this.rH.dy(this.rI);
    }
}

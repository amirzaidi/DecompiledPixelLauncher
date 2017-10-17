// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.os;

import android.os.Bundle;

class b implements Runnable
{
    final int adr;
    final /* synthetic */ ResultReceiver ads;
    final Bundle adt;
    
    b(final ResultReceiver ads, final int adr, final Bundle adt) {
        this.ads = ads;
        this.adr = adr;
        this.adt = adt;
    }
    
    public void run() {
        this.ads.onReceiveResult(this.adr, this.adt);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.os;

import android.os.Bundle;

class e extends IResultReceiver$Stub
{
    final /* synthetic */ ResultReceiver aeU;
    
    e(final ResultReceiver aeU) {
        this.aeU = aeU;
    }
    
    public void send(final int n, final Bundle bundle) {
        if (this.aeU.mHandler == null) {
            this.aeU.onReceiveResult(n, bundle);
        }
        else {
            this.aeU.mHandler.post((Runnable)new a(this.aeU, n, bundle));
        }
    }
}

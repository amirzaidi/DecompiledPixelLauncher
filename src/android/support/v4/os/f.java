// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.os;

import android.os.Bundle;

class f extends IResultReceiver$Stub
{
    final /* synthetic */ ResultReceiver adv;
    
    f(final ResultReceiver adv) {
        this.adv = adv;
    }
    
    public void send(final int n, final Bundle bundle) {
        if (this.adv.mHandler == null) {
            this.adv.onReceiveResult(n, bundle);
        }
        else {
            this.adv.mHandler.post((Runnable)new b(this.adv, n, bundle));
        }
    }
}

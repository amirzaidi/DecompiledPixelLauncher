// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.os;

import android.os.Bundle;

class a implements Runnable
{
    final int aeR;
    final /* synthetic */ ResultReceiver aeS;
    final Bundle aeT;
    
    a(final ResultReceiver aeS, final int aeR, final Bundle aeT) {
        this.aeS = aeS;
        this.aeR = aeR;
        this.aeT = aeT;
    }
    
    public void run() {
        this.aeS.onReceiveResult(this.aeR, this.aeT);
    }
}

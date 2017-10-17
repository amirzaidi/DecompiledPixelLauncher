// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.graphics.Paint;

class ag implements Runnable
{
    final /* synthetic */ D aar;
    
    ag(final D aar) {
        this.aar = aar;
    }
    
    public void run() {
        this.aar.mView.setLayerType(0, (Paint)null);
    }
}

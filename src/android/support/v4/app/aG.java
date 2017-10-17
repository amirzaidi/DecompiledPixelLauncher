// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.graphics.Paint;

class ag implements Runnable
{
    final /* synthetic */ E abW;
    
    ag(final E abW) {
        this.abW = abW;
    }
    
    public void run() {
        this.abW.mView.setLayerType(0, (Paint)null);
    }
}

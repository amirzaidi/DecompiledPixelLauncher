// 
// Decompiled by Procyon v0.5.30
// 

package android.support.a;

import android.os.SystemClock;
import android.support.v4.a.b;
import java.util.ArrayList;
import android.view.Choreographer$FrameCallback;

class n implements Choreographer$FrameCallback
{
    final /* synthetic */ k ahv;
    
    n(final k ahv) {
        this.ahv = ahv;
    }
    
    public void doFrame(final long n) {
        this.ahv.ahs = System.currentTimeMillis();
        this.ahv.auJ(this.ahv.ahs);
        if (this.ahv.aho.size() > 0) {
            this.ahv.auH().auL((Choreographer$FrameCallback)this);
        }
    }
}

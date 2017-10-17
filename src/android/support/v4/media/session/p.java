// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import java.util.Iterator;
import android.os.RemoteException;
import android.util.Log;
import java.util.HashMap;
import java.util.List;

class p
{
    private final List aft;
    private IMediaSession afu;
    private HashMap afv;
    
    private void asV() {
        if (this.afu == null) {
            return;
        }
        synchronized (this.aft) {
            for (final c c : this.aft) {
                final w w = new w(c);
                this.afv.put(c, w);
                c.afb = true;
                try {
                    this.afu.registerCallbackListener(w);
                }
                catch (RemoteException ex) {
                    Log.e("MediaControllerCompat", "Dead object in registerCallback.", (Throwable)ex);
                }
            }
            this.aft.clear();
        }
    }
}

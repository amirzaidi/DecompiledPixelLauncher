// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media;

import android.util.Log;
import android.os.Bundle;
import android.support.v4.os.ResultReceiver;

class MediaBrowserCompat$CustomActionResultReceiver extends ResultReceiver
{
    private final String afM;
    private final f afN;
    private final Bundle afO;
    
    protected void onReceiveResult(final int n, final Bundle bundle) {
        if (this.afN != null) {
            switch (n) {
                default: {
                    Log.w("MediaBrowserCompat", "Unknown result code: " + n + " (extras=" + this.afO + ", resultData=" + bundle + ")");
                    break;
                }
                case 1: {
                    this.afN.ate(this.afM, this.afO, bundle);
                    break;
                }
                case 0: {
                    this.afN.atf(this.afM, this.afO, bundle);
                    break;
                }
                case -1: {
                    this.afN.atd(this.afM, this.afO, bundle);
                    break;
                }
            }
        }
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media;

import android.util.Log;
import android.os.Bundle;
import android.support.v4.os.ResultReceiver;

class MediaBrowserCompat$CustomActionResultReceiver extends ResultReceiver
{
    private final String aeK;
    private final f aeL;
    private final Bundle aeM;
    
    protected void onReceiveResult(final int n, final Bundle bundle) {
        if (this.aeL != null) {
            switch (n) {
                default: {
                    Log.w("MediaBrowserCompat", "Unknown result code: " + n + " (extras=" + this.aeM + ", resultData=" + bundle + ")");
                    break;
                }
                case 1: {
                    this.aeL.ash(this.aeK, this.aeM, bundle);
                    break;
                }
                case 0: {
                    this.aeL.asi(this.aeK, this.aeM, bundle);
                    break;
                }
                case -1: {
                    this.aeL.asg(this.aeK, this.aeM, bundle);
                    break;
                }
            }
        }
    }
}

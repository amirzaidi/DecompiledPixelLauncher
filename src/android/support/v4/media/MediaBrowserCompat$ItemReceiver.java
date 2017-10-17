// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media;

import android.os.Parcelable;
import android.os.Bundle;
import android.support.v4.os.ResultReceiver;

class MediaBrowserCompat$ItemReceiver extends ResultReceiver
{
    private final String agq;
    private final h agr;
    
    protected void onReceiveResult(final int n, final Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(e.class.getClassLoader());
        }
        if (n == 0 && bundle != null && bundle.containsKey("media_item")) {
            final Parcelable parcelable = bundle.getParcelable("media_item");
            if (parcelable != null && !(parcelable instanceof MediaBrowserCompat$MediaItem)) {
                this.agr.onError(this.agq);
            }
            else {
                this.agr.atp((MediaBrowserCompat$MediaItem)parcelable);
            }
            return;
        }
        this.agr.onError(this.agq);
    }
}

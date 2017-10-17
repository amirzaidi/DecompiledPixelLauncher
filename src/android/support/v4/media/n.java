// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media;

import android.os.Parcel;

class n implements r
{
    final /* synthetic */ h agn;
    
    n(final h agn) {
        this.agn = agn;
    }
    
    public void atK(final Parcel parcel) {
        if (parcel != null) {
            parcel.setDataPosition(0);
            final MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem = (MediaBrowserCompat$MediaItem)MediaBrowserCompat$MediaItem.CREATOR.createFromParcel(parcel);
            parcel.recycle();
            this.agn.atp(mediaBrowserCompat$MediaItem);
        }
        else {
            this.agn.atp(null);
        }
    }
    
    public void onError(final String s) {
        this.agn.onError(s);
    }
}

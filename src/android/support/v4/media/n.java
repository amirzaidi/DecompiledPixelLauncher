// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media;

import android.os.Parcel;

class n implements r
{
    final /* synthetic */ h afl;
    
    n(final h afl) {
        this.afl = afl;
    }
    
    public void asN(final Parcel parcel) {
        if (parcel != null) {
            parcel.setDataPosition(0);
            final MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem = (MediaBrowserCompat$MediaItem)MediaBrowserCompat$MediaItem.CREATOR.createFromParcel(parcel);
            parcel.recycle();
            this.afl.ass(mediaBrowserCompat$MediaItem);
        }
        else {
            this.afl.ass(null);
        }
    }
    
    public void onError(final String s) {
        this.afl.onError(s);
    }
}

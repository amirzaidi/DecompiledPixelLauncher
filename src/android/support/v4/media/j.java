// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media;

import android.os.Parcel;
import android.media.browse.MediaBrowser$MediaItem;
import android.media.browse.MediaBrowser$ItemCallback;

class j extends MediaBrowser$ItemCallback
{
    protected final r afQ;
    
    public j(final r afQ) {
        this.afQ = afQ;
    }
    
    public void onError(final String s) {
        this.afQ.onError(s);
    }
    
    public void onItemLoaded(final MediaBrowser$MediaItem mediaBrowser$MediaItem) {
        if (mediaBrowser$MediaItem != null) {
            final Parcel obtain = Parcel.obtain();
            mediaBrowser$MediaItem.writeToParcel(obtain, 0);
            this.afQ.atK(obtain);
        }
        else {
            this.afQ.atK(null);
        }
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media;

import android.os.Build$VERSION;

public abstract class h
{
    final Object afP;
    
    public h() {
        if (Build$VERSION.SDK_INT < 23) {
            this.afP = null;
        }
        else {
            this.afP = a.asZ(new n(this));
        }
    }
    
    public void atp(final MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem) {
    }
    
    public void onError(final String s) {
    }
}

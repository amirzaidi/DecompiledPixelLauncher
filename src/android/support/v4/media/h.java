// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media;

import android.os.Build$VERSION;

public abstract class h
{
    final Object aeN;
    
    public h() {
        if (Build$VERSION.SDK_INT < 23) {
            this.aeN = null;
        }
        else {
            this.aeN = a.asc(new n(this));
        }
    }
    
    public void ass(final MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem) {
    }
    
    public void onError(final String s) {
    }
}

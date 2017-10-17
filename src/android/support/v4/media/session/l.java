// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import android.os.Build$VERSION;
import java.util.List;
import android.os.Bundle;
import android.support.v4.media.MediaMetadataCompat;

class l implements q
{
    final /* synthetic */ c adO;
    
    l(final c adO) {
        this.adO = adO;
    }
    
    public void arB(final int n, final int n2, final int n3, final int n4, final int n5) {
        this.adO.aru(new r(n, n2, n3, n4, n5));
    }
    
    public void arC(final Object o) {
        if (!this.adO.adJ) {
            this.adO.onPlaybackStateChanged(PlaybackStateCompat.arW(o));
        }
    }
    
    public void arD(final Object o) {
        this.adO.onMetadataChanged(MediaMetadataCompat.asD(o));
    }
    
    public void onExtrasChanged(final Bundle bundle) {
        this.adO.onExtrasChanged(bundle);
    }
    
    public void onQueueChanged(final List list) {
        this.adO.onQueueChanged(MediaSessionCompat$QueueItem.arF(list));
    }
    
    public void onQueueTitleChanged(final CharSequence charSequence) {
        this.adO.onQueueTitleChanged(charSequence);
    }
    
    public void onSessionDestroyed() {
        this.adO.onSessionDestroyed();
    }
    
    public void onSessionEvent(final String s, final Bundle bundle) {
        if (this.adO.adJ || Build$VERSION.SDK_INT >= 23) {
            this.adO.onSessionEvent(s, bundle);
        }
    }
}

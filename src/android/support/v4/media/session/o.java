// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import android.os.Build$VERSION;
import java.util.List;
import android.os.Bundle;
import android.support.v4.media.MediaMetadataCompat;
import java.lang.ref.WeakReference;

class o implements u
{
    private final WeakReference afs;
    
    o(final c c) {
        this.afs = new WeakReference((T)c);
    }
    
    public void asR(final int n, final int n2, final int n3, final int n4, final int n5) {
        final c c = (c)this.afs.get();
        if (c != null) {
            c.asy(new v(n, n2, n3, n4, n5));
        }
    }
    
    public void asS(final Object o) {
        final c c = (c)this.afs.get();
        if (c != null && !c.afb) {
            c.onPlaybackStateChanged(PlaybackStateCompat.asM(o));
        }
    }
    
    public void asT(final Object o) {
        final c c = (c)this.afs.get();
        if (c != null) {
            c.onMetadataChanged(MediaMetadataCompat.atA(o));
        }
    }
    
    public void onExtrasChanged(final Bundle bundle) {
        final c c = (c)this.afs.get();
        if (c != null) {
            c.onExtrasChanged(bundle);
        }
    }
    
    public void onQueueChanged(final List list) {
        final c c = (c)this.afs.get();
        if (c != null) {
            c.onQueueChanged(MediaSessionCompat$QueueItem.ass(list));
        }
    }
    
    public void onQueueTitleChanged(final CharSequence charSequence) {
        final c c = (c)this.afs.get();
        if (c != null) {
            c.onQueueTitleChanged(charSequence);
        }
    }
    
    public void onSessionDestroyed() {
        final c c = (c)this.afs.get();
        if (c != null) {
            c.onSessionDestroyed();
        }
    }
    
    public void onSessionEvent(final String s, final Bundle bundle) {
        final c c = (c)this.afs.get();
        if (c != null && (c.afb || Build$VERSION.SDK_INT >= 23)) {
            c.onSessionEvent(s, bundle);
        }
    }
}

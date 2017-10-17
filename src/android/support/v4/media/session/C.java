// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import java.util.List;
import android.support.v4.media.MediaMetadataCompat;
import android.os.Bundle;
import android.os.Build$VERSION;
import android.os.IBinder$DeathRecipient;

public abstract class c implements IBinder$DeathRecipient
{
    f adG;
    boolean adH;
    private final Object adI;
    boolean adJ;
    
    public c() {
        this.adH = false;
        if (Build$VERSION.SDK_INT < 21) {
            this.adI = new a(this);
        }
        else {
            this.adI = B.asa(new l(this));
        }
    }
    
    public void aru(final r r) {
    }
    
    public void arv(final boolean b) {
    }
    
    public void binderDied() {
        this.onSessionDestroyed();
    }
    
    public void onCaptioningEnabledChanged(final boolean b) {
    }
    
    public void onExtrasChanged(final Bundle bundle) {
    }
    
    public void onMetadataChanged(final MediaMetadataCompat mediaMetadataCompat) {
    }
    
    public void onPlaybackStateChanged(final PlaybackStateCompat playbackStateCompat) {
    }
    
    public void onQueueChanged(final List list) {
    }
    
    public void onQueueTitleChanged(final CharSequence charSequence) {
    }
    
    public void onRepeatModeChanged(final int n) {
    }
    
    public void onSessionDestroyed() {
    }
    
    public void onSessionEvent(final String s, final Bundle bundle) {
    }
    
    public void onShuffleModeChanged(final int n) {
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import java.util.List;
import android.support.v4.media.MediaMetadataCompat;
import android.os.Message;
import android.os.Bundle;
import android.os.Build$VERSION;
import android.os.IBinder$DeathRecipient;

public abstract class c implements IBinder$DeathRecipient
{
    h aeZ;
    private final Object afa;
    boolean afb;
    
    public c() {
        if (Build$VERSION.SDK_INT < 21) {
            this.afa = new b(this);
        }
        else {
            this.afa = r.asX(new o(this));
        }
    }
    
    void asA(final int n, final Object o, final Bundle data) {
        if (this.aeZ != null) {
            final Message obtainMessage = this.aeZ.obtainMessage(n, o);
            obtainMessage.setData(data);
            obtainMessage.sendToTarget();
        }
    }
    
    public void asy(final v v) {
    }
    
    public void asz(final boolean b) {
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

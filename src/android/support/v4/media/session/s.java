// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import java.util.List;
import android.support.v4.media.MediaMetadataCompat;
import android.os.Bundle;

class s extends IMediaControllerCallback$Stub
{
    private c adY;
    
    s(final c adY) {
        this.adY = adY;
    }
    
    public void onCaptioningEnabledChanged(final boolean b) {
        this.adY.adG.post((Runnable)new b(this, b));
    }
    
    public void onEvent(final String s, final Bundle bundle) {
        this.adY.adG.post((Runnable)new v(this, s, bundle));
    }
    
    public void onExtrasChanged(final Bundle bundle) {
        throw new AssertionError();
    }
    
    public void onMetadataChanged(final MediaMetadataCompat mediaMetadataCompat) {
        throw new AssertionError();
    }
    
    public void onPlaybackStateChanged(final PlaybackStateCompat playbackStateCompat) {
        this.adY.adG.post((Runnable)new C(this, playbackStateCompat));
    }
    
    public void onQueueChanged(final List list) {
        throw new AssertionError();
    }
    
    public void onQueueTitleChanged(final CharSequence charSequence) {
        throw new AssertionError();
    }
    
    public void onRepeatModeChanged(final int n) {
        this.adY.adG.post((Runnable)new x(this, n));
    }
    
    public void onSessionDestroyed() {
        throw new AssertionError();
    }
    
    public void onShuffleModeChanged(final int n) {
        this.adY.adG.post((Runnable)new m(this, n));
    }
    
    public void onShuffleModeChangedDeprecated(final boolean b) {
        this.adY.adG.post((Runnable)new g(this, b));
    }
    
    public void onVolumeInfoChanged(final ParcelableVolumeInfo parcelableVolumeInfo) {
        throw new AssertionError();
    }
}

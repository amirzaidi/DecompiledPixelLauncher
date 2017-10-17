// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import java.util.List;
import android.media.session.PlaybackState;
import android.media.MediaMetadata;
import android.os.Bundle;
import android.media.session.MediaController$PlaybackInfo;
import android.media.session.MediaController$Callback;

class t extends MediaController$Callback
{
    protected final u afC;
    
    public t(final u afC) {
        this.afC = afC;
    }
    
    public void onAudioInfoChanged(final MediaController$PlaybackInfo mediaController$PlaybackInfo) {
        this.afC.asR(mediaController$PlaybackInfo.getPlaybackType(), l.asO(mediaController$PlaybackInfo), mediaController$PlaybackInfo.getVolumeControl(), mediaController$PlaybackInfo.getMaxVolume(), mediaController$PlaybackInfo.getCurrentVolume());
    }
    
    public void onExtrasChanged(final Bundle bundle) {
        this.afC.onExtrasChanged(bundle);
    }
    
    public void onMetadataChanged(final MediaMetadata mediaMetadata) {
        this.afC.asT(mediaMetadata);
    }
    
    public void onPlaybackStateChanged(final PlaybackState playbackState) {
        this.afC.asS(playbackState);
    }
    
    public void onQueueChanged(final List list) {
        this.afC.onQueueChanged(list);
    }
    
    public void onQueueTitleChanged(final CharSequence charSequence) {
        this.afC.onQueueTitleChanged(charSequence);
    }
    
    public void onSessionDestroyed() {
        this.afC.onSessionDestroyed();
    }
    
    public void onSessionEvent(final String s, final Bundle bundle) {
        this.afC.onSessionEvent(s, bundle);
    }
}

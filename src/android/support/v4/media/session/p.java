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

class p extends MediaController$Callback
{
    protected final q adS;
    
    public p(final q adS) {
        this.adS = adS;
    }
    
    public void onAudioInfoChanged(final MediaController$PlaybackInfo mediaController$PlaybackInfo) {
        this.adS.arB(mediaController$PlaybackInfo.getPlaybackType(), j.ary(mediaController$PlaybackInfo), mediaController$PlaybackInfo.getVolumeControl(), mediaController$PlaybackInfo.getMaxVolume(), mediaController$PlaybackInfo.getCurrentVolume());
    }
    
    public void onExtrasChanged(final Bundle bundle) {
        this.adS.onExtrasChanged(bundle);
    }
    
    public void onMetadataChanged(final MediaMetadata mediaMetadata) {
        this.adS.arD(mediaMetadata);
    }
    
    public void onPlaybackStateChanged(final PlaybackState playbackState) {
        this.adS.arC(playbackState);
    }
    
    public void onQueueChanged(final List list) {
        this.adS.onQueueChanged(list);
    }
    
    public void onQueueTitleChanged(final CharSequence charSequence) {
        this.adS.onQueueTitleChanged(charSequence);
    }
    
    public void onSessionDestroyed() {
        this.adS.onSessionDestroyed();
    }
    
    public void onSessionEvent(final String s, final Bundle bundle) {
        this.adS.onSessionEvent(s, bundle);
    }
}

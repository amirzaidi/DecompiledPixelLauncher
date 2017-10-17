// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import java.util.List;
import android.support.v4.media.MediaMetadataCompat;
import android.os.Bundle;

class a extends IMediaControllerCallback$Stub
{
    final /* synthetic */ c adD;
    
    a(final c adD) {
        this.adD = adD;
    }
    
    public void onCaptioningEnabledChanged(final boolean b) {
        this.adD.adG.arw(11, b, null);
    }
    
    public void onEvent(final String s, final Bundle bundle) {
        this.adD.adG.arw(1, s, bundle);
    }
    
    public void onExtrasChanged(final Bundle bundle) {
        this.adD.adG.arw(7, bundle, null);
    }
    
    public void onMetadataChanged(final MediaMetadataCompat mediaMetadataCompat) {
        this.adD.adG.arw(3, mediaMetadataCompat, null);
    }
    
    public void onPlaybackStateChanged(final PlaybackStateCompat playbackStateCompat) {
        this.adD.adG.arw(2, playbackStateCompat, null);
    }
    
    public void onQueueChanged(final List list) {
        this.adD.adG.arw(5, list, null);
    }
    
    public void onQueueTitleChanged(final CharSequence charSequence) {
        this.adD.adG.arw(6, charSequence, null);
    }
    
    public void onRepeatModeChanged(final int n) {
        this.adD.adG.arw(9, n, null);
    }
    
    public void onSessionDestroyed() {
        this.adD.adG.arw(8, null, null);
    }
    
    public void onShuffleModeChanged(final int n) {
        this.adD.adG.arw(12, n, null);
    }
    
    public void onShuffleModeChangedDeprecated(final boolean b) {
        this.adD.adG.arw(10, b, null);
    }
    
    public void onVolumeInfoChanged(final ParcelableVolumeInfo parcelableVolumeInfo) {
        Object o;
        if (parcelableVolumeInfo == null) {
            o = null;
        }
        else {
            o = new r(parcelableVolumeInfo.aeG, parcelableVolumeInfo.aeI, parcelableVolumeInfo.controlType, parcelableVolumeInfo.aeJ, parcelableVolumeInfo.aeH);
        }
        this.adD.adG.arw(4, o, null);
    }
}

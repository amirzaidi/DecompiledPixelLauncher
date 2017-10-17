// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import java.util.List;
import android.support.v4.media.MediaMetadataCompat;
import android.os.Bundle;
import java.lang.ref.WeakReference;

class b extends IMediaControllerCallback$Stub
{
    private final WeakReference aeY;
    
    b(final c c) {
        this.aeY = new WeakReference((T)c);
    }
    
    public void onCaptioningEnabledChanged(final boolean b) {
        final c c = (c)this.aeY.get();
        if (c != null) {
            c.asA(11, b, null);
        }
    }
    
    public void onEvent(final String s, final Bundle bundle) {
        final c c = (c)this.aeY.get();
        if (c != null) {
            c.asA(1, s, bundle);
        }
    }
    
    public void onExtrasChanged(final Bundle bundle) {
        final c c = (c)this.aeY.get();
        if (c != null) {
            c.asA(7, bundle, null);
        }
    }
    
    public void onMetadataChanged(final MediaMetadataCompat mediaMetadataCompat) {
        final c c = (c)this.aeY.get();
        if (c != null) {
            c.asA(3, mediaMetadataCompat, null);
        }
    }
    
    public void onPlaybackStateChanged(final PlaybackStateCompat playbackStateCompat) {
        final c c = (c)this.aeY.get();
        if (c != null) {
            c.asA(2, playbackStateCompat, null);
        }
    }
    
    public void onQueueChanged(final List list) {
        final c c = (c)this.aeY.get();
        if (c != null) {
            c.asA(5, list, null);
        }
    }
    
    public void onQueueTitleChanged(final CharSequence charSequence) {
        final c c = (c)this.aeY.get();
        if (c != null) {
            c.asA(6, charSequence, null);
        }
    }
    
    public void onRepeatModeChanged(final int n) {
        final c c = (c)this.aeY.get();
        if (c != null) {
            c.asA(9, n, null);
        }
    }
    
    public void onSessionDestroyed() {
        final c c = (c)this.aeY.get();
        if (c != null) {
            c.asA(8, null, null);
        }
    }
    
    public void onShuffleModeChanged(final int n) {
        final c c = (c)this.aeY.get();
        if (c != null) {
            c.asA(12, n, null);
        }
    }
    
    public void onShuffleModeChangedDeprecated(final boolean b) {
        final c c = (c)this.aeY.get();
        if (c != null) {
            c.asA(10, b, null);
        }
    }
    
    public void onVolumeInfoChanged(final ParcelableVolumeInfo parcelableVolumeInfo) {
        final c c = (c)this.aeY.get();
        if (c != null) {
            Object o;
            if (parcelableVolumeInfo == null) {
                o = null;
            }
            else {
                o = new v(parcelableVolumeInfo.afI, parcelableVolumeInfo.afK, parcelableVolumeInfo.controlType, parcelableVolumeInfo.afL, parcelableVolumeInfo.afJ);
            }
            c.asA(4, o, null);
        }
    }
}

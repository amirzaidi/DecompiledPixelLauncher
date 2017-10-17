// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import java.util.List;
import android.support.v4.media.MediaMetadataCompat;
import android.os.Bundle;

class w extends b
{
    w(final c c) {
        super(c);
    }
    
    public void onExtrasChanged(final Bundle bundle) {
        throw new AssertionError();
    }
    
    public void onMetadataChanged(final MediaMetadataCompat mediaMetadataCompat) {
        throw new AssertionError();
    }
    
    public void onQueueChanged(final List list) {
        throw new AssertionError();
    }
    
    public void onQueueTitleChanged(final CharSequence charSequence) {
        throw new AssertionError();
    }
    
    public void onSessionDestroyed() {
        throw new AssertionError();
    }
    
    public void onVolumeInfoChanged(final ParcelableVolumeInfo parcelableVolumeInfo) {
        throw new AssertionError();
    }
}

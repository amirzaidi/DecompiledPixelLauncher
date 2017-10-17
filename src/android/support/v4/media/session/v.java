// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import java.util.List;
import android.support.v4.media.MediaMetadataCompat;
import android.os.Bundle;

class v implements Runnable
{
    final /* synthetic */ String aec;
    final /* synthetic */ Bundle aed;
    final /* synthetic */ s aee;
    
    v(final s aee, final String aec, final Bundle aed) {
        this.aee = aee;
        this.aec = aec;
        this.aed = aed;
    }
    
    public void run() {
        this.aee.adY.onSessionEvent(this.aec, this.aed);
    }
}

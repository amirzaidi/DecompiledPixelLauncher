// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import java.util.List;
import android.support.v4.media.MediaMetadataCompat;
import android.os.Bundle;

class b implements Runnable
{
    final /* synthetic */ boolean adE;
    final /* synthetic */ s adF;
    
    b(final s adF, final boolean adE) {
        this.adF = adF;
        this.adE = adE;
    }
    
    public void run() {
        this.adF.adY.onCaptioningEnabledChanged(this.adE);
    }
}

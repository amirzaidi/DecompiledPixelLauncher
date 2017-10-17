// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import java.util.List;
import android.support.v4.media.MediaMetadataCompat;
import android.os.Bundle;

class m implements Runnable
{
    final /* synthetic */ int adP;
    final /* synthetic */ s adQ;
    
    m(final s adQ, final int adP) {
        this.adQ = adQ;
        this.adP = adP;
    }
    
    public void run() {
        this.adQ.adY.onShuffleModeChanged(this.adP);
    }
}

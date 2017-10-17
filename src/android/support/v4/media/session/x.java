// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import java.util.List;
import android.support.v4.media.MediaMetadataCompat;
import android.os.Bundle;

class x implements Runnable
{
    final /* synthetic */ int aef;
    final /* synthetic */ s aeg;
    
    x(final s aeg, final int aef) {
        this.aeg = aeg;
        this.aef = aef;
    }
    
    public void run() {
        this.aeg.adY.onRepeatModeChanged(this.aef);
    }
}

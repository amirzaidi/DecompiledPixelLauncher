// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.view.View;
import java.util.ArrayList;
import java.util.Map;

class av implements Runnable
{
    final /* synthetic */ Map acp;
    final /* synthetic */ ArrayList acq;
    
    av(final ArrayList acq, final Map acp) {
        this.acq = acq;
        this.acp = acp;
    }
    
    public void run() {
        for (int size = this.acq.size(), i = 0; i < size; ++i) {
            final View view = this.acq.get(i);
            view.setTransitionName((String)this.acp.get(view.getTransitionName()));
        }
    }
}

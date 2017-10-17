// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.view.View;
import java.util.ArrayList;
import java.util.Map;

class av implements Runnable
{
    final /* synthetic */ Map aaP;
    final /* synthetic */ ArrayList aaQ;
    
    av(final ArrayList aaQ, final Map aaP) {
        this.aaQ = aaQ;
        this.aaP = aaP;
    }
    
    public void run() {
        for (int size = this.aaQ.size(), i = 0; i < size; ++i) {
            final View view = this.aaQ.get(i);
            view.setTransitionName((String)this.aaP.get(view.getTransitionName()));
        }
    }
}

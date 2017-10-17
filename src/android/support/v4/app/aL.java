// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.transition.Transition;
import android.graphics.Rect;
import android.transition.Transition$EpicenterCallback;

class al extends Transition$EpicenterCallback
{
    final /* synthetic */ Rect acg;
    
    al(final Rect acg) {
        this.acg = acg;
    }
    
    public Rect onGetEpicenter(final Transition transition) {
        return this.acg;
    }
}

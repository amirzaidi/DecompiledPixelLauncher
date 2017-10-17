// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.transition.Transition;
import android.graphics.Rect;
import android.transition.Transition$EpicenterCallback;

class x extends Transition$EpicenterCallback
{
    final /* synthetic */ Rect XT;
    
    x(final Rect xt) {
        this.XT = xt;
    }
    
    public Rect onGetEpicenter(final Transition transition) {
        if (this.XT != null && !this.XT.isEmpty()) {
            return this.XT;
        }
        return null;
    }
}

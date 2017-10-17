// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.transition.Transition;
import android.graphics.Rect;
import android.transition.Transition$EpicenterCallback;

class y extends Transition$EpicenterCallback
{
    final /* synthetic */ Rect ZA;
    
    y(final Rect za) {
        this.ZA = za;
    }
    
    public Rect onGetEpicenter(final Transition transition) {
        if (this.ZA != null && !this.ZA.isEmpty()) {
            return this.ZA;
        }
        return null;
    }
}

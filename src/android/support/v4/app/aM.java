// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.transition.Transition;
import android.graphics.Rect;
import android.transition.Transition$EpicenterCallback;

class am extends Transition$EpicenterCallback
{
    final /* synthetic */ Rect aaH;
    
    am(final Rect aaH) {
        this.aaH = aaH;
    }
    
    public Rect onGetEpicenter(final Transition transition) {
        return this.aaH;
    }
}

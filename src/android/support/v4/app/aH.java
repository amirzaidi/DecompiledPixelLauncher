// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.transition.Transition;
import java.util.ArrayList;
import android.view.View;
import android.transition.Transition$TransitionListener;

class ah implements Transition$TransitionListener
{
    final /* synthetic */ View aas;
    final /* synthetic */ ArrayList aat;
    
    ah(final View aas, final ArrayList aat) {
        this.aas = aas;
        this.aat = aat;
    }
    
    public void onTransitionCancel(final Transition transition) {
    }
    
    public void onTransitionEnd(final Transition transition) {
        transition.removeListener((Transition$TransitionListener)this);
        this.aas.setVisibility(8);
        for (int size = this.aat.size(), i = 0; i < size; ++i) {
            ((View)this.aat.get(i)).setVisibility(0);
        }
    }
    
    public void onTransitionPause(final Transition transition) {
    }
    
    public void onTransitionResume(final Transition transition) {
    }
    
    public void onTransitionStart(final Transition transition) {
    }
}

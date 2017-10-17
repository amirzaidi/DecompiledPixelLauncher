// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.transition.Transition;
import java.util.ArrayList;
import android.transition.Transition$TransitionListener;

class g implements Transition$TransitionListener
{
    final /* synthetic */ ArrayList Xa;
    final /* synthetic */ Object Xb;
    final /* synthetic */ Object Xc;
    final /* synthetic */ Object Xd;
    final /* synthetic */ ArrayList Xe;
    final /* synthetic */ ArrayList Xf;
    
    g(final Object xc, final ArrayList xa, final Object xb, final ArrayList xe, final Object xd, final ArrayList xf) {
        this.Xc = xc;
        this.Xa = xa;
        this.Xb = xb;
        this.Xe = xe;
        this.Xd = xd;
        this.Xf = xf;
    }
    
    public void onTransitionCancel(final Transition transition) {
    }
    
    public void onTransitionEnd(final Transition transition) {
    }
    
    public void onTransitionPause(final Transition transition) {
    }
    
    public void onTransitionResume(final Transition transition) {
    }
    
    public void onTransitionStart(final Transition transition) {
        if (this.Xc != null) {
            Q.alE(this.Xc, this.Xa, null);
        }
        if (this.Xb != null) {
            Q.alE(this.Xb, this.Xe, null);
        }
        if (this.Xd != null) {
            Q.alE(this.Xd, this.Xf, null);
        }
    }
}

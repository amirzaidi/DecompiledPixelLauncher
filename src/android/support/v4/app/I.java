// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.transition.Transition;
import java.util.ArrayList;
import android.transition.Transition$TransitionListener;

class i implements Transition$TransitionListener
{
    final /* synthetic */ ArrayList YK;
    final /* synthetic */ Object YL;
    final /* synthetic */ Object YM;
    final /* synthetic */ Object YN;
    final /* synthetic */ ArrayList YO;
    final /* synthetic */ ArrayList YP;
    
    i(final Object ym, final ArrayList yk, final Object yl, final ArrayList yo, final Object yn, final ArrayList yp) {
        this.YM = ym;
        this.YK = yk;
        this.YL = yl;
        this.YO = yo;
        this.YN = yn;
        this.YP = yp;
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
        if (this.YM != null) {
            R.amT(this.YM, this.YK, null);
        }
        if (this.YL != null) {
            R.amT(this.YL, this.YO, null);
        }
        if (this.YN != null) {
            R.amT(this.YN, this.YP, null);
        }
    }
}

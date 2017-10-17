// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.animation.Animator;
import android.view.ViewGroup;
import android.view.View;
import android.animation.AnimatorListenerAdapter;

class d extends AnimatorListenerAdapter
{
    final /* synthetic */ aR XL;
    final /* synthetic */ View XM;
    final /* synthetic */ g XN;
    final /* synthetic */ ViewGroup XO;
    
    d(final aR xl, final ViewGroup xo, final View xm, final g xn) {
        this.XL = xl;
        this.XO = xo;
        this.XM = xm;
        this.XN = xn;
    }
    
    public void onAnimationEnd(final Animator animator) {
        if (this.XO != null) {
            this.XO.endViewTransition(this.XM);
        }
        if (this.XN.getAnimator() != null) {
            this.XN.akr(null);
            this.XL.apw(this.XN, this.XN.akU(), 0, 0, false);
        }
    }
}

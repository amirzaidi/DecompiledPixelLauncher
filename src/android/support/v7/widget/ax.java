// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.animation.Animator$AnimatorListener;
import android.animation.Animator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.animation.AnimatorListenerAdapter;

class ax extends AnimatorListenerAdapter
{
    final /* synthetic */ ai Ue;
    final /* synthetic */ Z Uf;
    final /* synthetic */ ViewPropertyAnimator Ug;
    final /* synthetic */ View Uh;
    
    ax(final Z uf, final ai ue, final ViewPropertyAnimator ug, final View uh) {
        this.Uf = uf;
        this.Ue = ue;
        this.Ug = ug;
        this.Uh = uh;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.Ug.setListener((Animator$AnimatorListener)null);
        this.Uh.setAlpha(1.0f);
        this.Uh.setTranslationX(0.0f);
        this.Uh.setTranslationY(0.0f);
        this.Uf.acT(this.Ue.TE, false);
        this.Uf.SM.remove(this.Ue.TE);
        this.Uf.abF();
    }
    
    public void onAnimationStart(final Animator animator) {
        this.Uf.acZ(this.Ue.TE, false);
    }
}

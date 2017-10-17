// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.animation.Animator$AnimatorListener;
import android.animation.Animator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.animation.AnimatorListenerAdapter;

class ag extends AnimatorListenerAdapter
{
    final /* synthetic */ int RM;
    final /* synthetic */ int RN;
    final /* synthetic */ Z RO;
    final /* synthetic */ j RP;
    final /* synthetic */ ViewPropertyAnimator RQ;
    final /* synthetic */ View val$view;
    
    ag(final Z ro, final j rp, final int rn, final View val$view, final int rm, final ViewPropertyAnimator rq) {
        this.RO = ro;
        this.RP = rp;
        this.RN = rn;
        this.val$view = val$view;
        this.RM = rm;
        this.RQ = rq;
    }
    
    public void onAnimationCancel(final Animator animator) {
        if (this.RN != 0) {
            this.val$view.setTranslationX(0.0f);
        }
        if (this.RM != 0) {
            this.val$view.setTranslationY(0.0f);
        }
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.RQ.setListener((Animator$AnimatorListener)null);
        this.RO.ach(this.RP);
        this.RO.Rb.remove(this.RP);
        this.RO.aaD();
    }
    
    public void onAnimationStart(final Animator animator) {
        this.RO.acg(this.RP);
    }
}

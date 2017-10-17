// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.animation.Animator$AnimatorListener;
import android.animation.Animator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.animation.AnimatorListenerAdapter;

class W extends AnimatorListenerAdapter
{
    final /* synthetic */ Z Sl;
    final /* synthetic */ j Sm;
    final /* synthetic */ ViewPropertyAnimator Sn;
    final /* synthetic */ View val$view;
    
    W(final Z sl, final j sm, final ViewPropertyAnimator sn, final View val$view) {
        this.Sl = sl;
        this.Sm = sm;
        this.Sn = sn;
        this.val$view = val$view;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.Sn.setListener((Animator$AnimatorListener)null);
        this.val$view.setAlpha(1.0f);
        this.Sl.adf(this.Sm);
        this.Sl.SG.remove(this.Sm);
        this.Sl.abF();
    }
    
    public void onAnimationStart(final Animator animator) {
        this.Sl.ada(this.Sm);
    }
}

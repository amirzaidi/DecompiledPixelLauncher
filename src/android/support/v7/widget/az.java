// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.animation.Animator$AnimatorListener;
import android.animation.Animator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.animation.AnimatorListenerAdapter;

class az extends AnimatorListenerAdapter
{
    final /* synthetic */ Z SA;
    final /* synthetic */ j SB;
    final /* synthetic */ ViewPropertyAnimator SC;
    final /* synthetic */ View val$view;
    
    az(final Z sa, final j sb, final View val$view, final ViewPropertyAnimator sc) {
        this.SA = sa;
        this.SB = sb;
        this.val$view = val$view;
        this.SC = sc;
    }
    
    public void onAnimationCancel(final Animator animator) {
        this.val$view.setAlpha(1.0f);
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.SC.setListener((Animator$AnimatorListener)null);
        this.SA.abV(this.SB);
        this.SA.QU.remove(this.SB);
        this.SA.aaD();
    }
    
    public void onAnimationStart(final Animator animator) {
        this.SA.abX(this.SB);
    }
}

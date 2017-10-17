// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.animation.Animator$AnimatorListener;
import android.animation.Animator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.animation.AnimatorListenerAdapter;

class an extends AnimatorListenerAdapter
{
    final /* synthetic */ ai Sb;
    final /* synthetic */ ViewPropertyAnimator Sc;
    final /* synthetic */ Z Sd;
    final /* synthetic */ View val$view;
    
    an(final Z sd, final ai sb, final ViewPropertyAnimator sc, final View val$view) {
        this.Sd = sd;
        this.Sb = sb;
        this.Sc = sc;
        this.val$view = val$view;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.Sc.setListener((Animator$AnimatorListener)null);
        this.val$view.setAlpha(1.0f);
        this.val$view.setTranslationX(0.0f);
        this.val$view.setTranslationY(0.0f);
        this.Sd.abS(this.Sb.RW, true);
        this.Sd.Rd.remove(this.Sb.RW);
        this.Sd.aaD();
    }
    
    public void onAnimationStart(final Animator animator) {
        this.Sd.abY(this.Sb.RW, true);
    }
}

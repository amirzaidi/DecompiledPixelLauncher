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
    final /* synthetic */ Z Uj;
    final /* synthetic */ j Uk;
    final /* synthetic */ ViewPropertyAnimator Ul;
    final /* synthetic */ View val$view;
    
    az(final Z uj, final j uk, final View val$view, final ViewPropertyAnimator ul) {
        this.Uj = uj;
        this.Uk = uk;
        this.val$view = val$view;
        this.Ul = ul;
    }
    
    public void onAnimationCancel(final Animator animator) {
        this.val$view.setAlpha(1.0f);
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.Ul.setListener((Animator$AnimatorListener)null);
        this.Uj.acW(this.Uk);
        this.Uj.SD.remove(this.Uk);
        this.Uj.abF();
    }
    
    public void onAnimationStart(final Animator animator) {
        this.Uj.acY(this.Uk);
    }
}

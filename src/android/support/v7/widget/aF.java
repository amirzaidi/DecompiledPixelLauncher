// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.animation.Animator$AnimatorListener;
import android.animation.Animator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.animation.AnimatorListenerAdapter;

class af extends AnimatorListenerAdapter
{
    final /* synthetic */ int Tq;
    final /* synthetic */ int Tr;
    final /* synthetic */ Z Ts;
    final /* synthetic */ j Tt;
    final /* synthetic */ ViewPropertyAnimator Tu;
    final /* synthetic */ View val$view;
    
    af(final Z ts, final j tt, final int tr, final View val$view, final int tq, final ViewPropertyAnimator tu) {
        this.Ts = ts;
        this.Tt = tt;
        this.Tr = tr;
        this.val$view = val$view;
        this.Tq = tq;
        this.Tu = tu;
    }
    
    public void onAnimationCancel(final Animator animator) {
        if (this.Tr != 0) {
            this.val$view.setTranslationX(0.0f);
        }
        if (this.Tq != 0) {
            this.val$view.setTranslationY(0.0f);
        }
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.Tu.setListener((Animator$AnimatorListener)null);
        this.Ts.adi(this.Tt);
        this.Ts.SK.remove(this.Tt);
        this.Ts.abF();
    }
    
    public void onAnimationStart(final Animator animator) {
        this.Ts.adh(this.Tt);
    }
}

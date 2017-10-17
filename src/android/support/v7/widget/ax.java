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
    final /* synthetic */ ai Sv;
    final /* synthetic */ Z Sw;
    final /* synthetic */ ViewPropertyAnimator Sx;
    final /* synthetic */ View Sy;
    
    ax(final Z sw, final ai sv, final ViewPropertyAnimator sx, final View sy) {
        this.Sw = sw;
        this.Sv = sv;
        this.Sx = sx;
        this.Sy = sy;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.Sx.setListener((Animator$AnimatorListener)null);
        this.Sy.setAlpha(1.0f);
        this.Sy.setTranslationX(0.0f);
        this.Sy.setTranslationY(0.0f);
        this.Sw.abS(this.Sv.RV, false);
        this.Sw.Rd.remove(this.Sv.RV);
        this.Sw.aaD();
    }
    
    public void onAnimationStart(final Animator animator) {
        this.Sw.abY(this.Sv.RV, false);
    }
}

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
    final /* synthetic */ ai TK;
    final /* synthetic */ ViewPropertyAnimator TL;
    final /* synthetic */ Z TM;
    final /* synthetic */ View val$view;
    
    an(final Z tm, final ai tk, final ViewPropertyAnimator tl, final View val$view) {
        this.TM = tm;
        this.TK = tk;
        this.TL = tl;
        this.val$view = val$view;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.TL.setListener((Animator$AnimatorListener)null);
        this.val$view.setAlpha(1.0f);
        this.val$view.setTranslationX(0.0f);
        this.val$view.setTranslationY(0.0f);
        this.TM.acT(this.TK.TF, true);
        this.TM.SM.remove(this.TK.TF);
        this.TM.abF();
    }
    
    public void onAnimationStart(final Animator animator) {
        this.TM.acZ(this.TK.TF, true);
    }
}

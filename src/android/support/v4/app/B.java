// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.animation.Animator;
import android.view.ViewGroup;
import android.view.View;
import android.animation.AnimatorListenerAdapter;

class b extends AnimatorListenerAdapter
{
    final /* synthetic */ aV Wb;
    final /* synthetic */ View Wc;
    final /* synthetic */ e Wd;
    final /* synthetic */ ViewGroup We;
    
    b(final aV wb, final ViewGroup we, final View wc, final e wd) {
        this.Wb = wb;
        this.We = we;
        this.Wc = wc;
        this.Wd = wd;
    }
    
    public void onAnimationEnd(final Animator animator) {
        if (this.We != null) {
            this.We.endViewTransition(this.Wc);
        }
        if (this.Wd.getAnimator() != null) {
            this.Wd.aje(null);
            this.Wb.aov(this.Wd, this.Wd.ajH(), 0, 0, false);
        }
    }
}

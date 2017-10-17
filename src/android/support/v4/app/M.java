// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation$AnimationListener;

class m extends aT
{
    final /* synthetic */ aV Xn;
    final /* synthetic */ e Xo;
    
    m(final aV xn, final Animation$AnimationListener animation$AnimationListener, final e xo) {
        this.Xn = xn;
        this.Xo = xo;
        super(animation$AnimationListener, null);
    }
    
    public void onAnimationEnd(final Animation animation) {
        super.onAnimationEnd(animation);
        if (this.Xo.aiq() != null) {
            this.Xo.ajj(null);
            this.Xn.aov(this.Xo, this.Xo.ajH(), 0, 0, false);
        }
    }
}

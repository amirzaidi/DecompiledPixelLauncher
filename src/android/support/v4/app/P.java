// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation$AnimationListener;

class p extends aQ
{
    final /* synthetic */ aR YX;
    final /* synthetic */ g YY;
    
    p(final aR yx, final Animation$AnimationListener animation$AnimationListener, final g yy) {
        this.YX = yx;
        this.YY = yy;
        super(animation$AnimationListener, null);
    }
    
    public void onAnimationEnd(final Animation animation) {
        super.onAnimationEnd(animation);
        if (this.YY.ajD() != null) {
            this.YY.akw(null);
            this.YX.apw(this.YY, this.YY.akU(), 0, 0, false);
        }
    }
}

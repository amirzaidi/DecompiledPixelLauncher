// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.animation.Animator$AnimatorListener;
import android.graphics.Paint;
import android.animation.Animator;
import android.view.View;
import android.animation.AnimatorListenerAdapter;

class aN extends AnimatorListenerAdapter
{
    View mView;
    
    aN(final View mView) {
        this.mView = mView;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.mView.setLayerType(0, (Paint)null);
        animator.removeListener((Animator$AnimatorListener)this);
    }
    
    public void onAnimationStart(final Animator animator) {
        this.mView.setLayerType(2, (Paint)null);
    }
}

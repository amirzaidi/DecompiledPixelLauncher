// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.anim;

import com.android.launcher3.Utilities;
import android.animation.ValueAnimator;
import android.view.View;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class RevealOutlineAnimation$2 implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ RevealOutlineAnimation this$0;
    final /* synthetic */ View val$revealView;
    
    RevealOutlineAnimation$2(final RevealOutlineAnimation this$0, final View val$revealView) {
        this.this$0 = this$0;
        this.val$revealView = val$revealView;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        this.this$0.setProgress((float)valueAnimator.getAnimatedValue());
        this.val$revealView.invalidateOutline();
        if (!Utilities.ATLEAST_LOLLIPOP_MR1) {
            this.val$revealView.invalidate();
        }
    }
}

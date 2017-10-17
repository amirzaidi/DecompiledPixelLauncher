// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class LauncherStateTransitionAnimation$8 implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ LauncherStateTransitionAnimation this$0;
    
    LauncherStateTransitionAnimation$8(final LauncherStateTransitionAnimation this$0) {
        this.this$0 = this$0;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        this.this$0.mLauncher.getDragLayer().invalidateScrim();
    }
}

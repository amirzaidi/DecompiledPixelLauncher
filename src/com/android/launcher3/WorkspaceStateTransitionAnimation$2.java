// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.ValueAnimator;
import com.android.launcher3.dragndrop.DragLayer;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class WorkspaceStateTransitionAnimation$2 implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ WorkspaceStateTransitionAnimation this$0;
    final /* synthetic */ DragLayer val$dragLayer;
    
    WorkspaceStateTransitionAnimation$2(final WorkspaceStateTransitionAnimation this$0, final DragLayer val$dragLayer) {
        this.this$0 = this$0;
        this.val$dragLayer = val$dragLayer;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        this.val$dragLayer.setBackgroundAlpha((float)valueAnimator.getAnimatedValue());
    }
}

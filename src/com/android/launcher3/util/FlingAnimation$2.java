// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.view.animation.AnimationUtils;
import android.view.View;
import com.android.launcher3.dragndrop.DragView;
import android.animation.ValueAnimator;
import android.view.animation.DecelerateInterpolator;
import android.graphics.PointF;
import com.android.launcher3.Launcher;
import android.graphics.Rect;
import com.android.launcher3.ButtonDropTarget;
import com.android.launcher3.DropTarget$DragObject;
import com.android.launcher3.dragndrop.DragLayer;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class FlingAnimation$2 implements Runnable
{
    final /* synthetic */ FlingAnimation this$0;
    
    FlingAnimation$2(final FlingAnimation this$0) {
        this.this$0 = this$0;
    }
    
    public void run() {
        this.this$0.mLauncher.exitSpringLoadedDragMode();
        this.this$0.mDropTarget.completeDrop(this.this$0.mDragObject);
    }
}

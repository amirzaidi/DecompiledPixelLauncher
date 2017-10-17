// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.view.ViewGroup$LayoutParams;
import android.graphics.ColorFilter;
import com.android.launcher3.util.Themes;
import android.graphics.Canvas;
import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.animation.TypeEvaluator;
import android.animation.FloatArrayEvaluator;
import java.util.Arrays;
import android.graphics.ColorMatrix;
import android.view.View$MeasureSpec;
import android.animation.Animator$AnimatorListener;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import com.android.launcher3.LauncherAnimUtils;
import android.content.Context;
import com.android.launcher3.Launcher;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Bitmap;
import android.animation.ValueAnimator;
import android.view.View;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class DragView$2 extends AnimatorListenerAdapter
{
    final /* synthetic */ DragView this$0;
    
    DragView$2(final DragView this$0) {
        this.this$0 = this$0;
    }
    
    public void onAnimationEnd(final Animator animator) {
        if (!this.this$0.mAnimationCancelled) {
            this.this$0.mDragController.onDragViewAnimationEnd();
        }
    }
}

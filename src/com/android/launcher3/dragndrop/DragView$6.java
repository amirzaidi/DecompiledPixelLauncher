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
import com.android.launcher3.LauncherAnimUtils;
import android.content.Context;
import com.android.launcher3.Launcher;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Bitmap;
import android.view.View;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class DragView$6 implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ DragView this$0;
    final /* synthetic */ int val$shiftX;
    final /* synthetic */ int val$shiftY;
    
    DragView$6(final DragView this$0, final int val$shiftX, final int val$shiftY) {
        this.this$0 = this$0;
        this.val$shiftX = val$shiftX;
        this.val$shiftY = val$shiftY;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        final float n = 1.0f - valueAnimator.getAnimatedFraction();
        this.this$0.mAnimatedShiftX = (int)(this.val$shiftX * n);
        this.this$0.mAnimatedShiftY = (int)(n * this.val$shiftY);
        this.this$0.applyTranslation();
    }
}

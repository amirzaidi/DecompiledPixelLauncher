// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.pageindicators;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.AnimatorSet;
import android.view.animation.OvershootInterpolator;
import android.view.View$MeasureSpec;
import android.graphics.Canvas;
import android.animation.Animator$AnimatorListener;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.Themes;
import android.view.ViewOutlineProvider;
import android.graphics.Paint$Style;
import android.util.AttributeSet;
import android.content.Context;
import android.graphics.Paint;
import android.animation.ObjectAnimator;
import android.graphics.RectF;
import android.util.Property;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class PageIndicatorDots$2 implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ PageIndicatorDots this$0;
    final /* synthetic */ int val$index;
    
    PageIndicatorDots$2(final PageIndicatorDots this$0, final int val$index) {
        this.this$0 = this$0;
        this.val$index = val$index;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        this.this$0.mEntryAnimationRadiusFactors[this.val$index] = (float)valueAnimator.getAnimatedValue();
        this.this$0.invalidate();
    }
}

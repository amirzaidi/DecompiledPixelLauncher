// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.pageindicators;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.animation.ValueAnimator;
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
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class PageIndicatorDots$3 extends AnimatorListenerAdapter
{
    final /* synthetic */ PageIndicatorDots this$0;
    
    PageIndicatorDots$3(final PageIndicatorDots this$0) {
        this.this$0 = this$0;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.this$0.mEntryAnimationRadiusFactors = null;
        this.this$0.invalidateOutline();
        this.this$0.invalidate();
    }
}

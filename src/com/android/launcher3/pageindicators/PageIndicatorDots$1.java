// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.pageindicators;

import android.animation.Animator;
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

final class PageIndicatorDots$1 extends Property
{
    PageIndicatorDots$1(final Class clazz, final String s) {
        super(clazz, s);
    }
    
    public Float get(final PageIndicatorDots pageIndicatorDots) {
        return pageIndicatorDots.mCurrentPosition;
    }
    
    public void set(final PageIndicatorDots pageIndicatorDots, final Float n) {
        pageIndicatorDots.mCurrentPosition = n;
        pageIndicatorDots.invalidate();
        pageIndicatorDots.invalidateOutline();
    }
}

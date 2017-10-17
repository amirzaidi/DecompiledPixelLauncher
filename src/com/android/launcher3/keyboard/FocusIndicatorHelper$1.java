// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.keyboard;

import android.animation.Animator$AnimatorListener;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.animation.ObjectAnimator;
import android.view.View;
import android.graphics.Rect;
import android.animation.RectEvaluator;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.view.View$OnFocusChangeListener;
import android.util.Property;

final class FocusIndicatorHelper$1 extends Property
{
    FocusIndicatorHelper$1(final Class clazz, final String s) {
        super(clazz, s);
    }
    
    public Float get(final FocusIndicatorHelper focusIndicatorHelper) {
        return focusIndicatorHelper.mAlpha;
    }
    
    public void set(final FocusIndicatorHelper focusIndicatorHelper, final Float n) {
        focusIndicatorHelper.setAlpha(n);
    }
}

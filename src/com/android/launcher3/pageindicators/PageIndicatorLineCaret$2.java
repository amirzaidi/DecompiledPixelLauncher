// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.pageindicators;

import com.android.launcher3.dynamicui.ExtractedColors;
import android.view.View$AccessibilityDelegate;
import android.view.View;
import android.view.View$OnFocusChangeListener;
import android.view.View$OnClickListener;
import android.graphics.drawable.Drawable;
import com.android.launcher3.Utilities;
import android.graphics.Canvas;
import android.animation.Animator$AnimatorListener;
import android.animation.ObjectAnimator;
import android.content.res.Resources;
import com.android.launcher3.dynamicui.WallpaperColorInfo;
import android.os.Looper;
import android.util.AttributeSet;
import android.content.Context;
import android.view.ViewConfiguration;
import android.graphics.Paint;
import com.android.launcher3.Launcher;
import android.os.Handler;
import android.animation.ValueAnimator;
import android.widget.ImageView;
import android.util.Property;

final class PageIndicatorLineCaret$2 extends Property
{
    PageIndicatorLineCaret$2(final Class clazz, final String s) {
        super(clazz, s);
    }
    
    public Float get(final PageIndicatorLineCaret pageIndicatorLineCaret) {
        return pageIndicatorLineCaret.mNumPagesFloat;
    }
    
    public void set(final PageIndicatorLineCaret pageIndicatorLineCaret, final Float n) {
        pageIndicatorLineCaret.mNumPagesFloat = n;
        pageIndicatorLineCaret.invalidate();
    }
}

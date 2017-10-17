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
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class PageIndicatorLineCaret$5 extends AnimatorListenerAdapter
{
    final /* synthetic */ PageIndicatorLineCaret this$0;
    final /* synthetic */ int val$animatorIndex;
    
    PageIndicatorLineCaret$5(final PageIndicatorLineCaret this$0, final int val$animatorIndex) {
        this.this$0 = this$0;
        this.val$animatorIndex = val$animatorIndex;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.this$0.mAnimators[this.val$animatorIndex] = null;
    }
}

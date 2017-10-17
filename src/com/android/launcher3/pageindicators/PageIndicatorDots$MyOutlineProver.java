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
import android.graphics.Paint$Style;
import android.util.AttributeSet;
import android.content.Context;
import android.graphics.Paint;
import android.animation.ObjectAnimator;
import android.util.Property;
import android.graphics.RectF;
import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

class PageIndicatorDots$MyOutlineProver extends ViewOutlineProvider
{
    final /* synthetic */ PageIndicatorDots this$0;
    
    private PageIndicatorDots$MyOutlineProver(final PageIndicatorDots this$0) {
        this.this$0 = this$0;
    }
    
    public void getOutline(final View view, final Outline outline) {
        if (this.this$0.mEntryAnimationRadiusFactors == null) {
            final RectF -wrap0 = this.this$0.getActiveRect();
            outline.setRoundRect((int)-wrap0.left, (int)-wrap0.top, (int)-wrap0.right, (int)-wrap0.bottom, this.this$0.mDotRadius);
        }
    }
}

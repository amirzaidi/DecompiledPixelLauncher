// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.animation.Animator$AnimatorListener;
import android.animation.TimeInterpolator;
import com.android.launcher3.Utilities;
import android.graphics.Xfermode;
import android.graphics.PorterDuffXfermode;
import android.graphics.PorterDuff$Mode;
import android.graphics.Canvas;
import android.graphics.Bitmap$Config;
import android.util.AttributeSet;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.Matrix;
import android.view.View;
import android.graphics.Paint;
import android.graphics.Point;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.widget.FrameLayout;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class PopupItemView$1 extends AnimatorListenerAdapter
{
    final /* synthetic */ PopupItemView this$0;
    
    PopupItemView$1(final PopupItemView this$0) {
        this.this$0 = this$0;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.this$0.mOpenAnimationProgress = 0.0f;
    }
}

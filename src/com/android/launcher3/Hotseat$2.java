// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.Animator$AnimatorListener;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.animation.TypeEvaluator;
import android.animation.ArgbEvaluator;
import com.android.launcher3.dynamicui.ExtractedColors;
import android.view.View$OnLongClickListener;
import android.view.MotionEvent;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import android.view.View;
import android.graphics.drawable.Drawable;
import android.support.v4.b.a;
import com.android.launcher3.util.Themes;
import android.util.AttributeSet;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import com.android.launcher3.logging.UserEventDispatcher$LogContainerProvider;
import android.widget.FrameLayout;
import android.animation.ValueAnimator;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class Hotseat$2 extends AnimatorListenerAdapter
{
    final /* synthetic */ Hotseat this$0;
    
    Hotseat$2(final Hotseat this$0) {
        this.this$0 = this$0;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.this$0.mBackgroundColorAnimator = null;
    }
}

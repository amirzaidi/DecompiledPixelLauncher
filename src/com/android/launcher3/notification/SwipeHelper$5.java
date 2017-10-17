// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.notification;

import android.animation.Animator$AnimatorListener;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.util.Property;
import android.animation.ObjectAnimator;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.content.Context;
import android.view.VelocityTracker;
import android.os.Handler;
import android.util.ArrayMap;
import android.animation.Animator;
import android.view.View;
import android.animation.AnimatorListenerAdapter;

final class SwipeHelper$5 extends AnimatorListenerAdapter
{
    final /* synthetic */ SwipeHelper this$0;
    final /* synthetic */ View val$animView;
    final /* synthetic */ boolean val$canBeDismissed;
    final /* synthetic */ float val$targetLeft;
    
    SwipeHelper$5(final SwipeHelper this$0, final View val$animView, final boolean val$canBeDismissed, final float val$targetLeft) {
        this.this$0 = this$0;
        this.val$animView = val$animView;
        this.val$canBeDismissed = val$canBeDismissed;
        this.val$targetLeft = val$targetLeft;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.this$0.mSnappingChild = false;
        this.this$0.updateSwipeProgressFromOffset(this.val$animView, this.val$canBeDismissed);
        this.this$0.mCallback.onChildSnappedBack(this.val$animView, this.val$targetLeft);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.notification;

import android.animation.Animator$AnimatorListener;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.util.Property;
import android.animation.ObjectAnimator;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.content.Context;
import android.view.VelocityTracker;
import android.os.Handler;
import android.util.ArrayMap;
import android.graphics.Paint;
import android.animation.Animator;
import android.view.View;
import android.animation.AnimatorListenerAdapter;

final class SwipeHelper$3 extends AnimatorListenerAdapter
{
    private boolean mCancelled;
    final /* synthetic */ SwipeHelper this$0;
    final /* synthetic */ View val$animView;
    final /* synthetic */ boolean val$canBeDismissed;
    final /* synthetic */ Runnable val$endAction;
    
    SwipeHelper$3(final SwipeHelper this$0, final View val$animView, final boolean val$canBeDismissed, final Runnable val$endAction) {
        this.this$0 = this$0;
        this.val$animView = val$animView;
        this.val$canBeDismissed = val$canBeDismissed;
        this.val$endAction = val$endAction;
    }
    
    public void onAnimationCancel(final Animator animator) {
        this.mCancelled = true;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.this$0.updateSwipeProgressFromOffset(this.val$animView, this.val$canBeDismissed);
        this.this$0.mDismissPendingMap.remove((Object)this.val$animView);
        if (!this.mCancelled) {
            this.this$0.mCallback.onChildDismissed(this.val$animView);
        }
        if (this.val$endAction != null) {
            this.val$endAction.run();
        }
        if (!this.this$0.mDisableHwLayers) {
            this.val$animView.setLayerType(0, (Paint)null);
        }
    }
}

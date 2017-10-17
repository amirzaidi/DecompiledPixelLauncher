// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.notification;

import android.animation.Animator;
import android.animation.Animator$AnimatorListener;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.util.Property;
import android.animation.ObjectAnimator;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.ViewConfiguration;
import android.content.Context;
import android.view.VelocityTracker;
import android.os.Handler;
import android.util.ArrayMap;
import android.view.View;
import android.view.MotionEvent;

final class SwipeHelper$1 implements Runnable
{
    final /* synthetic */ SwipeHelper this$0;
    final /* synthetic */ MotionEvent val$ev;
    
    SwipeHelper$1(final SwipeHelper this$0, final MotionEvent val$ev) {
        this.this$0 = this$0;
        this.val$ev = val$ev;
    }
    
    public void run() {
        final int n = 1;
        if (this.this$0.mCurrView != null && (this.this$0.mLongPressSent ^ true)) {
            this.this$0.mLongPressSent = (n != 0);
            this.this$0.mCurrView.sendAccessibilityEvent(2);
            this.this$0.mCurrView.getLocationOnScreen(this.this$0.mTmpPos);
            this.this$0.mLongPressListener.onLongPress(this.this$0.mCurrView, (int)this.val$ev.getRawX() - this.this$0.mTmpPos[0], (int)this.val$ev.getRawY() - this.this$0.mTmpPos[n]);
        }
    }
}

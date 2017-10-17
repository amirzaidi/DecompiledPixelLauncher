// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.view.MotionEvent;
import android.view.View;
import android.support.v4.view.f;
import android.graphics.Canvas;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.animation.Animator$AnimatorListener;
import android.graphics.drawable.Drawable;
import android.animation.ValueAnimator;
import android.graphics.drawable.StateListDrawable;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

class as extends AnimatorListenerAdapter
{
    final /* synthetic */ FastScroller Sn;
    private boolean mCanceled;
    
    private as(final FastScroller sn) {
        this.Sn = sn;
        this.mCanceled = false;
    }
    
    public void onAnimationCancel(final Animator animator) {
        this.mCanceled = true;
    }
    
    public void onAnimationEnd(final Animator animator) {
        if (!this.mCanceled) {
            if ((float)this.Sn.Rm.getAnimatedValue() == 0.0f) {
                this.Sn.RA = 0;
                this.Sn.aaV(0);
            }
            else {
                this.Sn.RA = 2;
                this.Sn.aaU();
            }
            return;
        }
        this.mCanceled = false;
    }
}

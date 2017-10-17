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
    final /* synthetic */ FastScroller TW;
    private boolean mCanceled;
    
    private as(final FastScroller tw) {
        this.TW = tw;
        this.mCanceled = false;
    }
    
    public void onAnimationCancel(final Animator animator) {
        this.mCanceled = true;
    }
    
    public void onAnimationEnd(final Animator animator) {
        if (!this.mCanceled) {
            if ((float)this.TW.SV.getAnimatedValue() == 0.0f) {
                this.TW.Tj = 0;
                this.TW.abX(0);
            }
            else {
                this.TW.Tj = 2;
                this.TW.abW();
            }
            return;
        }
        this.mCanceled = false;
    }
}

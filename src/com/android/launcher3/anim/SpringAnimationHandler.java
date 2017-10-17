// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.anim;

import android.view.MotionEvent;
import android.support.a.c;
import android.support.a.d;
import android.view.View;
import android.support.a.a;
import android.view.VelocityTracker;
import java.util.ArrayList;

public class SpringAnimationHandler
{
    private SpringAnimationHandler$AnimationFactory mAnimationFactory;
    private ArrayList mAnimations;
    private float mCurrentVelocity;
    private boolean mShouldComputeVelocity;
    private int mVelocityDirection;
    private VelocityTracker mVelocityTracker;
    
    public SpringAnimationHandler(final int mVelocityDirection, final SpringAnimationHandler$AnimationFactory mAnimationFactory) {
        this.mCurrentVelocity = 0.0f;
        this.mShouldComputeVelocity = false;
        this.mAnimations = new ArrayList();
        this.mVelocityDirection = mVelocityDirection;
        this.mAnimationFactory = mAnimationFactory;
    }
    
    private void animateToFinalPosition(final float n, final int n2, final boolean b) {
        if (this.mShouldComputeVelocity) {
            this.mCurrentVelocity = this.computeVelocity();
        }
        for (int size = this.mAnimations.size(), i = 0; i < size; ++i) {
            ((a)this.mAnimations.get(i)).auh(n2);
            if (b) {
                ((a)this.mAnimations.get(i)).aug(this.mCurrentVelocity);
            }
            ((a)this.mAnimations.get(i)).atX(n);
        }
        this.reset();
    }
    
    private float computeVelocity() {
        this.getVelocityTracker().computeCurrentVelocity(1000);
        float n;
        if (this.isVerticalDirection()) {
            n = this.getVelocityTracker().getYVelocity();
        }
        else {
            n = this.getVelocityTracker().getXVelocity();
        }
        return n * 0.175f;
    }
    
    public static a forView(final View view, final d d, final float n) {
        final a a = new a(view, d, n);
        a.aua(new c(n));
        return a;
    }
    
    private VelocityTracker getVelocityTracker() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        return this.mVelocityTracker;
    }
    
    private boolean isVerticalDirection() {
        boolean b = false;
        if (this.mVelocityDirection == 0) {
            b = true;
        }
        return b;
    }
    
    public void add(final View view, final Object o) {
        final int n = 2131623938;
        a initialize = (a)view.getTag(n);
        if (initialize == null) {
            initialize = this.mAnimationFactory.initialize(o);
            view.setTag(n, (Object)initialize);
        }
        this.mAnimationFactory.update(initialize, o);
        initialize.aug(this.mCurrentVelocity);
        this.mAnimations.add(initialize);
    }
    
    public void addMovement(final MotionEvent motionEvent) {
        switch (motionEvent.getActionMasked()) {
            case 0:
            case 3: {
                this.reset();
                break;
            }
        }
        this.getVelocityTracker().addMovement(motionEvent);
        this.mShouldComputeVelocity = true;
    }
    
    public void animateToFinalPosition(final float n, final int n2) {
        this.animateToFinalPosition(n, n2, this.mShouldComputeVelocity);
    }
    
    public void animateToPositionWithVelocity(final float n, final int n2, final float mCurrentVelocity) {
        this.mCurrentVelocity = mCurrentVelocity;
        this.mShouldComputeVelocity = false;
        this.animateToFinalPosition(n, n2, true);
    }
    
    public void remove(final View view) {
        final a a = (a)view.getTag(2131623938);
        if (a.atY()) {
            a.skipToEnd();
        }
        this.mAnimations.remove(a);
    }
    
    public void reset() {
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
        this.mCurrentVelocity = 0.0f;
        this.mShouldComputeVelocity = false;
    }
    
    public void skipToEnd() {
        for (int size = this.mAnimations.size(), i = 0; i < size; ++i) {
            if (((a)this.mAnimations.get(i)).atY()) {
                ((a)this.mAnimations.get(i)).skipToEnd();
            }
        }
    }
}

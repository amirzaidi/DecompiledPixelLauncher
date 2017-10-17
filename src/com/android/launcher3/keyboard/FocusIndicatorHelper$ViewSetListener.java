// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.keyboard;

import android.animation.Animator;
import android.view.View;
import android.animation.AnimatorListenerAdapter;

class FocusIndicatorHelper$ViewSetListener extends AnimatorListenerAdapter
{
    private final boolean mCallOnCancel;
    private boolean mCalled;
    private final View mViewToSet;
    final /* synthetic */ FocusIndicatorHelper this$0;
    
    public FocusIndicatorHelper$ViewSetListener(final FocusIndicatorHelper this$0, final View mViewToSet, final boolean mCallOnCancel) {
        this.this$0 = this$0;
        this.mCalled = false;
        this.mViewToSet = mViewToSet;
        this.mCallOnCancel = mCallOnCancel;
    }
    
    public void onAnimationCancel(final Animator animator) {
        if (!this.mCallOnCancel) {
            this.mCalled = true;
        }
    }
    
    public void onAnimationEnd(final Animator animator) {
        if (!this.mCalled) {
            this.this$0.setCurrentView(this.mViewToSet);
            this.mCalled = true;
        }
    }
}

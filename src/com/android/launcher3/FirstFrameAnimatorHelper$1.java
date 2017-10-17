// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.ViewTreeObserver$OnDrawListener;

final class FirstFrameAnimatorHelper$1 implements ViewTreeObserver$OnDrawListener
{
    private long mTime;
    
    FirstFrameAnimatorHelper$1() {
        this.mTime = System.currentTimeMillis();
    }
    
    public void onDraw() {
        ++FirstFrameAnimatorHelper.sGlobalFrameCounter;
    }
}

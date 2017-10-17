// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.View;
import android.animation.AnimatorSet;

class LauncherStateTransitionAnimation$StartAnimRunnable implements Runnable
{
    private final AnimatorSet mAnim;
    private final View mViewToFocus;
    final /* synthetic */ LauncherStateTransitionAnimation this$0;
    
    public LauncherStateTransitionAnimation$StartAnimRunnable(final LauncherStateTransitionAnimation this$0, final AnimatorSet mAnim, final View mViewToFocus) {
        this.this$0 = this$0;
        this.mAnim = mAnim;
        this.mViewToFocus = mViewToFocus;
    }
    
    public void run() {
        if (this.this$0.mCurrentAnimation != this.mAnim) {
            return;
        }
        if (this.mViewToFocus != null) {
            this.mViewToFocus.requestFocus();
        }
        this.mAnim.start();
    }
}

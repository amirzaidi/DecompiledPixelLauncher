// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.Animator;
import android.animation.Animator$AnimatorListener;

final class LauncherAnimUtils$1 implements Animator$AnimatorListener
{
    public void onAnimationCancel(final Animator animator) {
        LauncherAnimUtils.sAnimators.remove(animator);
    }
    
    public void onAnimationEnd(final Animator animator) {
        LauncherAnimUtils.sAnimators.remove(animator);
    }
    
    public void onAnimationRepeat(final Animator animator) {
    }
    
    public void onAnimationStart(final Animator animator) {
        LauncherAnimUtils.sAnimators.put(animator, null);
    }
}

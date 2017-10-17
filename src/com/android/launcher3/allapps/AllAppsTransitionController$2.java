// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import android.animation.AnimatorInflater;
import com.android.launcher3.Workspace$Direction;
import android.graphics.Color;
import com.android.launcher3.Utilities;
import android.view.View;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.AbstractFloatingView;
import android.view.MotionEvent;
import android.animation.Animator$AnimatorListener;
import android.animation.TimeInterpolator;
import android.animation.ObjectAnimator;
import com.android.launcher3.util.Themes;
import android.content.Context;
import android.support.v4.view.b.a;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import com.android.launcher3.Workspace;
import com.android.launcher3.Launcher;
import com.android.launcher3.Hotseat;
import android.animation.ArgbEvaluator;
import android.view.animation.Interpolator;
import android.view.View$OnLayoutChangeListener;
import com.android.launcher3.util.TouchController;
import android.animation.AnimatorSet;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class AllAppsTransitionController$2 extends AnimatorListenerAdapter
{
    final /* synthetic */ AllAppsTransitionController this$0;
    
    AllAppsTransitionController$2(final AllAppsTransitionController this$0) {
        this.this$0 = this$0;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.this$0.finishPullDown();
        this.this$0.mDiscoBounceAnimation = null;
        this.this$0.mIsTranslateWithoutWorkspace = false;
    }
    
    public void onAnimationStart(final Animator animator) {
        final boolean b = true;
        this.this$0.mIsTranslateWithoutWorkspace = b;
        this.this$0.preparePull(b);
    }
}

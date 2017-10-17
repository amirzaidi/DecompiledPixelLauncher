// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import android.animation.AnimatorInflater;
import com.android.launcher3.Workspace$Direction;
import android.graphics.Color;
import com.android.launcher3.Utilities;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.AbstractFloatingView;
import android.view.MotionEvent;
import android.animation.Animator$AnimatorListener;
import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ObjectAnimator;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.util.Themes;
import android.content.Context;
import android.support.v4.view.b.a;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import com.android.launcher3.Workspace;
import com.android.launcher3.anim.SpringAnimationHandler;
import com.android.launcher3.Launcher;
import com.android.launcher3.Hotseat;
import com.android.launcher3.graphics.GradientView;
import android.animation.ArgbEvaluator;
import android.view.animation.Interpolator;
import android.animation.AnimatorSet;
import com.android.launcher3.util.TouchController;

final class AllAppsTransitionController$3 implements Runnable
{
    final /* synthetic */ AllAppsTransitionController this$0;
    
    AllAppsTransitionController$3(final AllAppsTransitionController this$0) {
        this.this$0 = this$0;
    }
    
    public void run() {
        if (this.this$0.mDiscoBounceAnimation == null) {
            return;
        }
        this.this$0.mDiscoBounceAnimation.start();
    }
}

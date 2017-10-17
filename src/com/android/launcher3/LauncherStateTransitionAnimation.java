// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.util.Log;
import com.android.launcher3.allapps.AllAppsContainerView;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.animation.ValueAnimator;
import android.animation.AnimatorListenerAdapter;
import android.content.res.Resources;
import com.android.launcher3.anim.CircleRevealOutlineProvider;
import android.view.animation.AccelerateInterpolator;
import android.animation.TimeInterpolator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import com.android.launcher3.config.FeatureFlags;
import android.view.View;
import android.animation.Animator$AnimatorListener;
import android.animation.Animator;
import com.android.launcher3.anim.AnimationLayerSet;
import android.animation.AnimatorSet;
import com.android.launcher3.allapps.AllAppsTransitionController;

public class LauncherStateTransitionAnimation
{
    AllAppsTransitionController mAllAppsController;
    AnimatorSet mCurrentAnimation;
    Launcher mLauncher;
    
    public LauncherStateTransitionAnimation(final Launcher mLauncher, final AllAppsTransitionController mAllAppsController) {
        this.mLauncher = mLauncher;
        this.mAllAppsController = mAllAppsController;
    }
    
    private void cancelAnimation() {
        if (this.mCurrentAnimation != null) {
            this.mCurrentAnimation.setDuration(0L);
            this.mCurrentAnimation.cancel();
            this.mCurrentAnimation = null;
        }
    }
    
    private void playCommonTransitionAnimations(final Workspace$State workspace$State, final boolean b, final boolean b2, final AnimatorSet set, final AnimationLayerSet set2) {
        final Animator startWorkspaceStateChangeAnimation = this.mLauncher.startWorkspaceStateChangeAnimation(workspace$State, b, set2);
        if (b && b2 && startWorkspaceStateChangeAnimation != null) {
            set.play(startWorkspaceStateChangeAnimation);
        }
    }
    
    private void startAnimationToNewWorkspaceState(final Workspace$State workspace$State, final Workspace$State workspace$State2, final boolean b, final Runnable runnable) {
        final Workspace workspace = this.mLauncher.getWorkspace();
        final AnimationLayerSet set = new AnimationLayerSet();
        final AnimatorSet animatorSet = LauncherAnimUtils.createAnimatorSet();
        this.cancelAnimation();
        this.playCommonTransitionAnimations(workspace$State2, b, b, animatorSet, set);
        this.mLauncher.getUserEventDispatcher().resetElapsedContainerMillis();
        if (b) {
            animatorSet.addListener((Animator$AnimatorListener)new LauncherStateTransitionAnimation$7(this, runnable));
            animatorSet.addListener((Animator$AnimatorListener)set);
            ((View)workspace).post((Runnable)new LauncherStateTransitionAnimation$StartAnimRunnable(this, animatorSet, null));
            this.mCurrentAnimation = animatorSet;
        }
        else {
            if (runnable != null) {
                runnable.run();
            }
            this.mCurrentAnimation = null;
        }
    }
    
    private void startAnimationToOverlay(final Workspace$State workspace$State, final View view, final BaseContainerView baseContainerView, final boolean b, final int n, final LauncherStateTransitionAnimation$PrivateTransitionCallbacks launcherStateTransitionAnimation$PrivateTransitionCallbacks) {
        final AnimatorSet animatorSet = LauncherAnimUtils.createAnimatorSet();
        final Resources resources = this.mLauncher.getResources();
        final int integer = resources.getInteger(2131558407);
        final int integer2 = resources.getInteger(2131558408);
        final int integer3 = resources.getInteger(2131558410);
        final AnimationLayerSet set = new AnimationLayerSet();
        final boolean b2 = view != null;
        this.cancelAnimation();
        final View contentView = baseContainerView.getContentView();
        this.playCommonTransitionAnimations(workspace$State, b, b2, animatorSet, set);
        if (!b || (b2 ^ true)) {
            if (FeatureFlags.LAUNCHER3_ALL_APPS_PULL_UP && workspace$State == Workspace$State.NORMAL_HIDDEN) {
                this.mAllAppsController.finishPullUp();
            }
            baseContainerView.setTranslationX(0.0f);
            baseContainerView.setTranslationY(0.0f);
            baseContainerView.setScaleX(1.0f);
            baseContainerView.setScaleY(1.0f);
            baseContainerView.setAlpha(1.0f);
            baseContainerView.setVisibility(0);
            contentView.setVisibility(0);
            launcherStateTransitionAnimation$PrivateTransitionCallbacks.onTransitionComplete();
            return;
        }
        if (n == 0) {
            final View revealView = baseContainerView.getRevealView();
            final int measuredWidth = revealView.getMeasuredWidth();
            final int measuredHeight = revealView.getMeasuredHeight();
            final float n2 = (float)Math.hypot(measuredWidth / 2, measuredHeight / 2);
            revealView.setVisibility(0);
            revealView.setAlpha(0.0f);
            revealView.setTranslationY(0.0f);
            revealView.setTranslationX(0.0f);
            final int[] centerDeltaInScreenSpace = Utilities.getCenterDeltaInScreenSpace(revealView, view);
            final float -get0 = launcherStateTransitionAnimation$PrivateTransitionCallbacks.materialRevealViewFinalAlpha;
            final float n3 = centerDeltaInScreenSpace[0];
            final float translationY = centerDeltaInScreenSpace[1];
            final ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder((Object)revealView, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat(View.ALPHA, new float[] { -get0, 1.0f }), PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, new float[] { translationY, 0.0f }), PropertyValuesHolder.ofFloat(View.TRANSLATION_X, new float[] { n3, 0.0f }) });
            ofPropertyValuesHolder.setDuration((long)integer);
            ofPropertyValuesHolder.setInterpolator((TimeInterpolator)new LogDecelerateInterpolator(100, 0));
            set.addView(revealView);
            animatorSet.play((Animator)ofPropertyValuesHolder);
            contentView.setVisibility(0);
            contentView.setAlpha(0.0f);
            contentView.setTranslationY(translationY);
            set.addView(contentView);
            final ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object)contentView, "translationY", new float[] { translationY, 0.0f });
            ofFloat.setDuration((long)integer);
            ofFloat.setInterpolator((TimeInterpolator)new LogDecelerateInterpolator(100, 0));
            ofFloat.setStartDelay((long)integer3);
            animatorSet.play((Animator)ofFloat);
            final float[] array2;
            final float[] array = array2 = new float[2];
            array2[0] = 0.0f;
            array2[1] = 1.0f;
            final ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat((Object)contentView, "alpha", array);
            ofFloat2.setDuration((long)integer);
            ofFloat2.setInterpolator((TimeInterpolator)new AccelerateInterpolator(1.5f));
            ofFloat2.setStartDelay((long)integer3);
            animatorSet.play((Animator)ofFloat2);
            final float materialRevealViewStartFinalRadius = launcherStateTransitionAnimation$PrivateTransitionCallbacks.getMaterialRevealViewStartFinalRadius();
            final AnimatorListenerAdapter materialRevealViewAnimatorListener = launcherStateTransitionAnimation$PrivateTransitionCallbacks.getMaterialRevealViewAnimatorListener(revealView, view);
            final ValueAnimator revealAnimator = new CircleRevealOutlineProvider(measuredWidth / 2, measuredHeight / 2, materialRevealViewStartFinalRadius, n2).createRevealAnimator(revealView);
            ((Animator)revealAnimator).setDuration((long)integer);
            ((Animator)revealAnimator).setInterpolator((TimeInterpolator)new LogDecelerateInterpolator(100, 0));
            if (materialRevealViewAnimatorListener != null) {
                ((Animator)revealAnimator).addListener((Animator$AnimatorListener)materialRevealViewAnimatorListener);
            }
            animatorSet.play((Animator)revealAnimator);
            animatorSet.addListener((Animator$AnimatorListener)new LauncherStateTransitionAnimation$3(this, revealView, launcherStateTransitionAnimation$PrivateTransitionCallbacks));
            baseContainerView.bringToFront();
            baseContainerView.setVisibility(0);
            animatorSet.addListener((Animator$AnimatorListener)set);
            baseContainerView.post((Runnable)new LauncherStateTransitionAnimation$StartAnimRunnable(this, animatorSet, (View)baseContainerView));
            this.mCurrentAnimation = animatorSet;
        }
        else if (n == 1) {
            if (!FeatureFlags.LAUNCHER3_PHYSICS) {
                set.addView(contentView);
            }
            animatorSet.addListener((Animator$AnimatorListener)new LauncherStateTransitionAnimation$4(this, launcherStateTransitionAnimation$PrivateTransitionCallbacks));
            final boolean animateToAllApps = this.mAllAppsController.animateToAllApps(animatorSet, integer2);
            final LauncherStateTransitionAnimation$StartAnimRunnable launcherStateTransitionAnimation$StartAnimRunnable = new LauncherStateTransitionAnimation$StartAnimRunnable(this, animatorSet, (View)baseContainerView);
            (this.mCurrentAnimation = animatorSet).addListener((Animator$AnimatorListener)set);
            if (animateToAllApps) {
                baseContainerView.post((Runnable)launcherStateTransitionAnimation$StartAnimRunnable);
            }
            else {
                launcherStateTransitionAnimation$StartAnimRunnable.run();
            }
        }
    }
    
    private void startAnimationToWorkspaceFromAllApps(final Workspace$State workspace$State, final Workspace$State workspace$State2, final boolean b, final int n, final Runnable runnable) {
        this.startAnimationToWorkspaceFromOverlay(workspace$State, workspace$State2, this.mLauncher.getStartViewForAllAppsRevealAnimation(), this.mLauncher.getAppsView(), b, n, runnable, new LauncherStateTransitionAnimation$5(this, 1.0f));
    }
    
    private void startAnimationToWorkspaceFromOverlay(final Workspace$State workspace$State, final Workspace$State workspace$State2, final View view, final BaseContainerView baseContainerView, final boolean b, final int n, final Runnable runnable, final LauncherStateTransitionAnimation$PrivateTransitionCallbacks launcherStateTransitionAnimation$PrivateTransitionCallbacks) {
        final AnimatorSet animatorSet = LauncherAnimUtils.createAnimatorSet();
        final Resources resources = this.mLauncher.getResources();
        final int integer = resources.getInteger(2131558407);
        final int integer2 = resources.getInteger(2131558408);
        final int integer3 = resources.getInteger(2131558410);
        final Workspace workspace = this.mLauncher.getWorkspace();
        final View revealView = baseContainerView.getRevealView();
        final View contentView = baseContainerView.getContentView();
        final AnimationLayerSet set = new AnimationLayerSet();
        final boolean b2 = view != null;
        this.cancelAnimation();
        this.playCommonTransitionAnimations(workspace$State2, b, b2, animatorSet, set);
        if (!b || (b2 ^ true)) {
            if (FeatureFlags.LAUNCHER3_ALL_APPS_PULL_UP && workspace$State == Workspace$State.NORMAL_HIDDEN) {
                this.mAllAppsController.finishPullDown();
            }
            baseContainerView.setVisibility(8);
            launcherStateTransitionAnimation$PrivateTransitionCallbacks.onTransitionComplete();
            if (runnable != null) {
                runnable.run();
            }
            return;
        }
        if (n == 0) {
            if (baseContainerView.getVisibility() == 0) {
                final int measuredWidth = revealView.getMeasuredWidth();
                final int measuredHeight = revealView.getMeasuredHeight();
                final float n2 = (float)Math.hypot(measuredWidth / 2, measuredHeight / 2);
                revealView.setVisibility(0);
                revealView.setAlpha(1.0f);
                revealView.setTranslationY(0.0f);
                set.addView(revealView);
                final int[] centerDeltaInScreenSpace = Utilities.getCenterDeltaInScreenSpace(revealView, view);
                final float n3 = centerDeltaInScreenSpace[0];
                final float n4 = centerDeltaInScreenSpace[1];
                final LogDecelerateInterpolator interpolator = new LogDecelerateInterpolator(100, 0);
                final ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object)revealView, "translationY", new float[] { 0.0f, n4 });
                ofFloat.setDuration((long)(integer - 16));
                ofFloat.setStartDelay((long)(integer3 + 16));
                ofFloat.setInterpolator((TimeInterpolator)interpolator);
                animatorSet.play((Animator)ofFloat);
                final ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat((Object)revealView, "translationX", new float[] { 0.0f, n3 });
                ofFloat2.setDuration((long)(integer - 16));
                ofFloat2.setStartDelay((long)(integer3 + 16));
                ofFloat2.setInterpolator((TimeInterpolator)interpolator);
                animatorSet.play((Animator)ofFloat2);
                if (launcherStateTransitionAnimation$PrivateTransitionCallbacks.materialRevealViewFinalAlpha != 1.0f) {
                    final ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat((Object)revealView, "alpha", new float[] { 1.0f, launcherStateTransitionAnimation$PrivateTransitionCallbacks.materialRevealViewFinalAlpha });
                    ofFloat3.setDuration((long)integer);
                    ofFloat3.setInterpolator((TimeInterpolator)interpolator);
                    animatorSet.play((Animator)ofFloat3);
                }
                set.addView(contentView);
                final ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat((Object)contentView, "translationY", new float[] { 0.0f, n4 });
                contentView.setTranslationY(0.0f);
                ofFloat4.setDuration((long)(integer - 16));
                ofFloat4.setInterpolator((TimeInterpolator)interpolator);
                ofFloat4.setStartDelay((long)(integer3 + 16));
                animatorSet.play((Animator)ofFloat4);
                contentView.setAlpha(1.0f);
                final float[] array2;
                final float[] array = array2 = new float[2];
                array2[0] = 1.0f;
                array2[1] = 0.0f;
                final ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat((Object)contentView, "alpha", array);
                ofFloat5.setDuration((long)100);
                ofFloat5.setInterpolator((TimeInterpolator)interpolator);
                animatorSet.play((Animator)ofFloat5);
                final float[] array4;
                final float[] array3 = array4 = new float[2];
                array4[0] = 0.0f;
                array4[1] = 1.0f;
                final ValueAnimator ofFloat6 = ValueAnimator.ofFloat(array3);
                ofFloat6.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new LauncherStateTransitionAnimation$8(this));
                animatorSet.play((Animator)ofFloat6);
                final float materialRevealViewStartFinalRadius = launcherStateTransitionAnimation$PrivateTransitionCallbacks.getMaterialRevealViewStartFinalRadius();
                final AnimatorListenerAdapter materialRevealViewAnimatorListener = launcherStateTransitionAnimation$PrivateTransitionCallbacks.getMaterialRevealViewAnimatorListener(revealView, view);
                final ValueAnimator revealAnimator = new CircleRevealOutlineProvider(measuredWidth / 2, measuredHeight / 2, n2, materialRevealViewStartFinalRadius).createRevealAnimator(revealView);
                ((Animator)revealAnimator).setInterpolator((TimeInterpolator)new LogDecelerateInterpolator(100, 0));
                ((Animator)revealAnimator).setDuration((long)integer);
                ((Animator)revealAnimator).setStartDelay((long)integer3);
                if (materialRevealViewAnimatorListener != null) {
                    ((Animator)revealAnimator).addListener((Animator$AnimatorListener)materialRevealViewAnimatorListener);
                }
                animatorSet.play((Animator)revealAnimator);
            }
            animatorSet.addListener((Animator$AnimatorListener)new LauncherStateTransitionAnimation$9(this, baseContainerView, runnable, contentView, launcherStateTransitionAnimation$PrivateTransitionCallbacks));
            (this.mCurrentAnimation = animatorSet).addListener((Animator$AnimatorListener)set);
            baseContainerView.post((Runnable)new LauncherStateTransitionAnimation$StartAnimRunnable(this, animatorSet, null));
        }
        else if (n == 1) {
            set.addView(contentView);
            animatorSet.addListener((Animator$AnimatorListener)new LauncherStateTransitionAnimation$10(this, runnable, launcherStateTransitionAnimation$PrivateTransitionCallbacks));
            final boolean animateToWorkspace = this.mAllAppsController.animateToWorkspace(animatorSet, integer2);
            final LauncherStateTransitionAnimation$StartAnimRunnable launcherStateTransitionAnimation$StartAnimRunnable = new LauncherStateTransitionAnimation$StartAnimRunnable(this, animatorSet, (View)workspace);
            (this.mCurrentAnimation = animatorSet).addListener((Animator$AnimatorListener)set);
            if (animateToWorkspace) {
                baseContainerView.post((Runnable)launcherStateTransitionAnimation$StartAnimRunnable);
            }
            else {
                launcherStateTransitionAnimation$StartAnimRunnable.run();
            }
        }
    }
    
    private void startAnimationToWorkspaceFromWidgets(final Workspace$State workspace$State, final Workspace$State workspace$State2, final boolean b, final Runnable runnable) {
        this.startAnimationToWorkspaceFromOverlay(workspace$State, workspace$State2, this.mLauncher.getWidgetsButton(), this.mLauncher.getWidgetsView(), b, 0, runnable, new LauncherStateTransitionAnimation$6(this, 0.3f));
    }
    
    void cleanupAnimation() {
        this.mCurrentAnimation = null;
    }
    
    public void startAnimationToAllApps(final boolean b) {
        final AllAppsContainerView appsView = this.mLauncher.getAppsView();
        final View startViewForAllAppsRevealAnimation = this.mLauncher.getStartViewForAllAppsRevealAnimation();
        final LauncherStateTransitionAnimation$1 launcherStateTransitionAnimation$1 = new LauncherStateTransitionAnimation$1(this, 1.0f);
        int n = 0;
        if (FeatureFlags.LAUNCHER3_ALL_APPS_PULL_UP) {
            n = 1;
        }
        this.startAnimationToOverlay(Workspace$State.NORMAL_HIDDEN, startViewForAllAppsRevealAnimation, appsView, b, n, launcherStateTransitionAnimation$1);
    }
    
    public void startAnimationToWidgets(final boolean b) {
        this.startAnimationToOverlay(Workspace$State.OVERVIEW_HIDDEN, this.mLauncher.getWidgetsButton(), this.mLauncher.getWidgetsView(), b, 0, new LauncherStateTransitionAnimation$2(this, 0.3f));
    }
    
    public void startAnimationToWorkspace(final Launcher$State launcher$State, final Workspace$State workspace$State, final Workspace$State workspace$State2, final boolean b, final Runnable runnable) {
        if (workspace$State2 != Workspace$State.NORMAL && workspace$State2 != Workspace$State.SPRING_LOADED && workspace$State2 != Workspace$State.OVERVIEW) {
            Log.e("LSTAnimation", "Unexpected call to startAnimationToWorkspace");
        }
        if (launcher$State != Launcher$State.APPS && launcher$State != Launcher$State.APPS_SPRING_LOADED && !this.mAllAppsController.isTransitioning()) {
            if (launcher$State == Launcher$State.WIDGETS || launcher$State == Launcher$State.WIDGETS_SPRING_LOADED) {
                this.startAnimationToWorkspaceFromWidgets(workspace$State, workspace$State2, b, runnable);
            }
            else {
                this.startAnimationToNewWorkspaceState(workspace$State, workspace$State2, b, runnable);
            }
        }
        else {
            int n = 0;
            if (FeatureFlags.LAUNCHER3_ALL_APPS_PULL_UP) {
                n = 1;
            }
            this.startAnimationToWorkspaceFromAllApps(workspace$State, workspace$State2, b, n, runnable);
        }
    }
}

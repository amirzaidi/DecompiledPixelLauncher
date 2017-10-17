// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.animation.ValueAnimator;
import android.util.Log;
import android.animation.TimeInterpolator;
import android.util.Property;
import android.animation.Animator$AnimatorListener;
import com.android.launcher3.anim.AnimationLayerSet;
import android.animation.ObjectAnimator;
import android.view.View;
import android.animation.Animator;
import android.view.animation.LinearInterpolator;

public class PinchAnimationManager
{
    private static final LinearInterpolator INTERPOLATOR;
    private final Animator[] mAnimators;
    private boolean mIsAnimating;
    private Launcher mLauncher;
    private int mNormalOverviewTransitionDuration;
    private float mOverviewScale;
    private float mOverviewTranslationY;
    private Workspace mWorkspace;
    
    static {
        INTERPOLATOR = new LinearInterpolator();
    }
    
    public PinchAnimationManager(final Launcher mLauncher) {
        this.mAnimators = new Animator[3];
        this.mLauncher = mLauncher;
        this.mWorkspace = mLauncher.mWorkspace;
        this.mOverviewScale = this.mWorkspace.getOverviewModeShrinkFactor();
        this.mOverviewTranslationY = this.mWorkspace.getOverviewModeTranslationY();
        this.mNormalOverviewTransitionDuration = this.mWorkspace.getStateTransitionAnimation().mOverviewTransitionTime;
    }
    
    private void animateHotseatAndQsb(final boolean b) {
        final Workspace mWorkspace = this.mWorkspace;
        boolean b2;
        if (b) {
            b2 = true;
        }
        else {
            b2 = false;
        }
        this.startAnimator(0, (Animator)mWorkspace.createHotseatAlphaAnimator(b2 ? 1 : 0), 150L);
    }
    
    private void animateOverviewPanelButtons(final boolean b) {
        this.animateShowHideView(1, (View)this.mLauncher.getOverviewPanel(), b);
    }
    
    private void animateScrim(final boolean b) {
        float mWorkspaceScrimAlpha;
        if (b) {
            mWorkspaceScrimAlpha = this.mWorkspace.getStateTransitionAnimation().mWorkspaceScrimAlpha;
        }
        else {
            mWorkspaceScrimAlpha = 0.0f;
        }
        this.startAnimator(2, (Animator)ObjectAnimator.ofFloat((Object)this.mLauncher.getDragLayer(), "backgroundAlpha", new float[] { mWorkspaceScrimAlpha }), this.mNormalOverviewTransitionDuration);
    }
    
    private void animateShowHideView(final int n, final View view, final boolean b) {
        int n2 = 1;
        final Property alpha = View.ALPHA;
        final float[] array = new float[n2];
        if (!b) {
            n2 = 0;
        }
        array[0] = n2;
        final ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object)view, alpha, array);
        ((Animator)ofFloat).addListener((Animator$AnimatorListener)new AnimationLayerSet(view));
        if (b) {
            view.setVisibility(0);
        }
        else {
            ((Animator)ofFloat).addListener((Animator$AnimatorListener)new PinchAnimationManager$3(this, view));
        }
        this.startAnimator(n, (Animator)ofFloat, 150L);
    }
    
    private void setOverviewPanelsAlpha(final float backgroundAlpha, final int n) {
        for (int childCount = this.mWorkspace.getChildCount(), i = 0; i < childCount; ++i) {
            final CellLayout cellLayout = (CellLayout)this.mWorkspace.getChildAt(i);
            if (n == 0) {
                cellLayout.setBackgroundAlpha(backgroundAlpha);
            }
            else {
                ObjectAnimator.ofFloat((Object)cellLayout, "backgroundAlpha", new float[] { backgroundAlpha }).setDuration((long)n).start();
            }
        }
    }
    
    private void startAnimator(final int n, final Animator animator, final long duration) {
        if (this.mAnimators[n] != null) {
            this.mAnimators[n].cancel();
        }
        (this.mAnimators[n] = animator).setInterpolator((TimeInterpolator)PinchAnimationManager.INTERPOLATOR);
        this.mAnimators[n].setDuration(duration).start();
    }
    
    public void animateThreshold(final float n, final Workspace$State workspace$State, final Workspace$State workspace$State2) {
        final int n2 = 5;
        int n3 = 1;
        if (n == 0.4f) {
            if (workspace$State == Workspace$State.OVERVIEW) {
                if (workspace$State2 != Workspace$State.OVERVIEW) {
                    n3 = 0;
                }
                this.animateOverviewPanelButtons(n3 != 0);
            }
            else if (workspace$State == Workspace$State.NORMAL) {
                if (workspace$State2 != Workspace$State.NORMAL) {
                    n3 = 0;
                }
                this.animateHotseatAndQsb(n3 != 0);
            }
        }
        else if (n == 0.7f) {
            if (workspace$State == Workspace$State.OVERVIEW) {
                this.animateHotseatAndQsb(workspace$State2 == Workspace$State.NORMAL && n3);
                if (workspace$State2 != Workspace$State.OVERVIEW) {
                    n3 = 0;
                }
                this.animateScrim(n3 != 0);
            }
            else if (workspace$State == Workspace$State.NORMAL) {
                this.animateOverviewPanelButtons(workspace$State2 == Workspace$State.OVERVIEW && n3);
                if (workspace$State2 != Workspace$State.OVERVIEW) {
                    n3 = 0;
                }
                this.animateScrim(n3 != 0);
            }
        }
        else if (n == 0.95f) {
            if (workspace$State == Workspace$State.OVERVIEW && workspace$State2 == Workspace$State.NORMAL) {
                this.mLauncher.getUserEventDispatcher().logActionOnContainer(n2, 0, 6, this.mWorkspace.getCurrentPage());
                this.mLauncher.showWorkspace(n3 != 0);
                this.mWorkspace.snapToPage(this.mWorkspace.getCurrentPage());
            }
            else if (workspace$State == Workspace$State.NORMAL && workspace$State2 == Workspace$State.OVERVIEW) {
                this.mLauncher.getUserEventDispatcher().logActionOnContainer(n2, 0, n3, this.mWorkspace.getCurrentPage());
                this.mLauncher.showOverviewMode(n3 != 0);
            }
        }
        else {
            Log.e("PinchAnimationManager", "Received unknown threshold to animate: " + n);
        }
    }
    
    public void animateToProgress(final float n, final float n2, int mNormalOverviewTransitionDuration, final PinchThresholdManager pinchThresholdManager) {
        final int mIsAnimating = 1;
        if (mNormalOverviewTransitionDuration == -1) {
            mNormalOverviewTransitionDuration = this.mNormalOverviewTransitionDuration;
        }
        final float[] array = { n, 0.0f };
        array[mIsAnimating] = n2;
        final ValueAnimator ofFloat = ValueAnimator.ofFloat(array);
        ofFloat.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new PinchAnimationManager$1(this, pinchThresholdManager));
        ofFloat.addListener((Animator$AnimatorListener)new PinchAnimationManager$2(this, pinchThresholdManager));
        ofFloat.setDuration((long)mNormalOverviewTransitionDuration).start();
        this.mIsAnimating = (mIsAnimating != 0);
    }
    
    public int getNormalOverviewTransitionDuration() {
        return this.mNormalOverviewTransitionDuration;
    }
    
    public boolean isAnimating() {
        return this.mIsAnimating;
    }
    
    public void setAnimationProgress(final float n) {
        final float n2 = 1.0f;
        final float n3 = (n2 - this.mOverviewScale) * n + this.mOverviewScale;
        final float translationY = (n2 - n) * this.mOverviewTranslationY;
        this.mWorkspace.setScaleX(n3);
        this.mWorkspace.setScaleY(n3);
        this.mWorkspace.setTranslationY(translationY);
        this.setOverviewPanelsAlpha(n2 - n, 0);
    }
}

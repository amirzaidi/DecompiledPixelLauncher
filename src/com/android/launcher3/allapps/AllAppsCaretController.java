// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import android.view.animation.Interpolator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.view.animation.AnimationUtils;
import com.android.launcher3.Launcher;
import com.android.launcher3.pageindicators.CaretDrawable;
import android.animation.ObjectAnimator;

public class AllAppsCaretController
{
    private ObjectAnimator mCaretAnimator;
    private CaretDrawable mCaretDrawable;
    private float mLastCaretProgress;
    private Launcher mLauncher;
    private boolean mThresholdCrossed;
    
    public AllAppsCaretController(final CaretDrawable mCaretDrawable, final Launcher mLauncher) {
        this.mLauncher = mLauncher;
        this.mCaretDrawable = mCaretDrawable;
        final long duration = mLauncher.getResources().getInteger(2131558422);
        final Interpolator loadInterpolator = AnimationUtils.loadInterpolator((Context)mLauncher, 17563661);
        (this.mCaretAnimator = ObjectAnimator.ofFloat((Object)this.mCaretDrawable, "caretProgress", new float[] { 0.0f })).setDuration(duration);
        this.mCaretAnimator.setInterpolator((TimeInterpolator)loadInterpolator);
    }
    
    private void animateCaretToProgress(final float mLastCaretProgress) {
        if (Float.compare(this.mLastCaretProgress, mLastCaretProgress) == 0) {
            return;
        }
        if (this.mCaretAnimator.isRunning()) {
            this.mCaretAnimator.cancel();
        }
        this.mLastCaretProgress = mLastCaretProgress;
        this.mCaretAnimator.setFloatValues(new float[] { mLastCaretProgress });
        this.mCaretAnimator.start();
    }
    
    private float getThreshold() {
        if (this.mLauncher.useVerticalBarLayout()) {
            return 0.5f;
        }
        float n;
        if (this.mThresholdCrossed) {
            n = 0.015f;
        }
        else {
            n = 0.0f;
        }
        return n;
    }
    
    public void onDragStart() {
        this.mThresholdCrossed = false;
    }
    
    public void updateCaret(final float n, final float n2, final boolean b) {
        final float n3 = -1.0f;
        final float n4 = 1.0f;
        if (this.getThreshold() < n && n < n4 - this.getThreshold() && (this.mLauncher.useVerticalBarLayout() ^ true)) {
            this.mThresholdCrossed = true;
            final float max = Math.max(n3, Math.min(n2 / 0.7f, n4));
            this.mCaretDrawable.setCaretProgress(max);
            this.mLastCaretProgress = max;
            this.animateCaretToProgress(0.0f);
        }
        else if (!b) {
            if (n <= this.getThreshold()) {
                this.animateCaretToProgress(n4);
            }
            else if (n >= n4 - this.getThreshold()) {
                this.animateCaretToProgress(n3);
            }
        }
    }
}

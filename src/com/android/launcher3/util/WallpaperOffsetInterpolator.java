// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.util.Log;
import com.android.launcher3.Utilities;
import android.view.animation.DecelerateInterpolator;
import com.android.launcher3.Workspace;
import android.os.IBinder;
import android.app.WallpaperManager;
import android.view.animation.Interpolator;
import android.view.Choreographer;
import android.view.Choreographer$FrameCallback;

public class WallpaperOffsetInterpolator implements Choreographer$FrameCallback
{
    private boolean mAnimating;
    private float mAnimationStartOffset;
    private long mAnimationStartTime;
    private final Choreographer mChoreographer;
    private float mCurrentOffset;
    private float mFinalOffset;
    private final Interpolator mInterpolator;
    private final boolean mIsRtl;
    private float mLastSetWallpaperOffsetSteps;
    private boolean mLockedToDefaultPage;
    int mNumPagesForWallpaperParallax;
    int mNumScreens;
    private boolean mWaitingForUpdate;
    private boolean mWallpaperIsLiveWallpaper;
    private final WallpaperManager mWallpaperManager;
    private IBinder mWindowToken;
    private final Workspace mWorkspace;
    
    public WallpaperOffsetInterpolator(final Workspace mWorkspace) {
        this.mLastSetWallpaperOffsetSteps = 0.0f;
        this.mFinalOffset = 0.0f;
        this.mCurrentOffset = 0.5f;
        this.mChoreographer = Choreographer.getInstance();
        this.mInterpolator = (Interpolator)new DecelerateInterpolator(1.5f);
        this.mWorkspace = mWorkspace;
        this.mWallpaperManager = WallpaperManager.getInstance(mWorkspace.getContext());
        this.mIsRtl = Utilities.isRtl(mWorkspace.getResources());
    }
    
    private void animateToFinal() {
        this.mAnimating = true;
        this.mAnimationStartOffset = this.mCurrentOffset;
        this.mAnimationStartTime = System.currentTimeMillis();
    }
    
    private int getNumScreensExcludingEmptyAndCustom() {
        return this.mWorkspace.getChildCount() - this.numEmptyScreensToIgnore() - this.mWorkspace.numCustomPages();
    }
    
    private int numEmptyScreensToIgnore() {
        if (this.mWorkspace.getChildCount() - this.mWorkspace.numCustomPages() >= 4 && this.mWorkspace.hasExtraEmptyScreen()) {
            return 1;
        }
        return 0;
    }
    
    private void scheduleUpdate() {
        if (!this.mWaitingForUpdate) {
            this.mChoreographer.postFrameCallback((Choreographer$FrameCallback)this);
            this.mWaitingForUpdate = true;
        }
    }
    
    private void setWallpaperOffsetSteps() {
        final float n = 1.0f;
        final float mLastSetWallpaperOffsetSteps = n / (this.mNumPagesForWallpaperParallax - 1);
        if (mLastSetWallpaperOffsetSteps != this.mLastSetWallpaperOffsetSteps) {
            this.mWallpaperManager.setWallpaperOffsetSteps(mLastSetWallpaperOffsetSteps, n);
            this.mLastSetWallpaperOffsetSteps = mLastSetWallpaperOffsetSteps;
        }
    }
    
    private void updateOffset(final boolean b) {
        if (!this.mWaitingForUpdate && !b) {
            return;
        }
        this.mWaitingForUpdate = false;
        if (!this.computeScrollOffset() || this.mWindowToken == null) {
            return;
        }
        try {
            final WallpaperManager mWallpaperManager = this.mWallpaperManager;
            try {
                final IBinder mWindowToken = this.mWindowToken;
                try {
                    mWallpaperManager.setWallpaperOffsets(mWindowToken, this.getCurrX(), 0.5f);
                    this.setWallpaperOffsetSteps();
                }
                catch (IllegalArgumentException ex) {
                    Log.e("WPOffsetInterpolator", "Error updating wallpaper offset: " + ex);
                }
            }
            catch (IllegalArgumentException ex2) {}
        }
        catch (IllegalArgumentException ex3) {}
    }
    
    private float wallpaperOffsetForCurrentScroll() {
        return this.wallpaperOffsetForScroll(this.mWorkspace.getScrollX());
    }
    
    public boolean computeScrollOffset() {
        final boolean b = true;
        final float n = 1.0E-7f;
        final float mCurrentOffset = this.mCurrentOffset;
        if (this.mAnimating) {
            final long n2 = System.currentTimeMillis() - this.mAnimationStartTime;
            this.mCurrentOffset = this.mInterpolator.getInterpolation(n2 / 250.0f) * (this.mFinalOffset - this.mAnimationStartOffset) + this.mAnimationStartOffset;
            this.mAnimating = (n2 < 250L && b);
        }
        else {
            this.mCurrentOffset = this.mFinalOffset;
        }
        if (Math.abs(this.mCurrentOffset - this.mFinalOffset) > n) {
            this.scheduleUpdate();
        }
        return Math.abs(mCurrentOffset - this.mCurrentOffset) > n && b;
    }
    
    public void doFrame(final long n) {
        this.updateOffset(false);
    }
    
    public float getCurrX() {
        return this.mCurrentOffset;
    }
    
    public boolean isLockedToDefaultPage() {
        return this.mLockedToDefaultPage;
    }
    
    public void jumpToFinal() {
        this.mCurrentOffset = this.mFinalOffset;
    }
    
    public void onResume() {
        this.mWallpaperIsLiveWallpaper = (this.mWallpaperManager.getWallpaperInfo() != null);
        this.mLastSetWallpaperOffsetSteps = 0.0f;
    }
    
    public void setFinalX(final float n) {
        this.scheduleUpdate();
        this.mFinalOffset = Math.max(0.0f, Math.min(n, 1.0f));
        if (this.getNumScreensExcludingEmptyAndCustom() != this.mNumScreens) {
            if (this.mNumScreens > 0 && Float.compare(this.mCurrentOffset, this.mFinalOffset) != 0) {
                this.animateToFinal();
            }
            this.mNumScreens = this.getNumScreensExcludingEmptyAndCustom();
        }
    }
    
    public void setLockToDefaultPage(final boolean mLockedToDefaultPage) {
        this.mLockedToDefaultPage = mLockedToDefaultPage;
    }
    
    public void setWindowToken(final IBinder mWindowToken) {
        this.mWindowToken = mWindowToken;
    }
    
    public void syncWithScroll() {
        this.setFinalX(this.wallpaperOffsetForCurrentScroll());
        this.updateOffset(true);
    }
    
    public float wallpaperOffsetForScroll(final int n) {
        float n2 = 1.0f;
        float n3 = 0.0f;
        final int numScreensExcludingEmptyAndCustom = this.getNumScreensExcludingEmptyAndCustom();
        if (this.mLockedToDefaultPage || numScreensExcludingEmptyAndCustom <= 1) {
            if (!this.mIsRtl) {
                n2 = 0.0f;
            }
            return n2;
        }
        if (this.mWallpaperIsLiveWallpaper) {
            this.mNumPagesForWallpaperParallax = numScreensExcludingEmptyAndCustom;
        }
        else {
            this.mNumPagesForWallpaperParallax = Math.max(4, numScreensExcludingEmptyAndCustom);
        }
        int numCustomPages;
        int numCustomPages2;
        if (this.mIsRtl) {
            numCustomPages = this.mWorkspace.numCustomPages();
            numCustomPages2 = numCustomPages + numScreensExcludingEmptyAndCustom - 1;
        }
        else {
            numCustomPages2 = this.mWorkspace.numCustomPages();
            numCustomPages = numCustomPages2 + numScreensExcludingEmptyAndCustom - 1;
        }
        final int scrollForPage = this.mWorkspace.getScrollForPage(numCustomPages2);
        final int n4 = this.mWorkspace.getScrollForPage(numCustomPages) - scrollForPage;
        if (n4 == 0) {
            return 0.0f;
        }
        final float boundToRange = Utilities.boundToRange((n - scrollForPage - this.mWorkspace.getLayoutTransitionOffsetForPage(0)) / n4, 0.0f, n2);
        if (this.mIsRtl) {
            n3 = (this.mNumPagesForWallpaperParallax - 1 - (numScreensExcludingEmptyAndCustom - 1)) / (this.mNumPagesForWallpaperParallax - 1);
        }
        return boundToRange * ((numScreensExcludingEmptyAndCustom - 1) / (this.mNumPagesForWallpaperParallax - 1)) + n3;
    }
}

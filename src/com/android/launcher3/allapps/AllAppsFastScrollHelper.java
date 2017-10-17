// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import java.util.Iterator;
import android.support.v7.widget.j;
import java.util.List;
import java.util.HashSet;

public class AllAppsFastScrollHelper implements AllAppsGridAdapter$BindViewCallback
{
    private AlphabeticalAppsList mApps;
    String mCurrentFastScrollSection;
    int mFastScrollFrameIndex;
    final int[] mFastScrollFrames;
    Runnable mFastScrollToTargetSectionRunnable;
    private boolean mHasFastScrollTouchSettled;
    private boolean mHasFastScrollTouchSettledAtLeastOnce;
    private AllAppsRecyclerView mRv;
    Runnable mSmoothSnapNextFrameRunnable;
    int mTargetFastScrollPosition;
    String mTargetFastScrollSection;
    private HashSet mTrackedFastScrollViews;
    
    public AllAppsFastScrollHelper(final AllAppsRecyclerView mRv, final AlphabeticalAppsList mApps) {
        this.mTargetFastScrollPosition = -1;
        this.mTrackedFastScrollViews = new HashSet();
        this.mFastScrollFrames = new int[10];
        this.mSmoothSnapNextFrameRunnable = new AllAppsFastScrollHelper$1(this);
        this.mFastScrollToTargetSectionRunnable = new AllAppsFastScrollHelper$2(this);
        this.mRv = mRv;
        this.mApps = mApps;
    }
    
    private void smoothSnapToPosition(final int n, final int n2, final AlphabeticalAppsList$FastScrollSectionInfo alphabeticalAppsList$FastScrollSectionInfo) {
        this.mRv.removeCallbacks(this.mSmoothSnapNextFrameRunnable);
        this.mRv.removeCallbacks(this.mFastScrollToTargetSectionRunnable);
        this.trackAllChildViews();
        if (this.mHasFastScrollTouchSettled) {
            this.mCurrentFastScrollSection = alphabeticalAppsList$FastScrollSectionInfo.sectionName;
            this.mTargetFastScrollSection = null;
            this.updateTrackedViewsFastScrollFocusState();
        }
        else {
            this.mCurrentFastScrollSection = null;
            this.mTargetFastScrollSection = alphabeticalAppsList$FastScrollSectionInfo.sectionName;
            this.mHasFastScrollTouchSettled = false;
            this.updateTrackedViewsFastScrollFocusState();
            final AllAppsRecyclerView mRv = this.mRv;
            final Runnable mFastScrollToTargetSectionRunnable = this.mFastScrollToTargetSectionRunnable;
            int n3;
            if (this.mHasFastScrollTouchSettledAtLeastOnce) {
                n3 = 200;
            }
            else {
                n3 = 100;
            }
            mRv.postDelayed(mFastScrollToTargetSectionRunnable, (long)n3);
        }
        final List fastScrollerSections = this.mApps.getFastScrollerSections();
        final int position = alphabeticalAppsList$FastScrollSectionInfo.fastScrollToItem.position;
        int min;
        if (fastScrollerSections.size() > 0 && fastScrollerSections.get(0) == alphabeticalAppsList$FastScrollSectionInfo) {
            min = 0;
        }
        else {
            min = Math.min(n2, this.mRv.getCurrentScrollY(position, 0));
        }
        final int length = this.mFastScrollFrames.length;
        final int n4 = min - n;
        final float signum = Math.signum(n4);
        final int n5 = (int)(signum * Math.ceil(Math.abs(n4) / length));
        int n6 = n4;
        for (int i = 0; i < length; ++i) {
            this.mFastScrollFrames[i] = (int)(Math.min(Math.abs(n5), Math.abs(n6)) * signum);
            n6 -= n5;
        }
        this.mFastScrollFrameIndex = 0;
        this.mRv.postOnAnimation(this.mSmoothSnapNextFrameRunnable);
    }
    
    private void trackAllChildViews() {
        for (int childCount = this.mRv.getChildCount(), i = 0; i < childCount; ++i) {
            final j childViewHolder = this.mRv.getChildViewHolder(this.mRv.getChildAt(i));
            if (childViewHolder != null) {
                this.mTrackedFastScrollViews.add(childViewHolder);
            }
        }
    }
    
    private void updateTrackedViewsFastScrollFocusState() {
        for (final j j : this.mTrackedFastScrollViews) {
            final int adapterPosition = j.getAdapterPosition();
            boolean activated;
            if (this.mCurrentFastScrollSection != null && adapterPosition > -1) {
                final AlphabeticalAppsList$AdapterItem alphabeticalAppsList$AdapterItem = this.mApps.getAdapterItems().get(adapterPosition);
                activated = (alphabeticalAppsList$AdapterItem != null && this.mCurrentFastScrollSection.equals(alphabeticalAppsList$AdapterItem.sectionName) && alphabeticalAppsList$AdapterItem.position == this.mTargetFastScrollPosition);
            }
            else {
                activated = false;
            }
            j.itemView.setActivated(activated);
        }
    }
    
    public void onBindView(final AllAppsGridAdapter$ViewHolder allAppsGridAdapter$ViewHolder) {
        if (this.mCurrentFastScrollSection != null || this.mTargetFastScrollSection != null) {
            this.mTrackedFastScrollViews.add(allAppsGridAdapter$ViewHolder);
        }
    }
    
    public void onFastScrollCompleted() {
        this.mRv.removeCallbacks(this.mSmoothSnapNextFrameRunnable);
        this.mRv.removeCallbacks(this.mFastScrollToTargetSectionRunnable);
        this.mHasFastScrollTouchSettled = false;
        this.mHasFastScrollTouchSettledAtLeastOnce = false;
        this.mCurrentFastScrollSection = null;
        this.mTargetFastScrollSection = null;
        this.mTargetFastScrollPosition = -1;
        this.updateTrackedViewsFastScrollFocusState();
        this.mTrackedFastScrollViews.clear();
    }
    
    public void onSetAdapter(final AllAppsGridAdapter allAppsGridAdapter) {
        allAppsGridAdapter.setBindViewCallback(this);
    }
    
    public boolean smoothScrollToSection(final int n, final int n2, final AlphabeticalAppsList$FastScrollSectionInfo alphabeticalAppsList$FastScrollSectionInfo) {
        if (this.mTargetFastScrollPosition != alphabeticalAppsList$FastScrollSectionInfo.fastScrollToItem.position) {
            this.mTargetFastScrollPosition = alphabeticalAppsList$FastScrollSectionInfo.fastScrollToItem.position;
            this.smoothSnapToPosition(n, n2, alphabeticalAppsList$FastScrollSectionInfo);
            return true;
        }
        return false;
    }
}

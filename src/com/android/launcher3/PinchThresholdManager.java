// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

public class PinchThresholdManager
{
    private float mPassedThreshold;
    private Workspace mWorkspace;
    
    public PinchThresholdManager(final Workspace mWorkspace) {
        this.mPassedThreshold = 0.0f;
        this.mWorkspace = mWorkspace;
    }
    
    public float getPassedThreshold() {
        return this.mPassedThreshold;
    }
    
    public void reset() {
        this.mPassedThreshold = 0.0f;
    }
    
    public float updateAndAnimatePassedThreshold(float n, final PinchAnimationManager pinchAnimationManager) {
        final float mPassedThreshold = 0.95f;
        final float mPassedThreshold2 = 0.7f;
        final float mPassedThreshold3 = 0.4f;
        if (!this.mWorkspace.isInOverviewMode()) {
            n = 1.0f - n;
        }
        final float mPassedThreshold4 = this.mPassedThreshold;
        if (n < mPassedThreshold3) {
            this.mPassedThreshold = 0.0f;
        }
        else if (n < mPassedThreshold2) {
            this.mPassedThreshold = mPassedThreshold3;
        }
        else if (n < mPassedThreshold) {
            this.mPassedThreshold = mPassedThreshold2;
        }
        else {
            this.mPassedThreshold = mPassedThreshold;
        }
        if (this.mPassedThreshold != mPassedThreshold4) {
            Workspace$State workspace$State;
            if (this.mWorkspace.isInOverviewMode()) {
                workspace$State = Workspace$State.OVERVIEW;
            }
            else {
                workspace$State = Workspace$State.NORMAL;
            }
            Workspace$State workspace$State2;
            if (this.mWorkspace.isInOverviewMode()) {
                workspace$State2 = Workspace$State.NORMAL;
            }
            else {
                workspace$State2 = Workspace$State.OVERVIEW;
            }
            final float mPassedThreshold5 = this.mPassedThreshold;
            float n2;
            Workspace$State workspace$State3;
            if (this.mPassedThreshold < mPassedThreshold4) {
                n2 = mPassedThreshold4;
                workspace$State3 = workspace$State;
            }
            else {
                workspace$State3 = workspace$State2;
                n2 = mPassedThreshold5;
            }
            pinchAnimationManager.animateThreshold(n2, workspace$State, workspace$State3);
        }
        return this.mPassedThreshold;
    }
}

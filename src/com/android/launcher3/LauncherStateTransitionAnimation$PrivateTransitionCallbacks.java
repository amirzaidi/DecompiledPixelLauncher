// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.AnimatorListenerAdapter;
import android.view.View;

class LauncherStateTransitionAnimation$PrivateTransitionCallbacks
{
    private final float materialRevealViewFinalAlpha;
    
    LauncherStateTransitionAnimation$PrivateTransitionCallbacks(final float materialRevealViewFinalAlpha) {
        this.materialRevealViewFinalAlpha = materialRevealViewFinalAlpha;
    }
    
    AnimatorListenerAdapter getMaterialRevealViewAnimatorListener(final View view, final View view2) {
        return null;
    }
    
    float getMaterialRevealViewStartFinalRadius() {
        return 0.0f;
    }
    
    void onTransitionComplete() {
    }
}

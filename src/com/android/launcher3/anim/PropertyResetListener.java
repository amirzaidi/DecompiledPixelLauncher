// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.anim;

import android.animation.ObjectAnimator;
import android.animation.Animator;
import android.util.Property;
import android.animation.AnimatorListenerAdapter;

public class PropertyResetListener extends AnimatorListenerAdapter
{
    private Property mPropertyToReset;
    private Object mResetToValue;
    
    public PropertyResetListener(final Property mPropertyToReset, final Object mResetToValue) {
        this.mPropertyToReset = mPropertyToReset;
        this.mResetToValue = mResetToValue;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.mPropertyToReset.set(((ObjectAnimator)animator).getTarget(), this.mResetToValue);
    }
}

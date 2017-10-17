// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.TimeInterpolator;

public class LogDecelerateInterpolator implements TimeInterpolator
{
    int mBase;
    int mDrift;
    final float mLogScale;
    
    public LogDecelerateInterpolator(final int mBase, final int mDrift) {
        final float n = 1.0f;
        this.mBase = mBase;
        this.mDrift = mDrift;
        this.mLogScale = n / computeLog(n, this.mBase, this.mDrift);
    }
    
    static float computeLog(final float n, final int n2, final int n3) {
        return (float)(-Math.pow(n2, -n)) + 1.0f + n3 * n;
    }
    
    public float getInterpolation(final float n) {
        float n2 = 1.0f;
        if (Float.compare(n, n2) != 0) {
            n2 = computeLog(n, this.mBase, this.mDrift) * this.mLogScale;
        }
        return n2;
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.view.animation.AnimationUtils;
import android.animation.TimeInterpolator;

final class FlingAnimation$1 implements TimeInterpolator
{
    private int mCount;
    private float mOffset;
    final /* synthetic */ FlingAnimation this$0;
    final /* synthetic */ int val$duration;
    final /* synthetic */ long val$startTime;
    
    FlingAnimation$1(final FlingAnimation this$0, final long val$startTime, final int val$duration) {
        this.this$0 = this$0;
        this.val$startTime = val$startTime;
        this.val$duration = val$duration;
        this.mCount = -1;
        this.mOffset = 0.0f;
    }
    
    public float getInterpolation(final float n) {
        if (this.mCount < 0) {
            ++this.mCount;
        }
        else if (this.mCount == 0) {
            this.mOffset = Math.min(0.5f, (AnimationUtils.currentAnimationTimeMillis() - this.val$startTime) / this.val$duration);
            ++this.mCount;
        }
        return Math.min(1.0f, this.mOffset + n);
    }
}

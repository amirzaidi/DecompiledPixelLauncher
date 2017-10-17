// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.animation.TimeInterpolator;

final class FastBitmapDrawable$1 implements TimeInterpolator
{
    public float getInterpolation(final float n) {
        final float n2 = 1.0f;
        final float n3 = 0.05f;
        if (n < n3) {
            return n / n3;
        }
        if (n < 0.3f) {
            return n2;
        }
        return (n2 - n) / 0.7f;
    }
}

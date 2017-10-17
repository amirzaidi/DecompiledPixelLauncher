// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.view.animation.Interpolator;

class ak implements Interpolator
{
    public float getInterpolation(final float n) {
        final float n2 = 1.0f;
        final float n3 = n - n2;
        return n3 * (n3 * n3 * n3 * n3) + n2;
    }
}

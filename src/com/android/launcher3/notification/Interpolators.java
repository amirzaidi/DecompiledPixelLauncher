// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.notification;

import android.view.animation.PathInterpolator;
import android.view.animation.Interpolator;

public class Interpolators
{
    public static final Interpolator FAST_OUT_LINEAR_IN;
    public static final Interpolator FAST_OUT_SLOW_IN;
    public static final Interpolator LINEAR_OUT_SLOW_IN;
    public static final Interpolator TOUCH_RESPONSE;
    
    static {
        final float n = 0.4f;
        final float n2 = 0.2f;
        final float n3 = 1.0f;
        FAST_OUT_SLOW_IN = (Interpolator)new PathInterpolator(n, 0.0f, n2, n3);
        FAST_OUT_LINEAR_IN = (Interpolator)new PathInterpolator(n, 0.0f, n3, n3);
        LINEAR_OUT_SLOW_IN = (Interpolator)new PathInterpolator(0.0f, 0.0f, n2, n3);
        TOUCH_RESPONSE = (Interpolator)new PathInterpolator(0.3f, 0.0f, 0.1f, n3);
    }
}

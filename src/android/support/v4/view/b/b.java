// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view.b;

import android.view.animation.Interpolator;

abstract class b implements Interpolator
{
    private final float[] Uo;
    private final float Up;
    
    public b(final float[] uo) {
        this.Uo = uo;
        this.Up = 1.0f / (this.Uo.length - 1);
    }
    
    public float getInterpolation(final float n) {
        final float n2 = 1.0f;
        if (n >= n2) {
            return n2;
        }
        if (n <= 0.0f) {
            return 0.0f;
        }
        final int min = Math.min((int)((this.Uo.length - 1) * n), this.Uo.length - 2);
        return (this.Uo[min + 1] - this.Uo[min]) * ((n - min * this.Up) / this.Up) + this.Uo[min];
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view.b;

import android.view.animation.Interpolator;

abstract class b implements Interpolator
{
    private final float[] VO;
    private final float VP;
    
    public b(final float[] vo) {
        this.VO = vo;
        this.VP = 1.0f / (this.VO.length - 1);
    }
    
    public float getInterpolation(final float n) {
        final float n2 = 1.0f;
        if (n >= n2) {
            return n2;
        }
        if (n <= 0.0f) {
            return 0.0f;
        }
        final int min = Math.min((int)((this.VO.length - 1) * n), this.VO.length - 2);
        return (this.VO[min + 1] - this.VO[min]) * ((n - min * this.VP) / this.VP) + this.VO[min];
    }
}

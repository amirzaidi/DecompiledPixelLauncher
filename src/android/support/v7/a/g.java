// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.a;

class g implements b
{
    private boolean aeo(final float[] array) {
        int n = 1;
        if (array[0] < 10.0f || array[0] > 37.0f || array[n] > 0.82f) {
            n = 0;
        }
        return n != 0;
    }
    
    private boolean aep(final float[] array) {
        return array[2] <= 0.05f;
    }
    
    private boolean aeq(final float[] array) {
        return array[2] >= 0.95f;
    }
    
    public boolean adC(final int n, final float[] array) {
        boolean b = false;
        if (!this.aeq(array) && !this.aep(array) && !this.aeo(array)) {
            b = true;
        }
        return b;
    }
}

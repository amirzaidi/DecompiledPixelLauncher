// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.a;

class g implements b
{
    private boolean adk(final float[] array) {
        int n = 1;
        if (array[0] < 10.0f || array[0] > 37.0f || array[n] > 0.82f) {
            n = 0;
        }
        return n != 0;
    }
    
    private boolean adl(final float[] array) {
        return array[2] <= 0.05f;
    }
    
    private boolean adm(final float[] array) {
        return array[2] >= 0.95f;
    }
    
    public boolean acy(final int n, final float[] array) {
        boolean b = false;
        if (!this.adm(array) && !this.adl(array) && !this.adk(array)) {
            b = true;
        }
        return b;
    }
}

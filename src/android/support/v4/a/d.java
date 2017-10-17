// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

public class d implements j
{
    private final Object[] WT;
    private int WU;
    
    public d(final int n) {
        if (n > 0) {
            this.WT = new Object[n];
            return;
        }
        throw new IllegalArgumentException("The max pool size must be > 0");
    }
    
    private boolean aiq(final Object o) {
        for (int i = 0; i < this.WU; ++i) {
            if (this.WT[i] == o) {
                return true;
            }
        }
        return false;
    }
    
    public boolean aip(final Object o) {
        if (this.aiq(o)) {
            throw new IllegalStateException("Already in the pool!");
        }
        if (this.WU >= this.WT.length) {
            return false;
        }
        this.WT[this.WU] = o;
        ++this.WU;
        return true;
    }
    
    public Object air() {
        if (this.WU <= 0) {
            return null;
        }
        final int n = this.WU - 1;
        final Object o = this.WT[n];
        this.WT[n] = null;
        --this.WU;
        return o;
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

public class d implements i
{
    private final Object[] Vg;
    private int Vh;
    
    public d(final int n) {
        if (n > 0) {
            this.Vg = new Object[n];
            return;
        }
        throw new IllegalArgumentException("The max pool size must be > 0");
    }
    
    private boolean agU(final Object o) {
        for (int i = 0; i < this.Vh; ++i) {
            if (this.Vg[i] == o) {
                return true;
            }
        }
        return false;
    }
    
    public boolean agT(final Object o) {
        if (this.agU(o)) {
            throw new IllegalStateException("Already in the pool!");
        }
        if (this.Vh >= this.Vg.length) {
            return false;
        }
        this.Vg[this.Vh] = o;
        ++this.Vh;
        return true;
    }
    
    public Object agV() {
        if (this.Vh <= 0) {
            return null;
        }
        final int n = this.Vh - 1;
        final Object o = this.Vg[n];
        this.Vg[n] = null;
        --this.Vh;
        return o;
    }
}

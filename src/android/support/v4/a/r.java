// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

import java.util.Map;

class r extends l
{
    final /* synthetic */ c VP;
    
    r(final c vp) {
        this.VP = vp;
    }
    
    protected int ahB() {
        return this.VP.mSize;
    }
    
    protected void ahC(final int n) {
        this.VP.agO(n);
    }
    
    protected void ahD(final Object o, final Object o2) {
        this.VP.add(o);
    }
    
    protected Object ahq(final int n, final int n2) {
        return this.VP.Vd[n];
    }
    
    protected int ahr(final Object o) {
        return this.VP.agS(o);
    }
    
    protected int ahs(final Object o) {
        return this.VP.agS(o);
    }
    
    protected Map ahw() {
        throw new UnsupportedOperationException("not a map");
    }
    
    protected Object ahx(final int n, final Object o) {
        throw new UnsupportedOperationException("not a map");
    }
    
    protected void ahy() {
        this.VP.clear();
    }
}

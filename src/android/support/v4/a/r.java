// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

import java.util.Map;

class r extends l
{
    final /* synthetic */ c Xy;
    
    r(final c xy) {
        this.Xy = xy;
    }
    
    protected Object aiA(final int n, final int n2) {
        return this.Xy.WQ[n];
    }
    
    protected int aiB(final Object o) {
        return this.Xy.aio(o);
    }
    
    protected int aiC(final Object o) {
        return this.Xy.aio(o);
    }
    
    protected Map aiG() {
        throw new UnsupportedOperationException("not a map");
    }
    
    protected Object aiH(final int n, final Object o) {
        throw new UnsupportedOperationException("not a map");
    }
    
    protected void aiI() {
        this.Xy.clear();
    }
    
    protected int aiL() {
        return this.Xy.mSize;
    }
    
    protected void aiM(final int n) {
        this.Xy.aik(n);
    }
    
    protected void aiN(final Object o, final Object o2) {
        this.Xy.add(o);
    }
}

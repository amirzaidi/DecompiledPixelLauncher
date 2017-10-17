// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

import java.util.Map;

class n extends l
{
    final /* synthetic */ t Xt;
    
    n(final t xt) {
        this.Xt = xt;
    }
    
    protected Object aiA(final int n, final int n2) {
        return this.Xt.WI[(n << 1) + n2];
    }
    
    protected int aiB(final Object o) {
        return this.Xt.aie(o);
    }
    
    protected int aiC(final Object o) {
        return this.Xt.ahT(o);
    }
    
    protected Map aiG() {
        return this.Xt;
    }
    
    protected Object aiH(final int n, final Object o) {
        return this.Xt.aif(n, o);
    }
    
    protected void aiI() {
        this.Xt.clear();
    }
    
    protected int aiL() {
        return this.Xt.mSize;
    }
    
    protected void aiM(final int n) {
        this.Xt.ahU(n);
    }
    
    protected void aiN(final Object o, final Object o2) {
        this.Xt.put(o, o2);
    }
}

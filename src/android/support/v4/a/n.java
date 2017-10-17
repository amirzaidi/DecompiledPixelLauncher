// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

import java.util.Map;

class n extends l
{
    final /* synthetic */ t VK;
    
    n(final t vk) {
        this.VK = vk;
    }
    
    protected int ahB() {
        return this.VK.mSize;
    }
    
    protected void ahC(final int n) {
        this.VK.ahc(n);
    }
    
    protected void ahD(final Object o, final Object o2) {
        this.VK.put(o, o2);
    }
    
    protected Object ahq(final int n, final int n2) {
        return this.VK.VC[(n << 1) + n2];
    }
    
    protected int ahr(final Object o) {
        return this.VK.ahm(o);
    }
    
    protected int ahs(final Object o) {
        return this.VK.ahb(o);
    }
    
    protected Map ahw() {
        return this.VK;
    }
    
    protected Object ahx(final int n, final Object o) {
        return this.VK.ahn(n, o);
    }
    
    protected void ahy() {
        this.VK.clear();
    }
}

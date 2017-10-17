// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.Map;

public class t extends b implements Map
{
    l XC;
    
    public t() {
    }
    
    public t(final int n) {
        super(n);
    }
    
    private l aje() {
        if (this.XC == null) {
            this.XC = new n(this);
        }
        return this.XC;
    }
    
    public Set entrySet() {
        return this.aje().aiF();
    }
    
    public Set keySet() {
        return this.aje().aiE();
    }
    
    public void putAll(final Map map) {
        this.aid(this.mSize + map.size());
        for (final Entry<Object, V> entry : map.entrySet()) {
            this.put(entry.getKey(), entry.getValue());
        }
    }
    
    public boolean retainAll(final Collection collection) {
        return l.aiK(this, collection);
    }
    
    public Collection values() {
        return this.aje().aiz();
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.Map;

public class t extends k implements Map
{
    l VT;
    
    public t() {
    }
    
    public t(final int n) {
        super(n);
    }
    
    private l ahU() {
        if (this.VT == null) {
            this.VT = new n(this);
        }
        return this.VT;
    }
    
    public Set entrySet() {
        return this.ahU().ahv();
    }
    
    public Set keySet() {
        return this.ahU().ahu();
    }
    
    public void putAll(final Map map) {
        this.ahl(this.mSize + map.size());
        for (final Entry<Object, V> entry : map.entrySet()) {
            this.put(entry.getKey(), entry.getValue());
        }
    }
    
    public boolean retainAll(final Collection collection) {
        return l.ahA(this, collection);
    }
    
    public Collection values() {
        return this.ahU().ahp();
    }
}

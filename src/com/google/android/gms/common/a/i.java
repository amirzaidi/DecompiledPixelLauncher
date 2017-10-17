// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.a;

import android.support.v4.a.k;
import java.util.Iterator;
import java.util.Collection;
import android.support.v4.a.t;
import java.util.AbstractSet;

public class i extends AbstractSet
{
    private final t hz;
    
    public i() {
        this.hz = new t();
    }
    
    public i(final int n) {
        this.hz = new t(n);
    }
    
    public boolean add(final Object o) {
        if (!this.hz.containsKey(o)) {
            this.hz.put(o, o);
            return true;
        }
        return false;
    }
    
    public boolean addAll(final Collection collection) {
        if (!(collection instanceof i)) {
            return super.addAll(collection);
        }
        return this.jG((i)collection);
    }
    
    public void clear() {
        this.hz.clear();
    }
    
    public boolean contains(final Object o) {
        return this.hz.containsKey(o);
    }
    
    public Iterator iterator() {
        return this.hz.keySet().iterator();
    }
    
    public boolean jG(final i i) {
        final int size = this.size();
        this.hz.ahe(i.hz);
        return this.size() > size;
    }
    
    public boolean remove(final Object o) {
        if (this.hz.containsKey(o)) {
            this.hz.remove(o);
            return true;
        }
        return false;
    }
    
    public int size() {
        return this.hz.size();
    }
}

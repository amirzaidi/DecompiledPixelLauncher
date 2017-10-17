// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.a;

import android.support.v4.a.b;
import java.util.Iterator;
import java.util.Collection;
import android.support.v4.a.t;
import java.util.AbstractSet;

public class i extends AbstractSet
{
    private final t kr;
    
    public i() {
        this.kr = new t();
    }
    
    public i(final int n) {
        this.kr = new t(n);
    }
    
    public boolean add(final Object o) {
        if (!this.kr.containsKey(o)) {
            this.kr.put(o, o);
            return true;
        }
        return false;
    }
    
    public boolean addAll(final Collection collection) {
        if (!(collection instanceof i)) {
            return super.addAll(collection);
        }
        return this.mu((i)collection);
    }
    
    public void clear() {
        this.kr.clear();
    }
    
    public boolean contains(final Object o) {
        return this.kr.containsKey(o);
    }
    
    public Iterator iterator() {
        return this.kr.keySet().iterator();
    }
    
    public boolean mu(final i i) {
        final int size = this.size();
        this.kr.ahW(i.kr);
        return this.size() > size;
    }
    
    public boolean remove(final Object o) {
        if (this.kr.containsKey(o)) {
            this.kr.remove(o);
            return true;
        }
        return false;
    }
    
    public int size() {
        return this.kr.size();
    }
}

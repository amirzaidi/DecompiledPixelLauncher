// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

import java.util.Iterator;
import java.util.Collection;
import java.util.Set;

final class o implements Set
{
    final /* synthetic */ l VL;
    
    o(final l vl) {
        this.VL = vl;
    }
    
    public boolean add(final Object o) {
        throw new UnsupportedOperationException();
    }
    
    public boolean addAll(final Collection collection) {
        throw new UnsupportedOperationException();
    }
    
    public void clear() {
        this.VL.ahy();
    }
    
    public boolean contains(final Object o) {
        boolean b = false;
        if (this.VL.ahr(o) >= 0) {
            b = true;
        }
        return b;
    }
    
    public boolean containsAll(final Collection collection) {
        return l.ahz(this.VL.ahw(), collection);
    }
    
    public boolean equals(final Object o) {
        return l.ahF(this, o);
    }
    
    public int hashCode() {
        int i = this.VL.ahB() - 1;
        int n = 0;
        while (i >= 0) {
            final Object ahq = this.VL.ahq(i, 0);
            int hashCode;
            if (ahq != null) {
                hashCode = ahq.hashCode();
            }
            else {
                hashCode = 0;
            }
            n += hashCode;
            --i;
        }
        return n;
    }
    
    public boolean isEmpty() {
        boolean b = false;
        if (this.VL.ahB() == 0) {
            b = true;
        }
        return b;
    }
    
    public Iterator iterator() {
        return new g(this.VL, 0);
    }
    
    public boolean remove(final Object o) {
        final int ahr = this.VL.ahr(o);
        if (ahr < 0) {
            return false;
        }
        this.VL.ahC(ahr);
        return true;
    }
    
    public boolean removeAll(final Collection collection) {
        return l.ahE(this.VL.ahw(), collection);
    }
    
    public boolean retainAll(final Collection collection) {
        return l.ahA(this.VL.ahw(), collection);
    }
    
    public int size() {
        return this.VL.ahB();
    }
    
    public Object[] toArray() {
        return this.VL.aho(0);
    }
    
    public Object[] toArray(final Object[] array) {
        return this.VL.aht(array, 0);
    }
}

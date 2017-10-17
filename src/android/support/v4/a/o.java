// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

import java.util.Iterator;
import java.util.Collection;
import java.util.Set;

final class o implements Set
{
    final /* synthetic */ l Xu;
    
    o(final l xu) {
        this.Xu = xu;
    }
    
    public boolean add(final Object o) {
        throw new UnsupportedOperationException();
    }
    
    public boolean addAll(final Collection collection) {
        throw new UnsupportedOperationException();
    }
    
    public void clear() {
        this.Xu.aiI();
    }
    
    public boolean contains(final Object o) {
        boolean b = false;
        if (this.Xu.aiB(o) >= 0) {
            b = true;
        }
        return b;
    }
    
    public boolean containsAll(final Collection collection) {
        return l.aiJ(this.Xu.aiG(), collection);
    }
    
    public boolean equals(final Object o) {
        return l.aiP(this, o);
    }
    
    public int hashCode() {
        int i = this.Xu.aiL() - 1;
        int n = 0;
        while (i >= 0) {
            final Object aiA = this.Xu.aiA(i, 0);
            int hashCode;
            if (aiA != null) {
                hashCode = aiA.hashCode();
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
        if (this.Xu.aiL() == 0) {
            b = true;
        }
        return b;
    }
    
    public Iterator iterator() {
        return new g(this.Xu, 0);
    }
    
    public boolean remove(final Object o) {
        final int aiB = this.Xu.aiB(o);
        if (aiB < 0) {
            return false;
        }
        this.Xu.aiM(aiB);
        return true;
    }
    
    public boolean removeAll(final Collection collection) {
        return l.aiO(this.Xu.aiG(), collection);
    }
    
    public boolean retainAll(final Collection collection) {
        return l.aiK(this.Xu.aiG(), collection);
    }
    
    public int size() {
        return this.Xu.aiL();
    }
    
    public Object[] toArray() {
        return this.Xu.aiy(0);
    }
    
    public Object[] toArray(final Object[] array) {
        return this.Xu.aiD(array, 0);
    }
}

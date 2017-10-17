// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

import java.util.Iterator;
import java.util.Collection;

final class q implements Collection
{
    final /* synthetic */ l Xx;
    
    q(final l xx) {
        this.Xx = xx;
    }
    
    public boolean add(final Object o) {
        throw new UnsupportedOperationException();
    }
    
    public boolean addAll(final Collection collection) {
        throw new UnsupportedOperationException();
    }
    
    public void clear() {
        this.Xx.aiI();
    }
    
    public boolean contains(final Object o) {
        boolean b = false;
        if (this.Xx.aiC(o) >= 0) {
            b = true;
        }
        return b;
    }
    
    public boolean containsAll(final Collection collection) {
        final Iterator<Object> iterator = collection.iterator();
        while (iterator.hasNext()) {
            if (!this.contains(iterator.next())) {
                return false;
            }
        }
        return true;
    }
    
    public boolean isEmpty() {
        boolean b = false;
        if (this.Xx.aiL() == 0) {
            b = true;
        }
        return b;
    }
    
    public Iterator iterator() {
        return new g(this.Xx, 1);
    }
    
    public boolean remove(final Object o) {
        final int aiC = this.Xx.aiC(o);
        if (aiC < 0) {
            return false;
        }
        this.Xx.aiM(aiC);
        return true;
    }
    
    public boolean removeAll(final Collection collection) {
        final int n = 1;
        int i = 0;
        int aiL = this.Xx.aiL();
        boolean b = false;
        while (i < aiL) {
            if (collection.contains(this.Xx.aiA(i, n))) {
                this.Xx.aiM(i);
                --i;
                --aiL;
                b = (n != 0);
            }
            ++i;
        }
        return b;
    }
    
    public boolean retainAll(final Collection collection) {
        final int n = 1;
        int i = 0;
        int aiL = this.Xx.aiL();
        boolean b = false;
        while (i < aiL) {
            if (!collection.contains(this.Xx.aiA(i, n))) {
                this.Xx.aiM(i);
                --i;
                --aiL;
                b = (n != 0);
            }
            ++i;
        }
        return b;
    }
    
    public int size() {
        return this.Xx.aiL();
    }
    
    public Object[] toArray() {
        return this.Xx.aiy(1);
    }
    
    public Object[] toArray(final Object[] array) {
        return this.Xx.aiD(array, 1);
    }
}

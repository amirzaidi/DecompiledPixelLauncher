// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

import java.util.Iterator;
import java.util.Collection;

final class q implements Collection
{
    final /* synthetic */ l VO;
    
    q(final l vo) {
        this.VO = vo;
    }
    
    public boolean add(final Object o) {
        throw new UnsupportedOperationException();
    }
    
    public boolean addAll(final Collection collection) {
        throw new UnsupportedOperationException();
    }
    
    public void clear() {
        this.VO.ahy();
    }
    
    public boolean contains(final Object o) {
        boolean b = false;
        if (this.VO.ahs(o) >= 0) {
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
        if (this.VO.ahB() == 0) {
            b = true;
        }
        return b;
    }
    
    public Iterator iterator() {
        return new g(this.VO, 1);
    }
    
    public boolean remove(final Object o) {
        final int ahs = this.VO.ahs(o);
        if (ahs < 0) {
            return false;
        }
        this.VO.ahC(ahs);
        return true;
    }
    
    public boolean removeAll(final Collection collection) {
        final int n = 1;
        int i = 0;
        int ahB = this.VO.ahB();
        boolean b = false;
        while (i < ahB) {
            if (collection.contains(this.VO.ahq(i, n))) {
                this.VO.ahC(i);
                --i;
                --ahB;
                b = (n != 0);
            }
            ++i;
        }
        return b;
    }
    
    public boolean retainAll(final Collection collection) {
        final int n = 1;
        int i = 0;
        int ahB = this.VO.ahB();
        boolean b = false;
        while (i < ahB) {
            if (!collection.contains(this.VO.ahq(i, n))) {
                this.VO.ahC(i);
                --i;
                --ahB;
                b = (n != 0);
            }
            ++i;
        }
        return b;
    }
    
    public int size() {
        return this.VO.ahB();
    }
    
    public Object[] toArray() {
        return this.VO.aho(1);
    }
    
    public Object[] toArray(final Object[] array) {
        return this.VO.aht(array, 1);
    }
}

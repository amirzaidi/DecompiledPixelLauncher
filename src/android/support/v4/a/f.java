// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

import java.util.Iterator;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

final class f implements Set
{
    final /* synthetic */ l Vm;
    
    f(final l vm) {
        this.Vm = vm;
    }
    
    public boolean addAll(final Collection collection) {
        final int ahB = this.Vm.ahB();
        for (final Map.Entry<Object, V> entry : collection) {
            this.Vm.ahD(entry.getKey(), entry.getValue());
        }
        return ahB != this.Vm.ahB();
    }
    
    public boolean agW(final Map.Entry entry) {
        throw new UnsupportedOperationException();
    }
    
    public void clear() {
        this.Vm.ahy();
    }
    
    public boolean contains(final Object o) {
        if (o instanceof Map.Entry) {
            final Map.Entry entry = (Map.Entry)o;
            final int ahr = this.Vm.ahr(entry.getKey());
            return ahr >= 0 && s.ahR(this.Vm.ahq(ahr, 1), entry.getValue());
        }
        return false;
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
    
    public boolean equals(final Object o) {
        return l.ahF(this, o);
    }
    
    public int hashCode() {
        int i = this.Vm.ahB() - 1;
        int n = 0;
        while (i >= 0) {
            final Object ahq = this.Vm.ahq(i, 0);
            final Object ahq2 = this.Vm.ahq(i, 1);
            int hashCode;
            if (ahq != null) {
                hashCode = ahq.hashCode();
            }
            else {
                hashCode = 0;
            }
            int hashCode2;
            if (ahq2 != null) {
                hashCode2 = ahq2.hashCode();
            }
            else {
                hashCode2 = 0;
            }
            final int n2 = n + (hashCode2 ^ hashCode);
            --i;
            n = n2;
        }
        return n;
    }
    
    public boolean isEmpty() {
        boolean b = false;
        if (this.Vm.ahB() == 0) {
            b = true;
        }
        return b;
    }
    
    public Iterator iterator() {
        return new e(this.Vm);
    }
    
    public boolean remove(final Object o) {
        throw new UnsupportedOperationException();
    }
    
    public boolean removeAll(final Collection collection) {
        throw new UnsupportedOperationException();
    }
    
    public boolean retainAll(final Collection collection) {
        throw new UnsupportedOperationException();
    }
    
    public int size() {
        return this.Vm.ahB();
    }
    
    public Object[] toArray() {
        throw new UnsupportedOperationException();
    }
    
    public Object[] toArray(final Object[] array) {
        throw new UnsupportedOperationException();
    }
}

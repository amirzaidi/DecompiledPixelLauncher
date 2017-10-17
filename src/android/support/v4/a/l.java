// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

import java.lang.reflect.Array;
import java.util.Set;
import java.util.Iterator;
import java.util.Collection;
import java.util.Map;

abstract class l
{
    o VD;
    q VE;
    f VF;
    
    public static boolean ahA(final Map map, final Collection collection) {
        boolean b = false;
        final int size = map.size();
        final Iterator<Object> iterator = map.keySet().iterator();
        while (iterator.hasNext()) {
            if (!collection.contains(iterator.next())) {
                iterator.remove();
            }
        }
        if (size != map.size()) {
            b = true;
        }
        return b;
    }
    
    public static boolean ahE(final Map map, final Collection collection) {
        boolean b = false;
        final int size = map.size();
        final Iterator<Object> iterator = collection.iterator();
        while (iterator.hasNext()) {
            map.remove(iterator.next());
        }
        if (size != map.size()) {
            b = true;
        }
        return b;
    }
    
    public static boolean ahF(final Set set, final Object o) {
        boolean b = true;
        if (set == o) {
            return b;
        }
        if (!(o instanceof Set)) {
            return false;
        }
        final Set set2 = (Set)o;
        try {
            final int size = set.size();
            try {
                if (size != set2.size() || set.containsAll(set2)) {
                    b = false;
                }
                return b;
            }
            catch (NullPointerException ex) {
                return false;
            }
            catch (ClassCastException ex2) {
                return false;
            }
        }
        catch (NullPointerException ex3) {}
        catch (ClassCastException ex4) {}
    }
    
    public static boolean ahz(final Map map, final Collection collection) {
        final Iterator<Object> iterator = collection.iterator();
        while (iterator.hasNext()) {
            if (!map.containsKey(iterator.next())) {
                return false;
            }
        }
        return true;
    }
    
    protected abstract int ahB();
    
    protected abstract void ahC(final int p0);
    
    protected abstract void ahD(final Object p0, final Object p1);
    
    public Object[] aho(final int n) {
        final int ahB = this.ahB();
        final Object[] array = new Object[ahB];
        for (int i = 0; i < ahB; ++i) {
            array[i] = this.ahq(i, n);
        }
        return array;
    }
    
    public Collection ahp() {
        if (this.VE == null) {
            this.VE = new q(this);
        }
        return this.VE;
    }
    
    protected abstract Object ahq(final int p0, final int p1);
    
    protected abstract int ahr(final Object p0);
    
    protected abstract int ahs(final Object p0);
    
    public Object[] aht(Object[] array, final int n) {
        final int ahB = this.ahB();
        if (array.length < ahB) {
            array = (Object[])Array.newInstance(array.getClass().getComponentType(), ahB);
        }
        for (int i = 0; i < ahB; ++i) {
            array[i] = this.ahq(i, n);
        }
        if (array.length > ahB) {
            array[ahB] = null;
        }
        return array;
    }
    
    public Set ahu() {
        if (this.VD == null) {
            this.VD = new o(this);
        }
        return this.VD;
    }
    
    public Set ahv() {
        if (this.VF == null) {
            this.VF = new f(this);
        }
        return this.VF;
    }
    
    protected abstract Map ahw();
    
    protected abstract Object ahx(final int p0, final Object p1);
    
    protected abstract void ahy();
}

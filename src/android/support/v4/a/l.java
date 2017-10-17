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
    o Xm;
    q Xn;
    f Xo;
    
    public static boolean aiJ(final Map map, final Collection collection) {
        final Iterator<Object> iterator = collection.iterator();
        while (iterator.hasNext()) {
            if (!map.containsKey(iterator.next())) {
                return false;
            }
        }
        return true;
    }
    
    public static boolean aiK(final Map map, final Collection collection) {
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
    
    public static boolean aiO(final Map map, final Collection collection) {
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
    
    public static boolean aiP(final Set set, final Object o) {
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
    
    protected abstract Object aiA(final int p0, final int p1);
    
    protected abstract int aiB(final Object p0);
    
    protected abstract int aiC(final Object p0);
    
    public Object[] aiD(Object[] array, final int n) {
        final int aiL = this.aiL();
        if (array.length < aiL) {
            array = (Object[])Array.newInstance(array.getClass().getComponentType(), aiL);
        }
        for (int i = 0; i < aiL; ++i) {
            array[i] = this.aiA(i, n);
        }
        if (array.length > aiL) {
            array[aiL] = null;
        }
        return array;
    }
    
    public Set aiE() {
        if (this.Xm == null) {
            this.Xm = new o(this);
        }
        return this.Xm;
    }
    
    public Set aiF() {
        if (this.Xo == null) {
            this.Xo = new f(this);
        }
        return this.Xo;
    }
    
    protected abstract Map aiG();
    
    protected abstract Object aiH(final int p0, final Object p1);
    
    protected abstract void aiI();
    
    protected abstract int aiL();
    
    protected abstract void aiM(final int p0);
    
    protected abstract void aiN(final Object p0, final Object p1);
    
    public Object[] aiy(final int n) {
        final int aiL = this.aiL();
        final Object[] array = new Object[aiL];
        for (int i = 0; i < aiL; ++i) {
            array[i] = this.aiA(i, n);
        }
        return array;
    }
    
    public Collection aiz() {
        if (this.Xn == null) {
            this.Xn = new q(this);
        }
        return this.Xn;
    }
}

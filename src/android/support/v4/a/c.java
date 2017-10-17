// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

import java.lang.reflect.Array;
import java.util.Iterator;
import java.util.Set;
import java.util.Collection;

public final class c implements Collection, Set
{
    static Object[] UW;
    static int UX;
    static int UY;
    private static final Object[] Va;
    private static final int[] Ve;
    static Object[] Vf;
    l UZ;
    int[] Vb;
    final boolean Vc;
    Object[] Vd;
    int mSize;
    
    static {
        Ve = new int[0];
        Va = new Object[0];
    }
    
    public c() {
        this(0, false);
    }
    
    public c(final int n, final boolean vc) {
        this.Vc = vc;
        if (n != 0) {
            this.agK(n);
        }
        else {
            this.Vb = c.Ve;
            this.Vd = c.Va;
        }
        this.mSize = 0;
    }
    
    private void agK(final int n) {
        Label_0015: {
            if (n == 8) {
                final Class<c> clazz = c.class;
                synchronized (c.class) {
                    if (c.Vf == null) {
                        break Label_0015;
                    }
                }
                final Object[] vf = c.Vf;
                this.Vd = vf;
                c.Vf = (Object[])vf[0];
                this.Vb = (int[])vf[1];
                vf[0] = (vf[1] = null);
                --c.UY;
                // monitorexit(clazz)
                return;
            }
            if (n == 4) {
                final Class<c> clazz2 = c.class;
                synchronized (c.class) {
                    if (c.UW == null) {
                        break Label_0015;
                    }
                }
                final Object[] uw = c.UW;
                this.Vd = uw;
                c.UW = (Object[])uw[0];
                this.Vb = (int[])uw[1];
                uw[0] = (uw[1] = null);
                --c.UX;
                // monitorexit(clazz2)
                return;
            }
        }
        this.Vb = new int[n];
        this.Vd = new Object[n];
    }
    
    private static void agL(final int[] array, final Object[] array2, final int n) {
        final int n2 = 10;
        final int n3 = 2;
        if (array.length != 8) {
            if (array.length == 4) {
                while (true) {
                    final Class<c> clazz = c.class;
                    while (true) {
                        synchronized (c.class) {
                            if (c.UX >= n2) {
                                break;
                            }
                        }
                        array2[0] = c.UW;
                        array2[1] = array;
                        for (int i = n - 1; i >= n3; --i) {
                            array2[i] = null;
                        }
                        c.UW = array2;
                        ++c.UX;
                        continue;
                    }
                }
            }
        }
        else {
            while (true) {
                final Class<c> clazz2 = c.class;
                while (true) {
                    synchronized (c.class) {
                        if (c.UY >= n2) {
                            break;
                        }
                    }
                    array2[0] = c.Vf;
                    array2[1] = array;
                    for (int j = n - 1; j >= n3; --j) {
                        array2[j] = null;
                    }
                    c.Vf = array2;
                    ++c.UY;
                    continue;
                }
            }
        }
    }
    
    private int agM(final Object o, final int n) {
        final int mSize = this.mSize;
        if (mSize == 0) {
            return -1;
        }
        final int ahS = s.ahS(this.Vb, mSize, n);
        if (ahS < 0) {
            return ahS;
        }
        if (!o.equals(this.Vd[ahS])) {
            int n2;
            for (n2 = ahS + 1; n2 < mSize && this.Vb[n2] == n; ++n2) {
                if (o.equals(this.Vd[n2])) {
                    return n2;
                }
            }
            for (int n3 = ahS - 1; n3 >= 0 && this.Vb[n3] == n; --n3) {
                if (o.equals(this.Vd[n3])) {
                    return n3;
                }
            }
            return ~n2;
        }
        return ahS;
    }
    
    private l agN() {
        if (this.UZ == null) {
            this.UZ = new r(this);
        }
        return this.UZ;
    }
    
    private int agP() {
        final int mSize = this.mSize;
        if (mSize == 0) {
            return -1;
        }
        final int ahS = s.ahS(this.Vb, mSize, 0);
        if (ahS < 0) {
            return ahS;
        }
        if (this.Vd[ahS] != null) {
            int n;
            for (n = ahS + 1; n < mSize && this.Vb[n] == 0; ++n) {
                if (this.Vd[n] == null) {
                    return n;
                }
            }
            for (int n2 = ahS - 1; n2 >= 0 && this.Vb[n2] == 0; --n2) {
                if (this.Vd[n2] == null) {
                    return n2;
                }
            }
            return ~n;
        }
        return ahS;
    }
    
    public boolean add(final Object o) {
        final int n = 8;
        final int n2 = 4;
        int n4;
        int agP;
        if (o != null) {
            int n3;
            if (!this.Vc) {
                n3 = o.hashCode();
            }
            else {
                n3 = System.identityHashCode(o);
            }
            final int agM = this.agM(o, n3);
            n4 = n3;
            agP = agM;
        }
        else {
            agP = this.agP();
            n4 = 0;
        }
        if (agP < 0) {
            final int n5 = ~agP;
            if (this.mSize >= this.Vb.length) {
                int n6;
                if (this.mSize < n) {
                    if (this.mSize < n2) {
                        n6 = n2;
                    }
                    else {
                        n6 = n;
                    }
                }
                else {
                    n6 = this.mSize + (this.mSize >> 1);
                }
                final int[] vb = this.Vb;
                final Object[] vd = this.Vd;
                this.agK(n6);
                if (this.Vb.length > 0) {
                    System.arraycopy(vb, 0, this.Vb, 0, vb.length);
                    System.arraycopy(vd, 0, this.Vd, 0, vd.length);
                }
                agL(vb, vd, this.mSize);
            }
            if (n5 < this.mSize) {
                System.arraycopy(this.Vb, n5, this.Vb, n5 + 1, this.mSize - n5);
                System.arraycopy(this.Vd, n5, this.Vd, n5 + 1, this.mSize - n5);
            }
            this.Vb[n5] = n4;
            this.Vd[n5] = o;
            ++this.mSize;
            return true;
        }
        return false;
    }
    
    public boolean addAll(final Collection collection) {
        boolean b = false;
        this.agR(this.mSize + collection.size());
        final Iterator<Object> iterator = collection.iterator();
        while (iterator.hasNext()) {
            b |= this.add(iterator.next());
        }
        return b;
    }
    
    public Object agO(final int n) {
        int n2 = 8;
        final Object o = this.Vd[n];
        if (this.mSize > 1) {
            if (this.Vb.length > n2 && this.mSize < this.Vb.length / 3) {
                if (this.mSize > n2) {
                    n2 = this.mSize + (this.mSize >> 1);
                }
                final int[] vb = this.Vb;
                final Object[] vd = this.Vd;
                this.agK(n2);
                --this.mSize;
                if (n > 0) {
                    System.arraycopy(vb, 0, this.Vb, 0, n);
                    System.arraycopy(vd, 0, this.Vd, 0, n);
                }
                if (n < this.mSize) {
                    System.arraycopy(vb, n + 1, this.Vb, n, this.mSize - n);
                    System.arraycopy(vd, n + 1, this.Vd, n, this.mSize - n);
                }
            }
            else {
                --this.mSize;
                if (n < this.mSize) {
                    System.arraycopy(this.Vb, n + 1, this.Vb, n, this.mSize - n);
                    System.arraycopy(this.Vd, n + 1, this.Vd, n, this.mSize - n);
                }
                this.Vd[this.mSize] = null;
            }
        }
        else {
            agL(this.Vb, this.Vd, this.mSize);
            this.Vb = c.Ve;
            this.Vd = c.Va;
            this.mSize = 0;
        }
        return o;
    }
    
    public Object agQ(final int n) {
        return this.Vd[n];
    }
    
    public void agR(final int n) {
        if (this.Vb.length < n) {
            final int[] vb = this.Vb;
            final Object[] vd = this.Vd;
            this.agK(n);
            if (this.mSize > 0) {
                System.arraycopy(vb, 0, this.Vb, 0, this.mSize);
                System.arraycopy(vd, 0, this.Vd, 0, this.mSize);
            }
            agL(vb, vd, this.mSize);
        }
    }
    
    public int agS(final Object o) {
        int n2;
        if (o != null) {
            int n;
            if (!this.Vc) {
                n = o.hashCode();
            }
            else {
                n = System.identityHashCode(o);
            }
            n2 = this.agM(o, n);
        }
        else {
            n2 = this.agP();
        }
        return n2;
    }
    
    public void clear() {
        if (this.mSize != 0) {
            agL(this.Vb, this.Vd, this.mSize);
            this.Vb = c.Ve;
            this.Vd = c.Va;
            this.mSize = 0;
        }
    }
    
    public boolean contains(final Object o) {
        boolean b = false;
        if (this.agS(o) >= 0) {
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
    
    public boolean equals(final Object o) {
        final boolean b = true;
        if (this == o) {
            return b;
        }
        if (!(o instanceof Set)) {
            return false;
        }
        final Set set = (Set)o;
        if (this.size() != set.size()) {
            return false;
        }
        int i = 0;
        try {
            while (i < this.mSize) {
                if (!set.contains(this.agQ(i))) {
                    return false;
                }
                ++i;
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
    
    public int hashCode() {
        int i = 0;
        final int[] vb = this.Vb;
        final int mSize = this.mSize;
        int n = 0;
        while (i < mSize) {
            n += vb[i];
            ++i;
        }
        return n;
    }
    
    public boolean isEmpty() {
        boolean b = false;
        if (this.mSize <= 0) {
            b = true;
        }
        return b;
    }
    
    public Iterator iterator() {
        return this.agN().ahu().iterator();
    }
    
    public boolean remove(final Object o) {
        final int agS = this.agS(o);
        if (agS < 0) {
            return false;
        }
        this.agO(agS);
        return true;
    }
    
    public boolean removeAll(final Collection collection) {
        boolean b = false;
        final Iterator<Object> iterator = collection.iterator();
        while (iterator.hasNext()) {
            b |= this.remove(iterator.next());
        }
        return b;
    }
    
    public boolean retainAll(final Collection collection) {
        final int n = this.mSize - 1;
        boolean b = false;
        for (int i = n; i >= 0; --i) {
            if (!collection.contains(this.Vd[i])) {
                this.agO(i);
                b = true;
            }
        }
        return b;
    }
    
    public int size() {
        return this.mSize;
    }
    
    public Object[] toArray() {
        final Object[] array = new Object[this.mSize];
        System.arraycopy(this.Vd, 0, array, 0, this.mSize);
        return array;
    }
    
    public Object[] toArray(Object[] array) {
        if (array.length < this.mSize) {
            array = (Object[])Array.newInstance(array.getClass().getComponentType(), this.mSize);
        }
        System.arraycopy(this.Vd, 0, array, 0, this.mSize);
        if (array.length > this.mSize) {
            array[this.mSize] = null;
        }
        return array;
    }
    
    public String toString() {
        int i = 0;
        if (!this.isEmpty()) {
            final StringBuilder sb = new StringBuilder(this.mSize * 14);
            sb.append('{');
            while (i < this.mSize) {
                if (i > 0) {
                    sb.append(", ");
                }
                final Object agQ = this.agQ(i);
                if (agQ == this) {
                    sb.append("(this Set)");
                }
                else {
                    sb.append(agQ);
                }
                ++i;
            }
            sb.append('}');
            return sb.toString();
        }
        return "{}";
    }
}

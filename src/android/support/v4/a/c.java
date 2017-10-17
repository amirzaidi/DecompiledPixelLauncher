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
    static Object[] WJ;
    static int WK;
    static int WL;
    private static final Object[] WN;
    private static final int[] WR;
    static Object[] WS;
    l WM;
    int[] WO;
    final boolean WP;
    Object[] WQ;
    int mSize;
    
    static {
        WR = new int[0];
        WN = new Object[0];
    }
    
    public c() {
        this(0, false);
    }
    
    public c(final int n, final boolean wp) {
        this.WP = wp;
        if (n != 0) {
            this.aig(n);
        }
        else {
            this.WO = c.WR;
            this.WQ = c.WN;
        }
        this.mSize = 0;
    }
    
    private void aig(final int n) {
        Label_0015: {
            if (n == 8) {
                final Class<c> clazz = c.class;
                synchronized (c.class) {
                    if (c.WS == null) {
                        break Label_0015;
                    }
                }
                final Object[] ws = c.WS;
                this.WQ = ws;
                c.WS = (Object[])ws[0];
                this.WO = (int[])ws[1];
                ws[0] = (ws[1] = null);
                --c.WL;
                // monitorexit(clazz)
                return;
            }
            if (n == 4) {
                final Class<c> clazz2 = c.class;
                synchronized (c.class) {
                    if (c.WJ == null) {
                        break Label_0015;
                    }
                }
                final Object[] wj = c.WJ;
                this.WQ = wj;
                c.WJ = (Object[])wj[0];
                this.WO = (int[])wj[1];
                wj[0] = (wj[1] = null);
                --c.WK;
                // monitorexit(clazz2)
                return;
            }
        }
        this.WO = new int[n];
        this.WQ = new Object[n];
    }
    
    private static void aih(final int[] array, final Object[] array2, final int n) {
        final int n2 = 10;
        final int n3 = 2;
        if (array.length != 8) {
            if (array.length == 4) {
                while (true) {
                    final Class<c> clazz = c.class;
                    while (true) {
                        synchronized (c.class) {
                            if (c.WK >= n2) {
                                break;
                            }
                        }
                        array2[0] = c.WJ;
                        array2[1] = array;
                        for (int i = n - 1; i >= n3; --i) {
                            array2[i] = null;
                        }
                        c.WJ = array2;
                        ++c.WK;
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
                        if (c.WL >= n2) {
                            break;
                        }
                    }
                    array2[0] = c.WS;
                    array2[1] = array;
                    for (int j = n - 1; j >= n3; --j) {
                        array2[j] = null;
                    }
                    c.WS = array2;
                    ++c.WL;
                    continue;
                }
            }
        }
    }
    
    private int aii(final Object o, final int n) {
        final int mSize = this.mSize;
        if (mSize == 0) {
            return -1;
        }
        final int ajc = s.ajc(this.WO, mSize, n);
        if (ajc < 0) {
            return ajc;
        }
        if (!o.equals(this.WQ[ajc])) {
            int n2;
            for (n2 = ajc + 1; n2 < mSize && this.WO[n2] == n; ++n2) {
                if (o.equals(this.WQ[n2])) {
                    return n2;
                }
            }
            for (int n3 = ajc - 1; n3 >= 0 && this.WO[n3] == n; --n3) {
                if (o.equals(this.WQ[n3])) {
                    return n3;
                }
            }
            return ~n2;
        }
        return ajc;
    }
    
    private l aij() {
        if (this.WM == null) {
            this.WM = new r(this);
        }
        return this.WM;
    }
    
    private int ail() {
        final int mSize = this.mSize;
        if (mSize == 0) {
            return -1;
        }
        final int ajc = s.ajc(this.WO, mSize, 0);
        if (ajc < 0) {
            return ajc;
        }
        if (this.WQ[ajc] != null) {
            int n;
            for (n = ajc + 1; n < mSize && this.WO[n] == 0; ++n) {
                if (this.WQ[n] == null) {
                    return n;
                }
            }
            for (int n2 = ajc - 1; n2 >= 0 && this.WO[n2] == 0; --n2) {
                if (this.WQ[n2] == null) {
                    return n2;
                }
            }
            return ~n;
        }
        return ajc;
    }
    
    public boolean add(final Object o) {
        final int n = 8;
        final int n2 = 4;
        int n4;
        int ail;
        if (o != null) {
            int n3;
            if (!this.WP) {
                n3 = o.hashCode();
            }
            else {
                n3 = System.identityHashCode(o);
            }
            final int aii = this.aii(o, n3);
            n4 = n3;
            ail = aii;
        }
        else {
            ail = this.ail();
            n4 = 0;
        }
        if (ail < 0) {
            final int n5 = ~ail;
            if (this.mSize >= this.WO.length) {
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
                final int[] wo = this.WO;
                final Object[] wq = this.WQ;
                this.aig(n6);
                if (this.WO.length > 0) {
                    System.arraycopy(wo, 0, this.WO, 0, wo.length);
                    System.arraycopy(wq, 0, this.WQ, 0, wq.length);
                }
                aih(wo, wq, this.mSize);
            }
            if (n5 < this.mSize) {
                System.arraycopy(this.WO, n5, this.WO, n5 + 1, this.mSize - n5);
                System.arraycopy(this.WQ, n5, this.WQ, n5 + 1, this.mSize - n5);
            }
            this.WO[n5] = n4;
            this.WQ[n5] = o;
            ++this.mSize;
            return true;
        }
        return false;
    }
    
    public boolean addAll(final Collection collection) {
        boolean b = false;
        this.ain(this.mSize + collection.size());
        final Iterator<Object> iterator = collection.iterator();
        while (iterator.hasNext()) {
            b |= this.add(iterator.next());
        }
        return b;
    }
    
    public Object aik(final int n) {
        int n2 = 8;
        final Object o = this.WQ[n];
        if (this.mSize > 1) {
            if (this.WO.length > n2 && this.mSize < this.WO.length / 3) {
                if (this.mSize > n2) {
                    n2 = this.mSize + (this.mSize >> 1);
                }
                final int[] wo = this.WO;
                final Object[] wq = this.WQ;
                this.aig(n2);
                --this.mSize;
                if (n > 0) {
                    System.arraycopy(wo, 0, this.WO, 0, n);
                    System.arraycopy(wq, 0, this.WQ, 0, n);
                }
                if (n < this.mSize) {
                    System.arraycopy(wo, n + 1, this.WO, n, this.mSize - n);
                    System.arraycopy(wq, n + 1, this.WQ, n, this.mSize - n);
                }
            }
            else {
                --this.mSize;
                if (n < this.mSize) {
                    System.arraycopy(this.WO, n + 1, this.WO, n, this.mSize - n);
                    System.arraycopy(this.WQ, n + 1, this.WQ, n, this.mSize - n);
                }
                this.WQ[this.mSize] = null;
            }
        }
        else {
            aih(this.WO, this.WQ, this.mSize);
            this.WO = c.WR;
            this.WQ = c.WN;
            this.mSize = 0;
        }
        return o;
    }
    
    public Object aim(final int n) {
        return this.WQ[n];
    }
    
    public void ain(final int n) {
        if (this.WO.length < n) {
            final int[] wo = this.WO;
            final Object[] wq = this.WQ;
            this.aig(n);
            if (this.mSize > 0) {
                System.arraycopy(wo, 0, this.WO, 0, this.mSize);
                System.arraycopy(wq, 0, this.WQ, 0, this.mSize);
            }
            aih(wo, wq, this.mSize);
        }
    }
    
    public int aio(final Object o) {
        int n2;
        if (o != null) {
            int n;
            if (!this.WP) {
                n = o.hashCode();
            }
            else {
                n = System.identityHashCode(o);
            }
            n2 = this.aii(o, n);
        }
        else {
            n2 = this.ail();
        }
        return n2;
    }
    
    public void clear() {
        if (this.mSize != 0) {
            aih(this.WO, this.WQ, this.mSize);
            this.WO = c.WR;
            this.WQ = c.WN;
            this.mSize = 0;
        }
    }
    
    public boolean contains(final Object o) {
        boolean b = false;
        if (this.aio(o) >= 0) {
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
                if (!set.contains(this.aim(i))) {
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
        final int[] wo = this.WO;
        final int mSize = this.mSize;
        int n = 0;
        while (i < mSize) {
            n += wo[i];
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
        return this.aij().aiE().iterator();
    }
    
    public boolean remove(final Object o) {
        final int aio = this.aio(o);
        if (aio < 0) {
            return false;
        }
        this.aik(aio);
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
            if (!collection.contains(this.WQ[i])) {
                this.aik(i);
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
        System.arraycopy(this.WQ, 0, array, 0, this.mSize);
        return array;
    }
    
    public Object[] toArray(Object[] array) {
        if (array.length < this.mSize) {
            array = (Object[])Array.newInstance(array.getClass().getComponentType(), this.mSize);
        }
        System.arraycopy(this.WQ, 0, array, 0, this.mSize);
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
                final Object aim = this.aim(i);
                if (aim == this) {
                    sb.append("(this Set)");
                }
                else {
                    sb.append(aim);
                }
                ++i;
            }
            sb.append('}');
            return sb.toString();
        }
        return "{}";
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

import java.util.Map;
import java.util.ConcurrentModificationException;

public class b
{
    static int WD;
    static Object[] WE;
    static Object[] WF;
    static int WG;
    int[] WH;
    Object[] WI;
    int mSize;
    
    public b() {
        this.WH = s.Xz;
        this.WI = s.XB;
        this.mSize = 0;
    }
    
    public b(final int n) {
        if (n != 0) {
            this.ahX(n);
        }
        else {
            this.WH = s.Xz;
            this.WI = s.XB;
        }
        this.mSize = 0;
    }
    
    private static int ahV(final int[] array, final int n, final int n2) {
        try {
            return s.ajc(array, n, n2);
        }
        catch (ArrayIndexOutOfBoundsException ex) {
            throw new ConcurrentModificationException();
        }
    }
    
    private void ahX(final int n) {
        Label_0015: {
            if (n == 8) {
                final Class<t> clazz = t.class;
                synchronized (t.class) {
                    if (b.WF == null) {
                        break Label_0015;
                    }
                }
                final Object[] wf = b.WF;
                this.WI = wf;
                b.WF = (Object[])wf[0];
                this.WH = (int[])wf[1];
                wf[0] = (wf[1] = null);
                --b.WG;
                // monitorexit(clazz)
                return;
            }
            if (n == 4) {
                final Class<t> clazz2 = t.class;
                synchronized (t.class) {
                    if (b.WE == null) {
                        break Label_0015;
                    }
                }
                final Object[] we = b.WE;
                this.WI = we;
                b.WE = (Object[])we[0];
                this.WH = (int[])we[1];
                we[0] = (we[1] = null);
                --b.WD;
                // monitorexit(clazz2)
                return;
            }
        }
        this.WH = new int[n];
        this.WI = new Object[n << 1];
    }
    
    private static void ahZ(final int[] array, final Object[] array2, final int n) {
        final int n2 = 10;
        final int n3 = 2;
        if (array.length != 8) {
            if (array.length == 4) {
                while (true) {
                    final Class<t> clazz = t.class;
                    while (true) {
                        synchronized (t.class) {
                            if (b.WD >= n2) {
                                break;
                            }
                        }
                        array2[0] = b.WE;
                        array2[1] = array;
                        for (int i = (n << 1) - 1; i >= n3; --i) {
                            array2[i] = null;
                        }
                        b.WE = array2;
                        ++b.WD;
                        continue;
                    }
                }
            }
        }
        else {
            while (true) {
                final Class<t> clazz2 = t.class;
                while (true) {
                    synchronized (t.class) {
                        if (b.WG >= n2) {
                            break;
                        }
                    }
                    array2[0] = b.WF;
                    array2[1] = array;
                    for (int j = (n << 1) - 1; j >= n3; --j) {
                        array2[j] = null;
                    }
                    b.WF = array2;
                    ++b.WG;
                    continue;
                }
            }
        }
    }
    
    int ahT(final Object o) {
        int i = 1;
        final int n = this.mSize * 2;
        final Object[] wi = this.WI;
        if (o != null) {
            while (i < n) {
                if (o.equals(wi[i])) {
                    return i >> 1;
                }
                i += 2;
            }
        }
        else {
            while (i < n) {
                if (wi[i] == null) {
                    return i >> 1;
                }
                i += 2;
            }
        }
        return -1;
    }
    
    public Object ahU(final int n) {
        int n2 = 8;
        final Object o = this.WI[(n << 1) + 1];
        final int mSize = this.mSize;
        int mSize2;
        if (mSize > 1) {
            final int n3 = mSize - 1;
            if (this.WH.length > n2 && this.mSize < this.WH.length / 3) {
                if (mSize > n2) {
                    n2 = (mSize >> 1) + mSize;
                }
                final int[] wh = this.WH;
                final Object[] wi = this.WI;
                this.ahX(n2);
                if (mSize != this.mSize) {
                    throw new ConcurrentModificationException();
                }
                if (n > 0) {
                    System.arraycopy(wh, 0, this.WH, 0, n);
                    System.arraycopy(wi, 0, this.WI, 0, n << 1);
                }
                if (n < n3) {
                    System.arraycopy(wh, n + 1, this.WH, n, n3 - n);
                    System.arraycopy(wi, n + 1 << 1, this.WI, n << 1, n3 - n << 1);
                }
                mSize2 = n3;
            }
            else {
                if (n < n3) {
                    System.arraycopy(this.WH, n + 1, this.WH, n, n3 - n);
                    System.arraycopy(this.WI, n + 1 << 1, this.WI, n << 1, n3 - n << 1);
                }
                this.WI[n3 << 1] = null;
                this.WI[(n3 << 1) + 1] = null;
                mSize2 = n3;
            }
        }
        else {
            ahZ(this.WH, this.WI, mSize);
            this.WH = s.Xz;
            this.WI = s.XB;
            mSize2 = 0;
        }
        if (mSize == this.mSize) {
            this.mSize = mSize2;
            return o;
        }
        throw new ConcurrentModificationException();
    }
    
    public void ahW(final b b) {
        int i = 0;
        final int mSize = b.mSize;
        this.aid(this.mSize + mSize);
        if (this.mSize != 0) {
            while (i < mSize) {
                this.put(b.aib(i), b.aia(i));
                ++i;
            }
        }
        else if (mSize > 0) {
            System.arraycopy(b.WH, 0, this.WH, 0, mSize);
            System.arraycopy(b.WI, 0, this.WI, 0, mSize << 1);
            this.mSize = mSize;
        }
    }
    
    int ahY() {
        final int mSize = this.mSize;
        if (mSize == 0) {
            return -1;
        }
        final int ahV = ahV(this.WH, mSize, 0);
        if (ahV < 0) {
            return ahV;
        }
        if (this.WI[ahV << 1] != null) {
            int n;
            for (n = ahV + 1; n < mSize && this.WH[n] == 0; ++n) {
                if (this.WI[n << 1] == null) {
                    return n;
                }
            }
            for (int n2 = ahV - 1; n2 >= 0 && this.WH[n2] == 0; --n2) {
                if (this.WI[n2 << 1] == null) {
                    return n2;
                }
            }
            return ~n;
        }
        return ahV;
    }
    
    public Object aia(final int n) {
        return this.WI[(n << 1) + 1];
    }
    
    public Object aib(final int n) {
        return this.WI[n << 1];
    }
    
    int aic(final Object o, final int n) {
        final int mSize = this.mSize;
        if (mSize == 0) {
            return -1;
        }
        final int ahV = ahV(this.WH, mSize, n);
        if (ahV < 0) {
            return ahV;
        }
        if (!o.equals(this.WI[ahV << 1])) {
            int n2;
            for (n2 = ahV + 1; n2 < mSize && this.WH[n2] == n; ++n2) {
                if (o.equals(this.WI[n2 << 1])) {
                    return n2;
                }
            }
            for (int n3 = ahV - 1; n3 >= 0 && this.WH[n3] == n; --n3) {
                if (o.equals(this.WI[n3 << 1])) {
                    return n3;
                }
            }
            return ~n2;
        }
        return ahV;
    }
    
    public void aid(final int n) {
        final int mSize = this.mSize;
        if (this.WH.length < n) {
            final int[] wh = this.WH;
            final Object[] wi = this.WI;
            this.ahX(n);
            if (this.mSize > 0) {
                System.arraycopy(wh, 0, this.WH, 0, mSize);
                System.arraycopy(wi, 0, this.WI, 0, mSize << 1);
            }
            ahZ(wh, wi, mSize);
        }
        if (this.mSize == mSize) {
            return;
        }
        throw new ConcurrentModificationException();
    }
    
    public int aie(final Object o) {
        int n;
        if (o != null) {
            n = this.aic(o, o.hashCode());
        }
        else {
            n = this.ahY();
        }
        return n;
    }
    
    public Object aif(final int n, final Object o) {
        final int n2 = (n << 1) + 1;
        final Object o2 = this.WI[n2];
        this.WI[n2] = o;
        return o2;
    }
    
    public void clear() {
        if (this.mSize > 0) {
            final int[] wh = this.WH;
            final Object[] wi = this.WI;
            final int mSize = this.mSize;
            this.WH = s.Xz;
            this.WI = s.XB;
            this.mSize = 0;
            ahZ(wh, wi, mSize);
        }
        if (this.mSize <= 0) {
            return;
        }
        throw new ConcurrentModificationException();
    }
    
    public boolean containsKey(final Object o) {
        boolean b = false;
        if (this.aie(o) >= 0) {
            b = true;
        }
        return b;
    }
    
    public boolean containsValue(final Object o) {
        boolean b = false;
        if (this.ahT(o) >= 0) {
            b = true;
        }
        return b;
    }
    
    public boolean equals(final Object o) {
        final boolean b = true;
        if (this == o) {
            return b;
        }
        if (!(o instanceof b)) {
            if (!(o instanceof Map)) {
                return false;
            }
        }
        else {
            final b b2 = (b)o;
            if (this.size() != b2.size()) {
                return false;
            }
            int i = 0;
            try {
                while (i < this.mSize) {
                    final Object aib = this.aib(i);
                    final Object aia = this.aia(i);
                    final Object value = b2.get(aib);
                    if (aia != null) {
                        if (!aia.equals(value)) {
                            return false;
                        }
                    }
                    else if (value != null || !b2.containsKey(aib)) {
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
        final Map map = (Map)o;
        if (this.size() != map.size()) {
            return false;
        }
        int j = 0;
        try {
            while (j < this.mSize) {
                final Object aib2 = this.aib(j);
                final Object aia2 = this.aia(j);
                final Object value2 = map.get(aib2);
                if (aia2 != null) {
                    if (!aia2.equals(value2)) {
                        return false;
                    }
                }
                else if (value2 != null || !map.containsKey(aib2)) {
                    return false;
                }
                ++j;
            }
            return b;
        }
        catch (NullPointerException ex3) {
            return false;
        }
        catch (ClassCastException ex4) {
            return false;
        }
    }
    
    public Object get(final Object o) {
        final int aie = this.aie(o);
        Object o2;
        if (aie < 0) {
            o2 = null;
        }
        else {
            o2 = this.WI[(aie << 1) + 1];
        }
        return o2;
    }
    
    public int hashCode() {
        final int[] wh = this.WH;
        final Object[] wi = this.WI;
        final int n = 1;
        final int mSize = this.mSize;
        int n2 = n;
        int i = 0;
        int n3 = 0;
        while (i < mSize) {
            final Object o = wi[n2];
            final int n4 = wh[i];
            int hashCode;
            if (o != null) {
                hashCode = o.hashCode();
            }
            else {
                hashCode = 0;
            }
            n3 += (hashCode ^ n4);
            ++i;
            n2 += 2;
        }
        return n3;
    }
    
    public boolean isEmpty() {
        boolean b = false;
        if (this.mSize <= 0) {
            b = true;
        }
        return b;
    }
    
    public Object put(final Object o, final Object o2) {
        final int n = 8;
        int n2 = 4;
        final int mSize = this.mSize;
        int hashCode;
        int n3;
        if (o != null) {
            hashCode = o.hashCode();
            n3 = this.aic(o, hashCode);
        }
        else {
            n3 = this.ahY();
            hashCode = 0;
        }
        if (n3 >= 0) {
            final int n4 = (n3 << 1) + 1;
            final Object o3 = this.WI[n4];
            this.WI[n4] = o2;
            return o3;
        }
        final int n5 = ~n3;
        if (mSize >= this.WH.length) {
            if (mSize < n) {
                if (mSize >= n2) {
                    n2 = n;
                }
            }
            else {
                n2 = (mSize >> 1) + mSize;
            }
            final int[] wh = this.WH;
            final Object[] wi = this.WI;
            this.ahX(n2);
            if (mSize != this.mSize) {
                throw new ConcurrentModificationException();
            }
            if (this.WH.length > 0) {
                System.arraycopy(wh, 0, this.WH, 0, wh.length);
                System.arraycopy(wi, 0, this.WI, 0, wi.length);
            }
            ahZ(wh, wi, mSize);
        }
        if (n5 < mSize) {
            System.arraycopy(this.WH, n5, this.WH, n5 + 1, mSize - n5);
            System.arraycopy(this.WI, n5 << 1, this.WI, n5 + 1 << 1, this.mSize - n5 << 1);
        }
        if (mSize == this.mSize && n5 < this.WH.length) {
            this.WH[n5] = hashCode;
            this.WI[n5 << 1] = o;
            this.WI[(n5 << 1) + 1] = o2;
            ++this.mSize;
            return null;
        }
        throw new ConcurrentModificationException();
    }
    
    public Object remove(final Object o) {
        final int aie = this.aie(o);
        if (aie < 0) {
            return null;
        }
        return this.ahU(aie);
    }
    
    public int size() {
        return this.mSize;
    }
    
    public String toString() {
        int i = 0;
        if (!this.isEmpty()) {
            final StringBuilder sb = new StringBuilder(this.mSize * 28);
            sb.append('{');
            while (i < this.mSize) {
                if (i > 0) {
                    sb.append(", ");
                }
                final Object aib = this.aib(i);
                if (aib == this) {
                    sb.append("(this Map)");
                }
                else {
                    sb.append(aib);
                }
                sb.append('=');
                final Object aia = this.aia(i);
                if (aia == this) {
                    sb.append("(this Map)");
                }
                else {
                    sb.append(aia);
                }
                ++i;
            }
            sb.append('}');
            return sb.toString();
        }
        return "{}";
    }
}

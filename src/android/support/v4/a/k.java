// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

import java.util.Map;
import java.util.ConcurrentModificationException;

public class k
{
    static int VA;
    static int Vx;
    static Object[] Vy;
    static Object[] Vz;
    int[] VB;
    Object[] VC;
    int mSize;
    
    public k() {
        this.VB = s.VQ;
        this.VC = s.VS;
        this.mSize = 0;
    }
    
    public k(final int n) {
        if (n != 0) {
            this.ahf(n);
        }
        else {
            this.VB = s.VQ;
            this.VC = s.VS;
        }
        this.mSize = 0;
    }
    
    private static int ahd(final int[] array, final int n, final int n2) {
        try {
            return s.ahS(array, n, n2);
        }
        catch (ArrayIndexOutOfBoundsException ex) {
            throw new ConcurrentModificationException();
        }
    }
    
    private void ahf(final int n) {
        Label_0015: {
            if (n == 8) {
                final Class<t> clazz = t.class;
                synchronized (t.class) {
                    if (k.Vz == null) {
                        break Label_0015;
                    }
                }
                final Object[] vz = k.Vz;
                this.VC = vz;
                k.Vz = (Object[])vz[0];
                this.VB = (int[])vz[1];
                vz[0] = (vz[1] = null);
                --k.VA;
                // monitorexit(clazz)
                return;
            }
            if (n == 4) {
                final Class<t> clazz2 = t.class;
                synchronized (t.class) {
                    if (k.Vy == null) {
                        break Label_0015;
                    }
                }
                final Object[] vy = k.Vy;
                this.VC = vy;
                k.Vy = (Object[])vy[0];
                this.VB = (int[])vy[1];
                vy[0] = (vy[1] = null);
                --k.Vx;
                // monitorexit(clazz2)
                return;
            }
        }
        this.VB = new int[n];
        this.VC = new Object[n << 1];
    }
    
    private static void ahh(final int[] array, final Object[] array2, final int n) {
        final int n2 = 10;
        final int n3 = 2;
        if (array.length != 8) {
            if (array.length == 4) {
                while (true) {
                    final Class<t> clazz = t.class;
                    while (true) {
                        synchronized (t.class) {
                            if (k.Vx >= n2) {
                                break;
                            }
                        }
                        array2[0] = k.Vy;
                        array2[1] = array;
                        for (int i = (n << 1) - 1; i >= n3; --i) {
                            array2[i] = null;
                        }
                        k.Vy = array2;
                        ++k.Vx;
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
                        if (k.VA >= n2) {
                            break;
                        }
                    }
                    array2[0] = k.Vz;
                    array2[1] = array;
                    for (int j = (n << 1) - 1; j >= n3; --j) {
                        array2[j] = null;
                    }
                    k.Vz = array2;
                    ++k.VA;
                    continue;
                }
            }
        }
    }
    
    int ahb(final Object o) {
        int i = 1;
        final int n = this.mSize * 2;
        final Object[] vc = this.VC;
        if (o != null) {
            while (i < n) {
                if (o.equals(vc[i])) {
                    return i >> 1;
                }
                i += 2;
            }
        }
        else {
            while (i < n) {
                if (vc[i] == null) {
                    return i >> 1;
                }
                i += 2;
            }
        }
        return -1;
    }
    
    public Object ahc(final int n) {
        int n2 = 8;
        final Object o = this.VC[(n << 1) + 1];
        final int mSize = this.mSize;
        int mSize2;
        if (mSize > 1) {
            final int n3 = mSize - 1;
            if (this.VB.length > n2 && this.mSize < this.VB.length / 3) {
                if (mSize > n2) {
                    n2 = (mSize >> 1) + mSize;
                }
                final int[] vb = this.VB;
                final Object[] vc = this.VC;
                this.ahf(n2);
                if (mSize != this.mSize) {
                    throw new ConcurrentModificationException();
                }
                if (n > 0) {
                    System.arraycopy(vb, 0, this.VB, 0, n);
                    System.arraycopy(vc, 0, this.VC, 0, n << 1);
                }
                if (n < n3) {
                    System.arraycopy(vb, n + 1, this.VB, n, n3 - n);
                    System.arraycopy(vc, n + 1 << 1, this.VC, n << 1, n3 - n << 1);
                }
                mSize2 = n3;
            }
            else {
                if (n < n3) {
                    System.arraycopy(this.VB, n + 1, this.VB, n, n3 - n);
                    System.arraycopy(this.VC, n + 1 << 1, this.VC, n << 1, n3 - n << 1);
                }
                this.VC[n3 << 1] = null;
                this.VC[(n3 << 1) + 1] = null;
                mSize2 = n3;
            }
        }
        else {
            ahh(this.VB, this.VC, mSize);
            this.VB = s.VQ;
            this.VC = s.VS;
            mSize2 = 0;
        }
        if (mSize == this.mSize) {
            this.mSize = mSize2;
            return o;
        }
        throw new ConcurrentModificationException();
    }
    
    public void ahe(final k k) {
        int i = 0;
        final int mSize = k.mSize;
        this.ahl(this.mSize + mSize);
        if (this.mSize != 0) {
            while (i < mSize) {
                this.put(k.ahj(i), k.ahi(i));
                ++i;
            }
        }
        else if (mSize > 0) {
            System.arraycopy(k.VB, 0, this.VB, 0, mSize);
            System.arraycopy(k.VC, 0, this.VC, 0, mSize << 1);
            this.mSize = mSize;
        }
    }
    
    int ahg() {
        final int mSize = this.mSize;
        if (mSize == 0) {
            return -1;
        }
        final int ahd = ahd(this.VB, mSize, 0);
        if (ahd < 0) {
            return ahd;
        }
        if (this.VC[ahd << 1] != null) {
            int n;
            for (n = ahd + 1; n < mSize && this.VB[n] == 0; ++n) {
                if (this.VC[n << 1] == null) {
                    return n;
                }
            }
            for (int n2 = ahd - 1; n2 >= 0 && this.VB[n2] == 0; --n2) {
                if (this.VC[n2 << 1] == null) {
                    return n2;
                }
            }
            return ~n;
        }
        return ahd;
    }
    
    public Object ahi(final int n) {
        return this.VC[(n << 1) + 1];
    }
    
    public Object ahj(final int n) {
        return this.VC[n << 1];
    }
    
    int ahk(final Object o, final int n) {
        final int mSize = this.mSize;
        if (mSize == 0) {
            return -1;
        }
        final int ahd = ahd(this.VB, mSize, n);
        if (ahd < 0) {
            return ahd;
        }
        if (!o.equals(this.VC[ahd << 1])) {
            int n2;
            for (n2 = ahd + 1; n2 < mSize && this.VB[n2] == n; ++n2) {
                if (o.equals(this.VC[n2 << 1])) {
                    return n2;
                }
            }
            for (int n3 = ahd - 1; n3 >= 0 && this.VB[n3] == n; --n3) {
                if (o.equals(this.VC[n3 << 1])) {
                    return n3;
                }
            }
            return ~n2;
        }
        return ahd;
    }
    
    public void ahl(final int n) {
        final int mSize = this.mSize;
        if (this.VB.length < n) {
            final int[] vb = this.VB;
            final Object[] vc = this.VC;
            this.ahf(n);
            if (this.mSize > 0) {
                System.arraycopy(vb, 0, this.VB, 0, mSize);
                System.arraycopy(vc, 0, this.VC, 0, mSize << 1);
            }
            ahh(vb, vc, mSize);
        }
        if (this.mSize == mSize) {
            return;
        }
        throw new ConcurrentModificationException();
    }
    
    public int ahm(final Object o) {
        int n;
        if (o != null) {
            n = this.ahk(o, o.hashCode());
        }
        else {
            n = this.ahg();
        }
        return n;
    }
    
    public Object ahn(final int n, final Object o) {
        final int n2 = (n << 1) + 1;
        final Object o2 = this.VC[n2];
        this.VC[n2] = o;
        return o2;
    }
    
    public void clear() {
        if (this.mSize > 0) {
            final int[] vb = this.VB;
            final Object[] vc = this.VC;
            final int mSize = this.mSize;
            this.VB = s.VQ;
            this.VC = s.VS;
            this.mSize = 0;
            ahh(vb, vc, mSize);
        }
        if (this.mSize <= 0) {
            return;
        }
        throw new ConcurrentModificationException();
    }
    
    public boolean containsKey(final Object o) {
        boolean b = false;
        if (this.ahm(o) >= 0) {
            b = true;
        }
        return b;
    }
    
    public boolean containsValue(final Object o) {
        boolean b = false;
        if (this.ahb(o) >= 0) {
            b = true;
        }
        return b;
    }
    
    public boolean equals(final Object o) {
        final boolean b = true;
        if (this == o) {
            return b;
        }
        if (!(o instanceof k)) {
            if (!(o instanceof Map)) {
                return false;
            }
        }
        else {
            final k k = (k)o;
            if (this.size() != k.size()) {
                return false;
            }
            int i = 0;
            try {
                while (i < this.mSize) {
                    final Object ahj = this.ahj(i);
                    final Object ahi = this.ahi(i);
                    final Object value = k.get(ahj);
                    if (ahi != null) {
                        if (!ahi.equals(value)) {
                            return false;
                        }
                    }
                    else if (value != null || !k.containsKey(ahj)) {
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
                final Object ahj2 = this.ahj(j);
                final Object ahi2 = this.ahi(j);
                final Object value2 = map.get(ahj2);
                if (ahi2 != null) {
                    if (!ahi2.equals(value2)) {
                        return false;
                    }
                }
                else if (value2 != null || !map.containsKey(ahj2)) {
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
        final int ahm = this.ahm(o);
        Object o2;
        if (ahm < 0) {
            o2 = null;
        }
        else {
            o2 = this.VC[(ahm << 1) + 1];
        }
        return o2;
    }
    
    public int hashCode() {
        final int[] vb = this.VB;
        final Object[] vc = this.VC;
        final int n = 1;
        final int mSize = this.mSize;
        int n2 = n;
        int i = 0;
        int n3 = 0;
        while (i < mSize) {
            final Object o = vc[n2];
            final int n4 = vb[i];
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
            n3 = this.ahk(o, hashCode);
        }
        else {
            n3 = this.ahg();
            hashCode = 0;
        }
        if (n3 >= 0) {
            final int n4 = (n3 << 1) + 1;
            final Object o3 = this.VC[n4];
            this.VC[n4] = o2;
            return o3;
        }
        final int n5 = ~n3;
        if (mSize >= this.VB.length) {
            if (mSize < n) {
                if (mSize >= n2) {
                    n2 = n;
                }
            }
            else {
                n2 = (mSize >> 1) + mSize;
            }
            final int[] vb = this.VB;
            final Object[] vc = this.VC;
            this.ahf(n2);
            if (mSize != this.mSize) {
                throw new ConcurrentModificationException();
            }
            if (this.VB.length > 0) {
                System.arraycopy(vb, 0, this.VB, 0, vb.length);
                System.arraycopy(vc, 0, this.VC, 0, vc.length);
            }
            ahh(vb, vc, mSize);
        }
        if (n5 < mSize) {
            System.arraycopy(this.VB, n5, this.VB, n5 + 1, mSize - n5);
            System.arraycopy(this.VC, n5 << 1, this.VC, n5 + 1 << 1, this.mSize - n5 << 1);
        }
        if (mSize == this.mSize && n5 < this.VB.length) {
            this.VB[n5] = hashCode;
            this.VC[n5 << 1] = o;
            this.VC[(n5 << 1) + 1] = o2;
            ++this.mSize;
            return null;
        }
        throw new ConcurrentModificationException();
    }
    
    public Object remove(final Object o) {
        final int ahm = this.ahm(o);
        if (ahm < 0) {
            return null;
        }
        return this.ahc(ahm);
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
                final Object ahj = this.ahj(i);
                if (ahj == this) {
                    sb.append("(this Map)");
                }
                else {
                    sb.append(ahj);
                }
                sb.append('=');
                final Object ahi = this.ahi(i);
                if (ahi == this) {
                    sb.append("(this Map)");
                }
                else {
                    sb.append(ahi);
                }
                ++i;
            }
            sb.append('}');
            return sb.toString();
        }
        return "{}";
    }
}

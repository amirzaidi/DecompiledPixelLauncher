// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

import java.util.Locale;
import java.util.Map;
import java.util.LinkedHashMap;

public class h
{
    private int Xd;
    private final LinkedHashMap Xe;
    private int Xf;
    private int Xg;
    private int Xh;
    private int Xi;
    private int Xj;
    
    public h(final int xf) {
        if (xf > 0) {
            this.Xf = xf;
            this.Xe = new LinkedHashMap(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }
    
    private int aiu(final Object o, final Object o2) {
        final int pr = this.pr(o, o2);
        if (pr >= 0) {
            return pr;
        }
        throw new IllegalStateException("Negative size: " + o + "=" + o2);
    }
    
    public final void ait() {
        this.aiv(-1);
    }
    
    public void aiv(final int n) {
        while (true) {
            while (true) {
                synchronized (this) {
                    if (this.Xd < 0) {
                        throw new IllegalStateException(this.getClass().getName() + ".sizeOf() is reporting inconsistent results!");
                    }
                }
                if (this.Xe.isEmpty() && this.Xd != 0) {
                    continue;
                }
                break;
            }
            if (this.Xd <= n || this.Xe.isEmpty()) {
                break;
            }
            final Map.Entry<Object, V> entry = this.Xe.entrySet().iterator().next();
            final Object key = entry.getKey();
            final Object value = entry.getValue();
            this.Xe.remove(key);
            this.Xd -= this.aiu(key, value);
            ++this.Xg;
            // monitorexit(this)
            this.pq(true, key, value, null);
        }
    }
    // monitorexit(this)
    
    protected void pq(final boolean b, final Object o, final Object o2, final Object o3) {
    }
    
    protected int pr(final Object o, final Object o2) {
        return 1;
    }
    
    public final Object put(final Object o, final Object o2) {
        if (o == null || o2 == null) {
            throw new NullPointerException("key == null || value == null");
        }
        while (true) {
            while (true) {
                final Object put;
                synchronized (this) {
                    ++this.Xj;
                    this.Xd += this.aiu(o, o2);
                    put = this.Xe.put(o, o2);
                    if (put != null) {
                        this.Xd -= this.aiu(o, put);
                    }
                    // monitorexit(this)
                    if (put == null) {
                        this.aiv(this.Xf);
                        return put;
                    }
                }
                this.pq(false, o, put, o2);
                continue;
            }
        }
    }
    
    public final String toString() {
        int n = 0;
        synchronized (this) {
            final int n2 = this.Xh + this.Xi;
            if (n2 != 0) {
                n = this.Xh * 100 / n2;
            }
            final Locale us = Locale.US;
            final Object[] array = new Object[4];
            final int xf = this.Xf;
            final String s = "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]";
            array[0] = xf;
            array[1] = this.Xh;
            array[2] = this.Xi;
            array[3] = n;
            return String.format(us, s, array);
        }
    }
}

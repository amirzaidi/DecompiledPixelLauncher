// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

import java.util.Map;
import java.util.LinkedHashMap;

public class h
{
    private int Vq;
    private final LinkedHashMap Vr;
    private int Vs;
    private int Vt;
    private int Vu;
    private int Vv;
    private int Vw;
    
    public h(final int vs) {
        if (vs > 0) {
            this.Vs = vs;
            this.Vr = new LinkedHashMap(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }
    
    private int agY(final Object o, final Object o2) {
        final int md = this.mD(o, o2);
        if (md >= 0) {
            return md;
        }
        throw new IllegalStateException("Negative size: " + o + "=" + o2);
    }
    
    public final void agX() {
        this.agZ(-1);
    }
    
    public void agZ(final int n) {
        while (true) {
            while (true) {
                synchronized (this) {
                    if (this.Vq < 0) {
                        throw new IllegalStateException(this.getClass().getName() + ".sizeOf() is reporting inconsistent results!");
                    }
                }
                if (this.Vr.isEmpty() && this.Vq != 0) {
                    continue;
                }
                break;
            }
            if (this.Vq <= n || this.Vr.isEmpty()) {
                break;
            }
            final Map.Entry<Object, V> entry = this.Vr.entrySet().iterator().next();
            final Object key = entry.getKey();
            final Object value = entry.getValue();
            this.Vr.remove(key);
            this.Vq -= this.agY(key, value);
            ++this.Vt;
            // monitorexit(this)
            this.mC(true, key, value, null);
        }
    }
    // monitorexit(this)
    
    protected void mC(final boolean b, final Object o, final Object o2, final Object o3) {
    }
    
    protected int mD(final Object o, final Object o2) {
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
                    ++this.Vw;
                    this.Vq += this.agY(o, o2);
                    put = this.Vr.put(o, o2);
                    if (put != null) {
                        this.Vq -= this.agY(o, put);
                    }
                    // monitorexit(this)
                    if (put == null) {
                        this.agZ(this.Vs);
                        return put;
                    }
                }
                this.mC(false, o, put, o2);
                continue;
            }
        }
    }
    
    public final String toString() {
        int n = 0;
        synchronized (this) {
            final int n2 = this.Vu + this.Vv;
            if (n2 != 0) {
                n = this.Vu * 100 / n2;
            }
            final Object[] array = new Object[4];
            final int vs = this.Vs;
            final String s = "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]";
            array[0] = vs;
            array[1] = this.Vu;
            array[2] = this.Vv;
            array[3] = n;
            return String.format(s, array);
        }
    }
}

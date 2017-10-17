// 
// Decompiled by Procyon v0.5.30
// 

package android.support.a;

import android.os.SystemClock;
import android.view.Choreographer$FrameCallback;
import android.support.v4.a.b;
import java.util.ArrayList;

class k
{
    public static final ThreadLocal ahu;
    private final ArrayList aho;
    private boolean ahp;
    private final b ahq;
    private l ahr;
    private long ahs;
    private final Choreographer$FrameCallback aht;
    
    static {
        ahu = new ThreadLocal();
    }
    
    k() {
        this.ahq = new b();
        this.aho = new ArrayList();
        this.ahs = 0L;
        this.aht = (Choreographer$FrameCallback)new n(this);
        this.ahp = false;
    }
    
    private boolean auA(final f f, final long n) {
        final boolean b = true;
        final Long n2 = (Long)this.ahq.get(f);
        if (n2 == null) {
            return b;
        }
        if (n2 < n || !b) {
            this.ahq.remove(f);
            return b;
        }
        return false;
    }
    
    private l auH() {
        if (this.ahr == null) {
            this.ahr = new m(null);
        }
        return this.ahr;
    }
    
    private void auI() {
        if (this.ahp) {
            int size = this.aho.size();
            while (true) {
                --size;
                if (size < 0) {
                    break;
                }
                if (this.aho.get(size) != null) {
                    continue;
                }
                this.aho.remove(size);
            }
            this.ahp = false;
        }
    }
    
    private void auJ(final long n) {
        final long uptimeMillis = SystemClock.uptimeMillis();
        for (int i = 0; i < this.aho.size(); ++i) {
            final f f = this.aho.get(i);
            if (f != null && this.auA(f, uptimeMillis)) {
                f.aul(n);
            }
        }
        this.auI();
    }
    
    public static k getInstance() {
        if (k.ahu.get() == null) {
            k.ahu.set(new k());
        }
        return k.ahu.get();
    }
    
    public void auD(final f f) {
        this.ahq.remove(f);
        final int index = this.aho.indexOf(f);
        if (index >= 0) {
            this.aho.set(index, null);
            this.ahp = true;
        }
    }
    
    public void auE(final f f, final long n) {
        boolean b = false;
        if (this.aho.size() == 0) {
            this.auH().auL(this.aht);
        }
        if (!this.aho.contains(f)) {
            this.aho.add(f);
        }
        if (n <= 0L) {
            b = true;
        }
        if (!b) {
            this.ahq.put(f, SystemClock.uptimeMillis() + n);
        }
    }
}

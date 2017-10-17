// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.a;

import java.util.Collections;
import android.graphics.Bitmap;
import android.support.v4.a.t;
import android.util.SparseBooleanArray;
import java.util.Map;
import java.util.List;

public final class a
{
    static final b SU;
    private final List SS;
    private final Map ST;
    private final d SV;
    private final List SW;
    private final SparseBooleanArray SX;
    
    static {
        SU = new g();
    }
    
    a(final List ss, final List sw) {
        this.SS = ss;
        this.SW = sw;
        this.SX = new SparseBooleanArray();
        this.ST = new t();
        this.SV = this.acw();
    }
    
    private d acr(final e e) {
        final d act = this.act(e);
        if (act != null && e.ada()) {
            this.SX.append(act.acI(), true);
        }
        return act;
    }
    
    public static c acs(final Bitmap bitmap) {
        return new c(bitmap);
    }
    
    private d act(final e e) {
        d d = null;
        float n = 0.0f;
        d d2;
        float n2;
        for (int size = this.SS.size(), i = 0; i < size; ++i, n = n2, d = d2) {
            d2 = this.SS.get(i);
            if (!this.acu(d2, e)) {
                d2 = d;
                n2 = n;
            }
            else {
                final float acx = this.acx(d2, e);
                if (d != null && acx <= n) {
                    d2 = d;
                    n2 = n;
                }
                else {
                    n2 = acx;
                }
            }
        }
        return d;
    }
    
    private boolean acu(final d d, final e e) {
        final int n = 2;
        int n2 = 1;
        final float[] acE = d.acE();
        if (acE[n2] < e.acL() || acE[n2] > e.acV() || acE[n] < e.acM() || acE[n] > e.acN() || this.SX.get(d.acI())) {
            n2 = 0;
        }
        return n2 != 0;
    }
    
    private d acw() {
        int n = -1 << -1;
        d d = null;
        d d2;
        int acG;
        for (int size = this.SS.size(), i = 0; i < size; ++i, n = acG, d = d2) {
            d2 = this.SS.get(i);
            if (d2.acG() <= n) {
                d2 = d;
                acG = n;
            }
            else {
                acG = d2.acG();
            }
        }
        return d;
    }
    
    private float acx(final d d, final e e) {
        final int n = 1;
        final float n2 = 1.0f;
        float n3 = 0.0f;
        final float[] acE = d.acE();
        int acG;
        if (this.SV == null) {
            acG = n;
        }
        else {
            acG = this.SV.acG();
        }
        float n4;
        if (e.acT() > 0.0f) {
            n4 = (n2 - Math.abs(acE[n] - e.acQ())) * e.acT();
        }
        else {
            n4 = 0.0f;
        }
        float n5;
        if (e.acR() > 0.0f) {
            n5 = (n2 - Math.abs(acE[2] - e.acX())) * e.acR();
        }
        else {
            n5 = 0.0f;
        }
        if (e.acY() > 0.0f) {
            n3 = e.acY() * (d.acG() / acG);
        }
        return n4 + n5 + n3;
    }
    
    public List acq() {
        return Collections.unmodifiableList((List<?>)this.SS);
    }
    
    void acv() {
        for (int size = this.SW.size(), i = 0; i < size; ++i) {
            final e e = this.SW.get(i);
            e.acP();
            this.ST.put(e, this.acr(e));
        }
        this.SX.clear();
    }
}

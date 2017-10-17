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
    static final b UD;
    private final List UB;
    private final Map UC;
    private final d UE;
    private final List UF;
    private final SparseBooleanArray UG;
    
    static {
        UD = new g();
    }
    
    a(final List ub, final List uf) {
        this.UB = ub;
        this.UF = uf;
        this.UG = new SparseBooleanArray();
        this.UC = new t();
        this.UE = this.adA();
    }
    
    private d adA() {
        int n = -1 << -1;
        d d = null;
        d d2;
        int adK;
        for (int size = this.UB.size(), i = 0; i < size; ++i, n = adK, d = d2) {
            d2 = this.UB.get(i);
            if (d2.adK() <= n) {
                d2 = d;
                adK = n;
            }
            else {
                adK = d2.adK();
            }
        }
        return d;
    }
    
    private float adB(final d d, final e e) {
        final int n = 1;
        final float n2 = 1.0f;
        float n3 = 0.0f;
        final float[] adI = d.adI();
        int adK;
        if (this.UE == null) {
            adK = n;
        }
        else {
            adK = this.UE.adK();
        }
        float n4;
        if (e.adX() > 0.0f) {
            n4 = (n2 - Math.abs(adI[n] - e.adU())) * e.adX();
        }
        else {
            n4 = 0.0f;
        }
        float n5;
        if (e.adV() > 0.0f) {
            n5 = (n2 - Math.abs(adI[2] - e.aeb())) * e.adV();
        }
        else {
            n5 = 0.0f;
        }
        if (e.aec() > 0.0f) {
            n3 = e.aec() * (d.adK() / adK);
        }
        return n4 + n5 + n3;
    }
    
    private d ads(final e e) {
        final d adw = this.adw(e);
        if (adw != null && e.aee()) {
            this.UG.append(adw.adM(), true);
        }
        return adw;
    }
    
    public static c adu(final Bitmap bitmap) {
        return new c(bitmap);
    }
    
    private d adw(final e e) {
        d d = null;
        float n = 0.0f;
        d d2;
        float n2;
        for (int size = this.UB.size(), i = 0; i < size; ++i, n = n2, d = d2) {
            d2 = this.UB.get(i);
            if (!this.ady(d2, e)) {
                d2 = d;
                n2 = n;
            }
            else {
                final float adB = this.adB(d2, e);
                if (d != null && adB <= n) {
                    d2 = d;
                    n2 = n;
                }
                else {
                    n2 = adB;
                }
            }
        }
        return d;
    }
    
    private boolean ady(final d d, final e e) {
        final int n = 2;
        int n2 = 1;
        final float[] adI = d.adI();
        if (adI[n2] < e.adP() || adI[n2] > e.adZ() || adI[n] < e.adQ() || adI[n] > e.adR() || this.UG.get(d.adM())) {
            n2 = 0;
        }
        return n2 != 0;
    }
    
    public List adr() {
        return Collections.unmodifiableList((List<?>)this.UB);
    }
    
    public int adt(final int n) {
        return this.adv(e.Vg, n);
    }
    
    public int adv(final e e, int adM) {
        final d adx = this.adx(e);
        if (adx != null) {
            adM = adx.adM();
        }
        return adM;
    }
    
    public d adx(final e e) {
        return this.UC.get(e);
    }
    
    void adz() {
        for (int size = this.UF.size(), i = 0; i < size; ++i) {
            final e e = this.UF.get(i);
            e.adT();
            this.UC.put(e, this.ads(e));
        }
        this.UG.clear();
    }
}

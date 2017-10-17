// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.a;

import java.util.Arrays;

class f
{
    private int TA;
    private int TB;
    private int TC;
    private int TD;
    private int TE;
    private int TF;
    private int TG;
    final /* synthetic */ i TH;
    private int Ty;
    private int Tz;
    
    f(final i th, final int td, final int tz) {
        this.TH = th;
        this.TD = td;
        this.Tz = tz;
        this.adi();
    }
    
    final int adc() {
        final int adf = this.adf();
        final int[] mColors = this.TH.mColors;
        final int[] tl = this.TH.TL;
        i.adq(mColors, adf, this.TD, this.Tz);
        Arrays.sort(mColors, this.TD, this.Tz + 1);
        i.adq(mColors, adf, this.TD, this.Tz);
        final int n = this.TG / 2;
        int i = this.TD;
        int n2 = 0;
        while (i <= this.Tz) {
            n2 += tl[mColors[i]];
            if (n2 >= n) {
                return Math.min(this.Tz - 1, i);
            }
            ++i;
        }
        return this.TD;
    }
    
    final d add() {
        int n = 0;
        final int[] mColors = this.TH.mColors;
        final int[] tl = this.TH.TL;
        int i = this.TD;
        int n2 = 0;
        int n3 = 0;
        int n4 = 0;
        while (i <= this.Tz) {
            final int n5 = mColors[i];
            final int n6 = tl[n5];
            n += n6;
            n4 += android.support.v7.a.i.adt(n5) * n6;
            n3 += android.support.v7.a.i.ado(n5) * n6;
            n2 += android.support.v7.a.i.ady(n5) * n6;
            ++i;
        }
        return new d(android.support.v7.a.i.adx(Math.round(n4 / n), Math.round(n3 / n), Math.round(n2 / n)), n);
    }
    
    final f ade() {
        if (this.adj()) {
            final int adc = this.adc();
            final f f = new f(this.TH, adc + 1, this.Tz);
            this.Tz = adc;
            this.adi();
            return f;
        }
        throw new IllegalStateException("Can not split a box with only 1 color");
    }
    
    final int adf() {
        final int n = this.TB - this.TE;
        final int n2 = this.TC - this.TA;
        final int n3 = this.TF - this.Ty;
        if (n >= n2 && n >= n3) {
            return -3;
        }
        if (n2 >= n && n2 >= n3) {
            return -2;
        }
        return -1;
    }
    
    final int adg() {
        return (this.TB - this.TE + 1) * (this.TC - this.TA + 1) * (this.TF - this.Ty + 1);
    }
    
    final int adh() {
        return this.Tz + 1 - this.TD;
    }
    
    final void adi() {
        final int n = -1 >>> 1;
        int tb = -1 << -1;
        final int[] mColors = this.TH.mColors;
        final int[] tl = this.TH.TL;
        int tg = 0;
        int i = this.TD;
        int tf = tb;
        int te = n;
        int ta = n;
        int ty = n;
        int tc = tb;
        while (i <= this.Tz) {
            final int n2 = mColors[i];
            tg += tl[n2];
            final int adt = android.support.v7.a.i.adt(n2);
            final int ado = android.support.v7.a.i.ado(n2);
            final int ady = android.support.v7.a.i.ady(n2);
            if (adt > tb) {
                tb = adt;
            }
            if (adt < te) {
                te = adt;
            }
            if (ado > tc) {
                tc = ado;
            }
            if (ado < ta) {
                ta = ado;
            }
            if (ady > tf) {
                tf = ady;
            }
            if (ady < ty) {
                ty = ady;
            }
            ++i;
        }
        this.TE = te;
        this.TB = tb;
        this.TA = ta;
        this.TC = tc;
        this.Ty = ty;
        this.TF = tf;
        this.TG = tg;
    }
    
    final boolean adj() {
        int n = 1;
        if (this.adh() <= n) {
            n = 0;
        }
        return n != 0;
    }
}

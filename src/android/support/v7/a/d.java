// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.a;

import java.util.Arrays;
import android.support.v4.b.a;
import android.graphics.Color;

public final class d
{
    private final int Tf;
    private final int Tg;
    private final int Th;
    private int Ti;
    private final int Tj;
    private int Tk;
    private final int Tl;
    private float[] Tm;
    private boolean Tn;
    
    public d(final int th, final int tl) {
        this.Tf = Color.red(th);
        this.Tg = Color.green(th);
        this.Tj = Color.blue(th);
        this.Th = th;
        this.Tl = tl;
    }
    
    private void acF() {
        final float n = 4.5f;
        final float n2 = 3.0f;
        final boolean tn = true;
        final int n3 = -16777216;
        final int n4 = -1;
        if (!this.Tn) {
            final int arf = a.arf(n4, this.Th, n);
            final int arf2 = a.arf(n4, this.Th, n2);
            if (arf != n4 && arf2 != n4) {
                this.Tk = a.arc(n4, arf);
                this.Ti = a.arc(n4, arf2);
                this.Tn = tn;
                return;
            }
            final int arf3 = a.arf(n3, this.Th, n);
            final int arf4 = a.arf(n3, this.Th, n2);
            if (arf3 != n4 && arf4 != n4) {
                this.Tk = a.arc(n3, arf3);
                this.Ti = a.arc(n3, arf4);
                this.Tn = tn;
                return;
            }
            int tk;
            if (arf == n4) {
                tk = a.arc(n3, arf3);
            }
            else {
                tk = a.arc(n4, arf);
            }
            this.Tk = tk;
            int ti;
            if (arf2 == n4) {
                ti = a.arc(n3, arf4);
            }
            else {
                ti = a.arc(n4, arf2);
            }
            this.Ti = ti;
            this.Tn = tn;
        }
    }
    
    public float[] acE() {
        if (this.Tm == null) {
            this.Tm = new float[3];
        }
        a.aqQ(this.Tf, this.Tg, this.Tj, this.Tm);
        return this.Tm;
    }
    
    public int acG() {
        return this.Tl;
    }
    
    public int acH() {
        this.acF();
        return this.Ti;
    }
    
    public int acI() {
        return this.Th;
    }
    
    public int acJ() {
        this.acF();
        return this.Tk;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o != null && this.getClass() == o.getClass()) {
            final d d = (d)o;
            if (this.Tl != d.Tl || this.Th != d.Th) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return this.Th * 31 + this.Tl;
    }
    
    public String toString() {
        final char c = ']';
        return this.getClass().getSimpleName() + " [RGB: #" + Integer.toHexString(this.acI()) + c + " [HSL: " + Arrays.toString(this.acE()) + c + " [Population: " + this.Tl + c + " [Title Text: #" + Integer.toHexString(this.acH()) + c + " [Body Text: #" + Integer.toHexString(this.acJ()) + c;
    }
}

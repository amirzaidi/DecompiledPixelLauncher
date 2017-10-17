// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.a;

import java.util.Arrays;
import android.support.v4.b.a;
import android.graphics.Color;

public final class d
{
    private final int UO;
    private final int UP;
    private final int UQ;
    private int UR;
    private final int US;
    private int UT;
    private final int UU;
    private float[] UV;
    private boolean UW;
    
    public d(final int uq, final int uu) {
        this.UO = Color.red(uq);
        this.UP = Color.green(uq);
        this.US = Color.blue(uq);
        this.UQ = uq;
        this.UU = uu;
    }
    
    private void adJ() {
        final float n = 4.5f;
        final float n2 = 3.0f;
        final boolean uw = true;
        final int n3 = -16777216;
        final int n4 = -1;
        if (!this.UW) {
            final int ase = a.ase(n4, this.UQ, n);
            final int ase2 = a.ase(n4, this.UQ, n2);
            if (ase != n4 && ase2 != n4) {
                this.UT = a.asb(n4, ase);
                this.UR = a.asb(n4, ase2);
                this.UW = uw;
                return;
            }
            final int ase3 = a.ase(n3, this.UQ, n);
            final int ase4 = a.ase(n3, this.UQ, n2);
            if (ase3 != n4 && ase4 != n4) {
                this.UT = a.asb(n3, ase3);
                this.UR = a.asb(n3, ase4);
                this.UW = uw;
                return;
            }
            int ut;
            if (ase == n4) {
                ut = a.asb(n3, ase3);
            }
            else {
                ut = a.asb(n4, ase);
            }
            this.UT = ut;
            int ur;
            if (ase2 == n4) {
                ur = a.asb(n3, ase4);
            }
            else {
                ur = a.asb(n4, ase2);
            }
            this.UR = ur;
            this.UW = uw;
        }
    }
    
    public float[] adI() {
        if (this.UV == null) {
            this.UV = new float[3];
        }
        a.arO(this.UO, this.UP, this.US, this.UV);
        return this.UV;
    }
    
    public int adK() {
        return this.UU;
    }
    
    public int adL() {
        this.adJ();
        return this.UR;
    }
    
    public int adM() {
        return this.UQ;
    }
    
    public int adN() {
        this.adJ();
        return this.UT;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o != null && this.getClass() == o.getClass()) {
            final d d = (d)o;
            if (this.UU != d.UU || this.UQ != d.UQ) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return this.UQ * 31 + this.UU;
    }
    
    public String toString() {
        final char c = ']';
        return this.getClass().getSimpleName() + " [RGB: #" + Integer.toHexString(this.adM()) + c + " [HSL: " + Arrays.toString(this.adI()) + c + " [Population: " + this.UU + c + " [Title Text: #" + Integer.toHexString(this.adL()) + c + " [Body Text: #" + Integer.toHexString(this.adN()) + c;
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import android.os.Parcel;
import java.util.Locale;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class ParcelableGeofence extends AbstractSafeParcelable
{
    public static final n CREATOR;
    private final long CC;
    private final short CD;
    private final String CE;
    private final int CF;
    private final int CG;
    private final float CH;
    private final int CI;
    private final double CJ;
    private final double CK;
    private final int CL;
    
    static {
        CREATOR = new n();
    }
    
    public ParcelableGeofence(final int ci, final String ce, final int n, final short n2, final double cj, final double ck, final float ch, final long cc, final int cf, final int cg) {
        Go(ce);
        Gs(ch);
        Gj(cj, ck);
        final int gl = Gl(n);
        this.CI = ci;
        this.CD = n2;
        this.CE = ce;
        this.CJ = cj;
        this.CK = ck;
        this.CH = ch;
        this.CC = cc;
        this.CL = gl;
        this.CF = cf;
        this.CG = cg;
    }
    
    private static void Gj(final double n, final double n2) {
        int n3 = 1;
        int n4;
        if (n > 90.0) {
            n4 = n3;
        }
        else {
            n4 = 0;
        }
        if (n4 != 0 || n < -90.0) {
            throw new IllegalArgumentException(new StringBuilder(42).append("invalid latitude: ").append(n).toString());
        }
        if (n2 <= 180.0) {
            n3 = 0;
        }
        if (n3 != 0 || n2 < -180.0) {
            throw new IllegalArgumentException(new StringBuilder(43).append("invalid longitude: ").append(n2).toString());
        }
    }
    
    private static int Gl(final int n) {
        final int n2 = n & 0x7;
        if (n2 != 0) {
            return n2;
        }
        throw new IllegalArgumentException(new StringBuilder(46).append("No supported transition specified: ").append(n).toString());
    }
    
    private static void Go(final String s) {
        if (s != null && s.length() <= 100) {
            return;
        }
        final String value = String.valueOf(s);
        final int length = value.length();
        final String s2 = "requestId is null or too long: ";
        String concat;
        if (length == 0) {
            concat = new String(s2);
        }
        else {
            concat = s2.concat(value);
        }
        throw new IllegalArgumentException(concat);
    }
    
    private static String Gq(final int n) {
        switch (n) {
            default: {
                return null;
            }
            case 1: {
                return "CIRCLE";
            }
        }
    }
    
    private static void Gs(final float n) {
        if (n <= 0.0f) {
            throw new IllegalArgumentException(new StringBuilder(31).append("invalid radius: ").append(n).toString());
        }
    }
    
    public double Gi() {
        return this.CK;
    }
    
    public String Gk() {
        return this.CE;
    }
    
    public double Gm() {
        return this.CJ;
    }
    
    public short Gn() {
        return this.CD;
    }
    
    public int Gp() {
        return this.CL;
    }
    
    public int Gr() {
        return this.CF;
    }
    
    public long Gt() {
        return this.CC;
    }
    
    public int Gu() {
        return this.CG;
    }
    
    public int Gv() {
        return this.CI;
    }
    
    public boolean equals(final Object o) {
        final boolean b = true;
        if (this == o) {
            return b;
        }
        if (o == null) {
            return false;
        }
        if (o instanceof ParcelableGeofence) {
            final ParcelableGeofence parcelableGeofence = (ParcelableGeofence)o;
            return this.CH == parcelableGeofence.CH && this.CJ == parcelableGeofence.CJ && this.CK == parcelableGeofence.CK && this.CD == parcelableGeofence.CD && b;
        }
        return false;
    }
    
    public float getRadius() {
        return this.CH;
    }
    
    public int hashCode() {
        final int n = 32;
        final long doubleToLongBits = Double.doubleToLongBits(this.CJ);
        final int n2 = (int)(doubleToLongBits ^ doubleToLongBits >>> n) + 31;
        final long doubleToLongBits2 = Double.doubleToLongBits(this.CK);
        return (((n2 * 31 + (int)(doubleToLongBits2 ^ doubleToLongBits2 >>> n)) * 31 + Float.floatToIntBits(this.CH)) * 31 + this.CD) * 31 + this.CL;
    }
    
    public String toString() {
        return String.format(Locale.US, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", Gq(this.CD), this.CE, this.CL, this.CJ, this.CK, this.CH, this.CF / 1000, this.CG, this.CC);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final n creator = ParcelableGeofence.CREATOR;
        n.GC(this, parcel, n);
    }
}

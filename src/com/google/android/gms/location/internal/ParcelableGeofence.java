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
    private final long AX;
    private final short AY;
    private final String AZ;
    private final int Ba;
    private final int Bb;
    private final float Bc;
    private final int Bd;
    private final double Be;
    private final double Bf;
    private final int Bg;
    
    static {
        CREATOR = new n();
    }
    
    public ParcelableGeofence(final int bd, final String az, final int n, final short n2, final double be, final double bf, final float bc, final long ax, final int ba, final int bb) {
        Fv(az);
        Fz(bc);
        Fq(be, bf);
        final int fs = Fs(n);
        this.Bd = bd;
        this.AY = n2;
        this.AZ = az;
        this.Be = be;
        this.Bf = bf;
        this.Bc = bc;
        this.AX = ax;
        this.Bg = fs;
        this.Ba = ba;
        this.Bb = bb;
    }
    
    private static void Fq(final double n, final double n2) {
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
    
    private static int Fs(final int n) {
        final int n2 = n & 0x7;
        if (n2 != 0) {
            return n2;
        }
        throw new IllegalArgumentException(new StringBuilder(46).append("No supported transition specified: ").append(n).toString());
    }
    
    private static void Fv(final String s) {
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
    
    private static String Fx(final int n) {
        switch (n) {
            default: {
                return null;
            }
            case 1: {
                return "CIRCLE";
            }
        }
    }
    
    private static void Fz(final float n) {
        if (n <= 0.0f) {
            throw new IllegalArgumentException(new StringBuilder(31).append("invalid radius: ").append(n).toString());
        }
    }
    
    public long FA() {
        return this.AX;
    }
    
    public int FB() {
        return this.Bb;
    }
    
    public int FC() {
        return this.Bd;
    }
    
    public double Fp() {
        return this.Bf;
    }
    
    public String Fr() {
        return this.AZ;
    }
    
    public double Ft() {
        return this.Be;
    }
    
    public short Fu() {
        return this.AY;
    }
    
    public int Fw() {
        return this.Bg;
    }
    
    public int Fy() {
        return this.Ba;
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
            return this.Bc == parcelableGeofence.Bc && this.Be == parcelableGeofence.Be && this.Bf == parcelableGeofence.Bf && this.AY == parcelableGeofence.AY && b;
        }
        return false;
    }
    
    public float getRadius() {
        return this.Bc;
    }
    
    public int hashCode() {
        final int n = 32;
        final long doubleToLongBits = Double.doubleToLongBits(this.Be);
        final int n2 = (int)(doubleToLongBits ^ doubleToLongBits >>> n) + 31;
        final long doubleToLongBits2 = Double.doubleToLongBits(this.Bf);
        return (((n2 * 31 + (int)(doubleToLongBits2 ^ doubleToLongBits2 >>> n)) * 31 + Float.floatToIntBits(this.Bc)) * 31 + this.AY) * 31 + this.Bg;
    }
    
    public String toString() {
        return String.format(Locale.US, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", Fx(this.AY), this.AZ, this.Bg, this.Be, this.Bf, this.Bc, this.Ba / 1000, this.Bb, this.AX);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final n creator = ParcelableGeofence.CREATOR;
        n.FJ(this, parcel, n);
    }
}

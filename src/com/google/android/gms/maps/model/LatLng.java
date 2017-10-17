// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class LatLng extends AbstractSafeParcelable
{
    public static final k CREATOR;
    public final double GA;
    private final int GB;
    public final double Gz;
    
    static {
        CREATOR = new k();
    }
    
    LatLng(final int gb, final double n, final double ga) {
        final double n2 = 360.0;
        final double n3 = 180.0;
        this.GB = gb;
        if (-180.0 <= ga && ga < n3) {
            this.GA = ga;
        }
        else {
            this.GA = ((ga - n3) % n2 + n2) % n2 - n3;
        }
        this.Gz = Math.max(-90.0, Math.min(90.0, n));
    }
    
    int KR() {
        return this.GB;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof LatLng) {
            final LatLng latLng = (LatLng)o;
            if (Double.doubleToLongBits(this.Gz) != Double.doubleToLongBits(latLng.Gz) || Double.doubleToLongBits(this.GA) != Double.doubleToLongBits(latLng.GA)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        final int n = 32;
        final long doubleToLongBits = Double.doubleToLongBits(this.Gz);
        final int n2 = (int)(doubleToLongBits ^ doubleToLongBits >>> n) + 31;
        final long doubleToLongBits2 = Double.doubleToLongBits(this.GA);
        return n2 * 31 + (int)(doubleToLongBits2 ^ doubleToLongBits2 >>> n);
    }
    
    public String toString() {
        return new StringBuilder(60).append("lat/lng: (").append(this.Gz).append(",").append(this.GA).append(")").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        k.Kg(this, parcel, n);
    }
}

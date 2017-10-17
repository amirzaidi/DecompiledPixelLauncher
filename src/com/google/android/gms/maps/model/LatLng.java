// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class LatLng extends AbstractSafeParcelable
{
    public static final k CREATOR;
    public final double EU;
    public final double EV;
    private final int EW;
    
    static {
        CREATOR = new k();
    }
    
    LatLng(final int ew, final double n, final double ev) {
        final double n2 = 360.0;
        final double n3 = 180.0;
        this.EW = ew;
        if (-180.0 <= ev && ev < n3) {
            this.EV = ev;
        }
        else {
            this.EV = ((ev - n3) % n2 + n2) % n2 - n3;
        }
        this.EU = Math.max(-90.0, Math.min(90.0, n));
    }
    
    int JY() {
        return this.EW;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof LatLng) {
            final LatLng latLng = (LatLng)o;
            if (Double.doubleToLongBits(this.EU) != Double.doubleToLongBits(latLng.EU) || Double.doubleToLongBits(this.EV) != Double.doubleToLongBits(latLng.EV)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        final int n = 32;
        final long doubleToLongBits = Double.doubleToLongBits(this.EU);
        final int n2 = (int)(doubleToLongBits ^ doubleToLongBits >>> n) + 31;
        final long doubleToLongBits2 = Double.doubleToLongBits(this.EV);
        return n2 * 31 + (int)(doubleToLongBits2 ^ doubleToLongBits2 >>> n);
    }
    
    public String toString() {
        return new StringBuilder(60).append("lat/lng: (").append(this.EU).append(",").append(this.EV).append(")").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        k.Jn(this, parcel, n);
    }
}

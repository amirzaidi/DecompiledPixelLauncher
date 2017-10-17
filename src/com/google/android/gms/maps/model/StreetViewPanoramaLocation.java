// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class StreetViewPanoramaLocation extends AbstractSafeParcelable
{
    public static final o CREATOR;
    public final StreetViewPanoramaLink[] Fm;
    private final int Fn;
    public final LatLng Fo;
    public final String Fp;
    
    static {
        CREATOR = new o();
    }
    
    StreetViewPanoramaLocation(final int fn, final StreetViewPanoramaLink[] fm, final LatLng fo, final String fp) {
        this.Fn = fn;
        this.Fm = fm;
        this.Fo = fo;
        this.Fp = fp;
    }
    
    int Ju() {
        return this.Fn;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof StreetViewPanoramaLocation) {
            final StreetViewPanoramaLocation streetViewPanoramaLocation = (StreetViewPanoramaLocation)o;
            if (!this.Fp.equals(streetViewPanoramaLocation.Fp) || !this.Fo.equals(streetViewPanoramaLocation.Fo)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.Fo, this.Fp);
    }
    
    public String toString() {
        return u.kx(this).kp("panoId", this.Fp).kp("position", this.Fo.toString()).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        o.KL(this, parcel, n);
    }
}

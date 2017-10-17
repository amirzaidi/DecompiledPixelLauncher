// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class StreetViewPanoramaLocation extends AbstractSafeParcelable
{
    public static final n CREATOR;
    public final StreetViewPanoramaLink[] DH;
    private final int DI;
    public final LatLng DJ;
    public final String DK;
    
    static {
        CREATOR = new n();
    }
    
    StreetViewPanoramaLocation(final int di, final StreetViewPanoramaLink[] dh, final LatLng dj, final String dk) {
        this.DI = di;
        this.DH = dh;
        this.DJ = dj;
        this.DK = dk;
    }
    
    int IB() {
        return this.DI;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof StreetViewPanoramaLocation) {
            final StreetViewPanoramaLocation streetViewPanoramaLocation = (StreetViewPanoramaLocation)o;
            if (!this.DK.equals(streetViewPanoramaLocation.DK) || !this.DJ.equals(streetViewPanoramaLocation.DJ)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.DJ, this.DK);
    }
    
    public String toString() {
        return u.hJ(this).hB("panoId", this.DK).hB("position", this.DJ.toString()).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        n.JS(this, parcel, n);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class StreetViewPanoramaLink extends AbstractSafeParcelable
{
    public static final h CREATOR;
    private final int DL;
    public final String DM;
    public final float DN;
    
    static {
        CREATOR = new h();
    }
    
    StreetViewPanoramaLink(final int dl, final String dm, float n) {
        final float n2 = 360.0f;
        this.DL = dl;
        this.DM = dm;
        if (n <= 0.0) {
            n = n % n2 + n2;
        }
        this.DN = n % n2;
    }
    
    int IF() {
        return this.DL;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof StreetViewPanoramaLink) {
            final StreetViewPanoramaLink streetViewPanoramaLink = (StreetViewPanoramaLink)o;
            if (this.DM.equals(streetViewPanoramaLink.DM) || Float.floatToIntBits(this.DN) != Float.floatToIntBits(streetViewPanoramaLink.DN)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.DM, this.DN);
    }
    
    public String toString() {
        return u.hJ(this).hB("panoId", this.DM).hB("bearing", this.DN).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.Jg(this, parcel, n);
    }
}

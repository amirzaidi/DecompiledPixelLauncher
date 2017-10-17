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
    private final int Fq;
    public final String Fr;
    public final float Fs;
    
    static {
        CREATOR = new h();
    }
    
    StreetViewPanoramaLink(final int fq, final String fr, float n) {
        final float n2 = 360.0f;
        this.Fq = fq;
        this.Fr = fr;
        if (n <= 0.0) {
            n = n % n2 + n2;
        }
        this.Fs = n % n2;
    }
    
    int Jy() {
        return this.Fq;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof StreetViewPanoramaLink) {
            final StreetViewPanoramaLink streetViewPanoramaLink = (StreetViewPanoramaLink)o;
            if (this.Fr.equals(streetViewPanoramaLink.Fr) || Float.floatToIntBits(this.Fs) != Float.floatToIntBits(streetViewPanoramaLink.Fs)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.Fr, this.Fs);
    }
    
    public String toString() {
        return u.kx(this).kp("panoId", this.Fr).kp("bearing", this.Fs).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.Ka(this, parcel, n);
    }
}

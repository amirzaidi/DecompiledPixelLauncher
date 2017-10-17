// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class StreetViewPanoramaCamera extends AbstractSafeParcelable
{
    public static final a CREATOR;
    public final float Eg;
    private StreetViewPanoramaOrientation Eh;
    private final int Ei;
    public final float Ej;
    public final float Ek;
    
    static {
        CREATOR = new a();
    }
    
    StreetViewPanoramaCamera(final int ei, float ej, final float n, final float n2) {
        final double n3 = 0.0;
        final float n4 = 360.0f;
        l.hq(-90.0f <= n && n <= 90.0f, "Tilt needs to be between -90 and 90 inclusive");
        this.Ei = ei;
        if (ej <= n3) {
            ej = 0.0f;
        }
        this.Ej = ej;
        this.Eg = n + 0.0f;
        float n5;
        if (n2 <= n3) {
            n5 = n2 % n4 + n4;
        }
        else {
            n5 = n2;
        }
        this.Ek = n5 % n4;
        this.Eh = new b().Iz(n).IA(n2).build();
    }
    
    int Jh() {
        return this.Ei;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof StreetViewPanoramaCamera) {
            final StreetViewPanoramaCamera streetViewPanoramaCamera = (StreetViewPanoramaCamera)o;
            if (Float.floatToIntBits(this.Ej) != Float.floatToIntBits(streetViewPanoramaCamera.Ej) || Float.floatToIntBits(this.Eg) != Float.floatToIntBits(streetViewPanoramaCamera.Eg) || Float.floatToIntBits(this.Ek) != Float.floatToIntBits(streetViewPanoramaCamera.Ek)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.Ej, this.Eg, this.Ek);
    }
    
    public String toString() {
        return u.hJ(this).hB("zoom", this.Ej).hB("tilt", this.Eg).hB("bearing", this.Ek).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.Iw(this, parcel, n);
    }
}

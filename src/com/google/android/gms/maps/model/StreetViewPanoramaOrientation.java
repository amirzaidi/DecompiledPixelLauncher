// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class StreetViewPanoramaOrientation extends AbstractSafeParcelable
{
    public static final t CREATOR;
    public final float DC;
    private final int DD;
    public final float DE;
    
    static {
        CREATOR = new t();
    }
    
    public StreetViewPanoramaOrientation(final float n, final float n2) {
        this(1, n, n2);
    }
    
    StreetViewPanoramaOrientation(final int dd, final float n, float n2) {
        final float n3 = 360.0f;
        l.hq(-90.0f <= n && n <= 90.0f, "Tilt needs to be between -90 and 90 inclusive");
        this.DD = dd;
        this.DC = 0.0f + n;
        if (n2 <= 0.0) {
            n2 = n2 % n3 + n3;
        }
        this.DE = n2 % n3;
    }
    
    int Iv() {
        return this.DD;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof StreetViewPanoramaOrientation) {
            final StreetViewPanoramaOrientation streetViewPanoramaOrientation = (StreetViewPanoramaOrientation)o;
            if (Float.floatToIntBits(this.DC) != Float.floatToIntBits(streetViewPanoramaOrientation.DC) || Float.floatToIntBits(this.DE) != Float.floatToIntBits(streetViewPanoramaOrientation.DE)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.DC, this.DE);
    }
    
    public String toString() {
        return u.hJ(this).hB("tilt", this.DC).hB("bearing", this.DE).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        t.KA(this, parcel, n);
    }
}

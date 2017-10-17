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
    public final float Fh;
    private final int Fi;
    public final float Fj;
    
    static {
        CREATOR = new t();
    }
    
    public StreetViewPanoramaOrientation(final float n, final float n2) {
        this(1, n, n2);
    }
    
    StreetViewPanoramaOrientation(final int fi, final float n, float n2) {
        final float n3 = 360.0f;
        l.ke(-90.0f <= n && n <= 90.0f, "Tilt needs to be between -90 and 90 inclusive");
        this.Fi = fi;
        this.Fh = 0.0f + n;
        if (n2 <= 0.0) {
            n2 = n2 % n3 + n3;
        }
        this.Fj = n2 % n3;
    }
    
    int Jo() {
        return this.Fi;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof StreetViewPanoramaOrientation) {
            final StreetViewPanoramaOrientation streetViewPanoramaOrientation = (StreetViewPanoramaOrientation)o;
            if (Float.floatToIntBits(this.Fh) != Float.floatToIntBits(streetViewPanoramaOrientation.Fh) || Float.floatToIntBits(this.Fj) != Float.floatToIntBits(streetViewPanoramaOrientation.Fj)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.Fh, this.Fj);
    }
    
    public String toString() {
        return u.kx(this).kp("tilt", this.Fh).kp("bearing", this.Fj).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        t.Lt(this, parcel, n);
    }
}

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
    public final float FL;
    private StreetViewPanoramaOrientation FM;
    private final int FN;
    public final float FO;
    public final float FP;
    
    static {
        CREATOR = new a();
    }
    
    StreetViewPanoramaCamera(final int fn, float fo, final float n, final float n2) {
        final double n3 = 0.0;
        final float n4 = 360.0f;
        l.ke(-90.0f <= n && n <= 90.0f, "Tilt needs to be between -90 and 90 inclusive");
        this.FN = fn;
        if (fo <= n3) {
            fo = 0.0f;
        }
        this.FO = fo;
        this.FL = n + 0.0f;
        float n5;
        if (n2 <= n3) {
            n5 = n2 % n4 + n4;
        }
        else {
            n5 = n2;
        }
        this.FP = n5 % n4;
        this.FM = new b().Js(n).Jt(n2).build();
    }
    
    int JX() {
        return this.FN;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof StreetViewPanoramaCamera) {
            final StreetViewPanoramaCamera streetViewPanoramaCamera = (StreetViewPanoramaCamera)o;
            if (Float.floatToIntBits(this.FO) != Float.floatToIntBits(streetViewPanoramaCamera.FO) || Float.floatToIntBits(this.FL) != Float.floatToIntBits(streetViewPanoramaCamera.FL) || Float.floatToIntBits(this.FP) != Float.floatToIntBits(streetViewPanoramaCamera.FP)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.FO, this.FL, this.FP);
    }
    
    public String toString() {
        return u.kx(this).kp("zoom", this.FO).kp("tilt", this.FL).kp("bearing", this.FP).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.Jp(this, parcel, n);
    }
}

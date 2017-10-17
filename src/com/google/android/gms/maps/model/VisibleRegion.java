// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class VisibleRegion extends AbstractSafeParcelable
{
    public static final s CREATOR;
    public final LatLng FR;
    public final LatLngBounds FS;
    private final int FT;
    public final LatLng FU;
    public final LatLng FV;
    public final LatLng FW;
    
    static {
        CREATOR = new s();
    }
    
    VisibleRegion(final int ft, final LatLng fu, final LatLng fv, final LatLng fw, final LatLng fr, final LatLngBounds fs) {
        this.FT = ft;
        this.FU = fu;
        this.FV = fv;
        this.FW = fw;
        this.FR = fr;
        this.FS = fs;
    }
    
    int Kf() {
        return this.FT;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof VisibleRegion) {
            final VisibleRegion visibleRegion = (VisibleRegion)o;
            if (!this.FU.equals(visibleRegion.FU) || !this.FV.equals(visibleRegion.FV) || !this.FW.equals(visibleRegion.FW) || !this.FR.equals(visibleRegion.FR) || !this.FS.equals(visibleRegion.FS)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.FU, this.FV, this.FW, this.FR, this.FS);
    }
    
    public String toString() {
        return u.kx(this).kp("nearLeft", this.FU).kp("nearRight", this.FV).kp("farLeft", this.FW).kp("farRight", this.FR).kp("latLngBounds", this.FS).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        s.Lj(this, parcel, n);
    }
}

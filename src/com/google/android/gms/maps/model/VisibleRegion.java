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
    public final LatLng Em;
    public final LatLngBounds En;
    private final int Eo;
    public final LatLng Ep;
    public final LatLng Eq;
    public final LatLng Er;
    
    static {
        CREATOR = new s();
    }
    
    VisibleRegion(final int eo, final LatLng ep, final LatLng eq, final LatLng er, final LatLng em, final LatLngBounds en) {
        this.Eo = eo;
        this.Ep = ep;
        this.Eq = eq;
        this.Er = er;
        this.Em = em;
        this.En = en;
    }
    
    int Jm() {
        return this.Eo;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof VisibleRegion) {
            final VisibleRegion visibleRegion = (VisibleRegion)o;
            if (!this.Ep.equals(visibleRegion.Ep) || !this.Eq.equals(visibleRegion.Eq) || !this.Er.equals(visibleRegion.Er) || !this.Em.equals(visibleRegion.Em) || !this.En.equals(visibleRegion.En)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.Ep, this.Eq, this.Er, this.Em, this.En);
    }
    
    public String toString() {
        return u.hJ(this).hB("nearLeft", this.Ep).hB("nearRight", this.Eq).hB("farLeft", this.Er).hB("farRight", this.Em).hB("latLngBounds", this.En).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        s.Kq(this, parcel, n);
    }
}

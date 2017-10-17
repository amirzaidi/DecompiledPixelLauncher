// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import java.util.List;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class PlaceLocalization extends AbstractSafeParcelable
{
    public static final g CREATOR;
    public final String name;
    public final int yj;
    public final String yk;
    public final String yl;
    public final String ym;
    public final List yn;
    
    static {
        CREATOR = new g();
    }
    
    public PlaceLocalization(final int yj, final String name, final String yk, final String ym, final String yl, final List yn) {
        this.yj = yj;
        this.name = name;
        this.yk = yk;
        this.ym = ym;
        this.yl = yl;
        this.yn = yn;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof PlaceLocalization) {
            final PlaceLocalization placeLocalization = (PlaceLocalization)o;
            if (!u.hH(this.name, placeLocalization.name) || !u.hH(this.yk, placeLocalization.yk) || !u.hH(this.ym, placeLocalization.ym) || !u.hH(this.yl, placeLocalization.yl) || !u.hH(this.yn, placeLocalization.yn)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.name, this.yk, this.ym, this.yl);
    }
    
    public String toString() {
        return u.hJ(this).hB("name", this.name).hB("address", this.yk).hB("internationalPhoneNumber", this.ym).hB("regularOpenHours", this.yl).hB("attributions", this.yn).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final g creator = PlaceLocalization.CREATOR;
        g.Df(this, parcel, n);
    }
}

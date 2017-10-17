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
    public final int zO;
    public final String zP;
    public final String zQ;
    public final String zR;
    public final List zS;
    
    static {
        CREATOR = new g();
    }
    
    public PlaceLocalization(final int zo, final String name, final String zp, final String zr, final String zq, final List zs) {
        this.zO = zo;
        this.name = name;
        this.zP = zp;
        this.zR = zr;
        this.zQ = zq;
        this.zS = zs;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof PlaceLocalization) {
            final PlaceLocalization placeLocalization = (PlaceLocalization)o;
            if (!u.kv(this.name, placeLocalization.name) || !u.kv(this.zP, placeLocalization.zP) || !u.kv(this.zR, placeLocalization.zR) || !u.kv(this.zQ, placeLocalization.zQ) || !u.kv(this.zS, placeLocalization.zS)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.name, this.zP, this.zR, this.zQ);
    }
    
    public String toString() {
        return u.kx(this).kp("name", this.name).kp("address", this.zP).kp("internationalPhoneNumber", this.zR).kp("regularOpenHours", this.zQ).kp("attributions", this.zS).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final g creator = PlaceLocalization.CREATOR;
        g.DY(this, parcel, n);
    }
}

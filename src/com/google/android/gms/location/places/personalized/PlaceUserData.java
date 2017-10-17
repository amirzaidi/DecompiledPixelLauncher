// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.personalized;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import java.util.List;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class PlaceUserData extends AbstractSafeParcelable
{
    public static final d CREATOR;
    final int xR;
    private final String xS;
    private final String xT;
    private final List xU;
    
    static {
        CREATOR = new d();
    }
    
    PlaceUserData(final int xr, final String xs, final String xt, final List xu) {
        this.xR = xr;
        this.xS = xs;
        this.xT = xt;
        this.xU = xu;
    }
    
    public String CP() {
        return this.xS;
    }
    
    public String CQ() {
        return this.xT;
    }
    
    public List CR() {
        return this.xU;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof PlaceUserData) {
            final PlaceUserData placeUserData = (PlaceUserData)o;
            if (!this.xS.equals(placeUserData.xS) || !this.xT.equals(placeUserData.xT) || !this.xU.equals(placeUserData.xU)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.xS, this.xT, this.xU);
    }
    
    public String toString() {
        return u.hJ(this).hB("accountName", this.xS).hB("placeId", this.xT).hB("placeAliases", this.xU).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.CS(this, parcel, n);
    }
}

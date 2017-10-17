// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class PlaceLikelihoodEntity extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    final int yg;
    final PlaceEntity yh;
    final float yi;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    PlaceLikelihoodEntity(final int yg, final PlaceEntity yh, final float yi) {
        this.yg = yg;
        this.yh = yh;
        this.yi = yi;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof PlaceLikelihoodEntity) {
            final PlaceLikelihoodEntity placeLikelihoodEntity = (PlaceLikelihoodEntity)o;
            if (this.yh.equals(placeLikelihoodEntity.yh) || this.yi != placeLikelihoodEntity.yi) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.yh, this.yi);
    }
    
    public String toString() {
        return u.hJ(this).hB("place", this.yh).hB("likelihood", this.yi).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.CV(this, parcel, n);
    }
}

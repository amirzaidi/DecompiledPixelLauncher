// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class NearbyLikelihoodEntity extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    final int yV;
    final PlaceEntity yW;
    final float yX;
    
    static {
        CREATOR = (Parcelable$Creator)new e();
    }
    
    NearbyLikelihoodEntity(final int yv, final PlaceEntity yw, final float yx) {
        this.yV = yv;
        this.yW = yw;
        this.yX = yx;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof NearbyLikelihoodEntity) {
            final NearbyLikelihoodEntity nearbyLikelihoodEntity = (NearbyLikelihoodEntity)o;
            if (this.yW.equals(nearbyLikelihoodEntity.yW) || this.yX != nearbyLikelihoodEntity.yX) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.yW, this.yX);
    }
    
    public String toString() {
        return u.hJ(this).hB("nearby place", this.yW).hB("likelihood", this.yX).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        e.De(this, parcel, n);
    }
}

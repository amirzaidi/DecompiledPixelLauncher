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
    final int zL;
    final PlaceEntity zM;
    final float zN;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    PlaceLikelihoodEntity(final int zl, final PlaceEntity zm, final float zn) {
        this.zL = zl;
        this.zM = zm;
        this.zN = zn;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof PlaceLikelihoodEntity) {
            final PlaceLikelihoodEntity placeLikelihoodEntity = (PlaceLikelihoodEntity)o;
            if (this.zM.equals(placeLikelihoodEntity.zM) || this.zN != placeLikelihoodEntity.zN) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.zM, this.zN);
    }
    
    public String toString() {
        return u.kx(this).kp("place", this.zM).kp("likelihood", this.zN).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.DO(this, parcel, n);
    }
}
